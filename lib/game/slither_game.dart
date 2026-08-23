import 'dart:math' as math;
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart' show KeyEventResult;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/constants.dart';
import '../providers/snake_provider.dart';
import '../providers/candy_provider.dart';
import '../models/snake.dart';
import '../models/candy.dart';
import '../models/skin_presets.dart';
import 'components/snake_component.dart';
import 'components/candy_component.dart';
import 'components/world_bounds.dart';
import 'systems/collision_system.dart';
import 'systems/bot_ai.dart';

class SlitherGame extends FlameGame with PanDetector, MouseMovementDetector, KeyboardEvents {
  final WidgetRef ref;
  final CollisionSystem _collisionSystem = CollisionSystem();
  final Map<String, BotAI> _botAIs = {};
  static const int minSnakes = 20;

  SlitherGame(this.ref);

  @override
  Future<void> onLoad() async {
    add(WorldBounds());

    Future.microtask(() {
      spawnPlayer();
      ref.read(candyProvider.notifier).spawnRandomCandy(500);
    });
  }

  void spawnPlayer() {
    ref.read(snakeProvider.notifier).addSnake(
      'local_player',
      name: 'Player',
      head: Vector2.zero(),
      skin: SkinPresets.allSkins[3].id, // Mauve
    );
  }

  void _maintainBots(Map<String, SnakeEntity> snakes) {
    if (snakes.length < minSnakes) {
      final random = math.Random();
      final id = 'bot_${DateTime.now().microsecondsSinceEpoch}';
      final skin = SkinPresets.allSkins[random.nextInt(SkinPresets.allSkins.length)];

      final pos = Vector2(
        (random.nextDouble() * 2 - 1) * GameConstants.worldBounds * 0.8,
        (random.nextDouble() * 2 - 1) * GameConstants.worldBounds * 0.8,
      );

      ref.read(snakeProvider.notifier).addSnake(
        id,
        name: 'Bot ${random.nextInt(1000)}',
        head: pos,
        skin: skin.id,
      );
      _botAIs[id] = BotAI(id);
    }
  }

  @override
  void update(double dt) {
    if (dt <= 0) return;
    super.update(dt);

    final snakes = ref.read(snakeProvider);
    final candies = ref.read(candyProvider);

    _maintainBots(snakes);

    for (final botId in _botAIs.keys.toList()) {
      final snake = snakes[botId];
      if (snake == null || snake.dead) {
        _botAIs.remove(botId);
        continue;
      }
      _botAIs[botId]!.update(
        dt,
        snake,
        snakes,
        candies,
        _collisionSystem.snakeGrid,
        (id, angle) => ref.read(snakeProvider.notifier).turnSnake(id, angle),
      );
    }

    ref.read(snakeProvider.notifier).updateTick(dt, onBoostDrop: (pos, amount) {
       ref.read(candyProvider.notifier).addCandy(CandyEntity(
         id: 'drop_${DateTime.now().microsecondsSinceEpoch}_${pos.x}',
         size: amount,
         position: pos,
         color: CatppuccinColors.surface2,
         type: CandyType.dropping,
       ));
    });

    _collisionSystem.checkCollisions(
      snakes: snakes,
      candies: candies,
      onEatCandy: (candyId, snakeId) {
        final candy = ref.read(candyProvider)[candyId];
        if (candy != null) {
          ref.read(snakeProvider.notifier).incrementScore(snakeId, candy.size);
          ref.read(candyProvider.notifier).removeCandy(candyId);
        }
      },
      onHitWall: (snakeId) {
        _handleSnakeDeath(snakeId);
      },
      onSnakeCollision: (victimId, killerId) {
        _handleSnakeDeath(victimId);
      },
    );

    _syncComponents();

    final localSnake = ref.read(snakeProvider)['local_player'];
    if (localSnake != null && !localSnake.dead) {
      camera.viewfinder.position = localSnake.head;

      final description = localSnake.describe();
      final double targetZoom = 1.5 / (description.radius * 0.2 + 1.0);
      camera.viewfinder.zoom = targetZoom;
    }
  }

  void _handleSnakeDeath(String snakeId) {
    final snakes = ref.read(snakeProvider);
    final snake = snakes[snakeId];
    if (snake == null || snake.dead) return;

    if (snakeId == 'local_player') {
      overlays.add('death');
    }

    final random = math.Random();
    final List<CandyEntity> loot = [];

    final tracers = [...snake.tracers, snake.head];
    final sum = math.min(8000 * (math.log(snake.score / 3000.0 + 1.0) / math.ln10), snake.score.toDouble());

    for (final pos in tracers) {
      if (random.nextDouble() > 0.3) {
         loot.add(CandyEntity(
           id: 'loot_${DateTime.now().microsecondsSinceEpoch}_${pos.x}',
           size: (sum / tracers.length).ceil().clamp(1, 100),
           position: pos + Vector2(random.nextDouble() * 20 - 10, random.nextDouble() * 20 - 10),
           color: SkinPresets.getById(snake.skin).primary ?? CatppuccinColors.peach,
           type: CandyType.loot,
         ));
      }
    }

    ref.read(candyProvider.notifier).populateCandy(loot);
    ref.read(snakeProvider.notifier).killSnake(snakeId);
  }

  void _syncComponents() {
    final snakes = ref.read(snakeProvider);
    final candies = ref.read(candyProvider);

    children.whereType<SnakeComponent>().forEach((c) {
      if (!snakes.containsKey(c.id)) c.removeFromParent();
    });

    for (final snake in snakes.values) {
      final existing = children.whereType<SnakeComponent>().where((c) => c.id == snake.id);
      if (existing.isEmpty) {
        add(SnakeComponent(snake.id)..updateEntity(snake));
      } else {
        existing.first.updateEntity(snake);
      }
    }

    final viewport = camera.visibleWorldRect;
    for (final candy in candies.values) {
      if (candy.eatenAt != null) continue;

      final isVisible = viewport.contains(candy.position.toOffset());
      final existing = children.whereType<CandyComponent>().where((c) => c.id == candy.id);

      if (isVisible) {
        if (existing.isEmpty) {
          add(CandyComponent(candy.id)..updateEntity(candy));
        } else {
          existing.first.updateEntity(candy);
        }
      } else if (existing.isNotEmpty) {
        existing.first.removeFromParent();
      }
    }
  }

  @override
  KeyEventResult onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    final isSpace = keysPressed.contains(LogicalKeyboardKey.space);
    ref.read(snakeProvider.notifier).boostSnake('local_player', isSpace);
    return KeyEventResult.ignored;
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    _handleInput(info.eventPosition.widget);
  }

  @override
  void onMouseMove(PointerHoverInfo info) {
    _handleInput(info.eventPosition.widget);
  }

  void _handleInput(Vector2 screenPos) {
    final localSnake = ref.read(snakeProvider)['local_player'];
    if (localSnake == null || localSnake.dead) return;

    final size = canvasSize;
    final center = size / 2;
    final delta = screenPos - center;

    if (delta.length > 5) {
      final angle = math.atan2(delta.y, delta.x);
      ref.read(snakeProvider.notifier).turnSnake('local_player', angle);
    }
  }
}
