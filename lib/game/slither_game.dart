import 'dart:math' as math;
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart' show KeyEventResult;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/constants.dart';
import '../providers/snake_provider.dart';
import '../providers/candy_provider.dart';
import '../providers/alert_provider.dart';
import '../utils/audio_service.dart';
import '../models/snake.dart';
import '../models/candy.dart';
import '../models/alert.dart';
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

  // Cache components to avoid O(N) lookups in children list
  final Map<String, SnakeComponent> _snakeComponents = {};
  final Map<String, CandyComponent> _candyComponents = {};

  static const int minSnakes = 20;
  int? _lastRank;
  double _rankTimer = 0.0;
  double _syncTimer = 0.0;

  SlitherGame(this.ref);

  @override
  Future<void> onLoad() async {
    world.add(WorldBounds());

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

    final updatedSnakes = ref.read(snakeProvider);
    final updatedCandies = ref.read(candyProvider);

    _collisionSystem.checkCollisions(
      snakes: updatedSnakes,
      candies: updatedCandies,
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
        ref.read(snakeProvider.notifier).incrementEliminations(killerId);
        if (killerId == 'local_player') {
         ref.read(alertProvider.notifier).sendAlert(
           emoji: '🔥',
           message: 'ELIMINATED BOT',
           color: CatppuccinColors.red,
         );
         AudioService.play(SlitherSound.alertMoney);
        }
        _handleSnakeDeath(victimId);
      },
    );

    _syncTimer += dt;
    if (_syncTimer >= GameConstants.worldTick) {
      _syncTimer = 0.0;
      _syncComponents();
    }

    final localSnake = ref.read(snakeProvider)['local_player'];
    if (localSnake != null && !localSnake.dead) {
      camera.viewfinder.position = localSnake.head;

      final description = localSnake.describe();
      final double targetZoom = 1.2 / (description.radius * 0.05 + 1.0);
      camera.viewfinder.zoom = targetZoom;

      _rankTimer += dt;
      if (_rankTimer >= 0.5) {
       _rankTimer = 0.0;
       final sortedSnakes = updatedSnakes.values.toList()..sort((a, b) => b.score.compareTo(a.score));
       final rankIndex = sortedSnakes.indexWhere((s) => s.id == 'local_player');
       final rank = rankIndex != -1 ? rankIndex + 1 : null;

       if (rank != null && _lastRank != null && rank < _lastRank!) {
         if (rank == 1) {
           ref.read(alertProvider.notifier).sendAlert(
             emoji: '🏆',
             message: 'CONGRATULATIONS! YOU ARE IN FIRST PLACE',
             color: CatppuccinColors.yellow,
             scope: AlertScope.ranking,
           );
         } else if (rank == 2) {
           ref.read(alertProvider.notifier).sendAlert(
             emoji: '🥈',
             message: 'CONGRATULATIONS! YOU ARE IN SECOND PLACE',
             color: CatppuccinColors.sapphire,
             scope: AlertScope.ranking,
           );
         } else if (rank == 3) {
           ref.read(alertProvider.notifier).sendAlert(
             emoji: '🥉',
             message: 'CONGRATULATIONS! YOU ARE IN THIRD PLACE',
             color: CatppuccinColors.maroon,
             scope: AlertScope.ranking,
           );
         } else {
           ref.read(alertProvider.notifier).sendAlert(
             emoji: '📈',
             message: 'RANK UP: #$rank',
             color: CatppuccinColors.blue,
             scope: AlertScope.ranking,
           );
         }
         AudioService.play(SlitherSound.alertNeutral);
       }
       _lastRank = rank;
      }
    }
  }

  void _handleSnakeDeath(String snakeId) {
    final snakes = ref.read(snakeProvider);
    final snake = snakes[snakeId];
    if (snake == null || snake.dead) return;

    if (snakeId == 'local_player') {
      overlays.add('death');
      AudioService.play(SlitherSound.alertBad);
    }

    final random = math.Random();
    final List<CandyEntity> loot = [];

    final tracers = [...snake.tracers, snake.head];
    final description = snake.describe();
    final tracerRadius = description.radius; // Scaled by 10 for world units

    final List<Vector2> candyPositions = [];
    Vector2? lastTracer;

    for (final tracer in tracers) {
      if (lastTracer != null && tracer.distanceTo(lastTracer) < 0.25 * tracerRadius * 10.0) {
        continue;
      }
      lastTracer = tracer;

      final int amount = (random.nextDouble() * math.max((tracerRadius * 10.0) / 5.0, 1.0)).round() + 1;
      for (int i = 0; i < amount; i++) {
        final x = (random.nextDouble() * 2 - 1) * tracerRadius * 10.0;
        final y = (random.nextDouble() * 2 - 1) * tracerRadius * 10.0;
        candyPositions.add(tracer + Vector2(x, y));
      }
    }

    final double sum = math.min(8000 * (math.log(snake.score / 3000.0 + 1.0) / math.ln10), snake.score.toDouble());
    final int total = candyPositions.length;
    final int sizePerCandy = (total > 0) ? (sum / total).ceil().clamp(1, 100) : 1;

    final skin = SkinPresets.getById(snake.skin);

    for (int i = 0; i < candyPositions.length; i++) {
      final pos = candyPositions[i];
      Color color = skin.primary ?? CatppuccinColors.peach;
      if (skin.tint.isNotEmpty) {
        color = skin.tint[i % skin.tint.length];
      }

      loot.add(CandyEntity(
        id: 'loot_${DateTime.now().microsecondsSinceEpoch}_${pos.x}_$i',
        size: sizePerCandy,
        position: pos,
        color: color,
        type: CandyType.loot,
      ));
    }

    ref.read(candyProvider.notifier).populateCandy(loot);
    ref.read(snakeProvider.notifier).killSnake(snakeId);
  }

  void _syncComponents() {
    final snakes = ref.read(snakeProvider);
    final candies = ref.read(candyProvider);

    // 1. Sync Snakes
    final snakeIdsToRemove = _snakeComponents.keys.where((id) => !snakes.containsKey(id)).toList();
    for (final id in snakeIdsToRemove) {
      _snakeComponents.remove(id)?.removeFromParent();
    }

    for (final snake in snakes.values) {
      final existing = _snakeComponents[snake.id];
      if (existing == null) {
        final comp = SnakeComponent(snake.id)..updateEntity(snake);
        _snakeComponents[snake.id] = comp;
        world.add(comp);
      } else {
        existing.updateEntity(snake);
      }
    }

    // 2. Sync Candies (Frustum Culling + ID Caching)
    final viewport = camera.visibleWorldRect;

    // Cleanup removed candies
    final candyIdsToRemove = _candyComponents.keys.where((id) => !candies.containsKey(id)).toList();
    for (final id in candyIdsToRemove) {
      _candyComponents.remove(id)?.removeFromParent();
    }

    for (final candy in candies.values) {
      if (candy.eatenAt != null) continue;

      final isVisible = viewport.contains(candy.position.toOffset());
      final existing = _candyComponents[candy.id];

      if (isVisible) {
        if (existing == null) {
          final comp = CandyComponent(candy.id)..updateEntity(candy);
          _candyComponents[candy.id] = comp;
          world.add(comp);
        } else {
          existing.updateEntity(candy);
        }
      } else {
        if (existing != null) {
          _candyComponents.remove(candy.id);
          existing.removeFromParent();
        }
      }
    }
  }

  @override
  KeyEventResult onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    if (event is KeyRepeatEvent) return KeyEventResult.ignored;

    final isSpace = keysPressed.contains(LogicalKeyboardKey.space);
    final localSnake = ref.read(snakeProvider)['local_player'];

    if (localSnake != null && localSnake.boost != isSpace) {
      if (isSpace && localSnake.score > 10) {
        AudioService.play(SlitherSound.boostStart);
      } else if (!isSpace) {
        AudioService.play(SlitherSound.boostStop);
      }
    }

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
