import 'dart:math' as math;
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' show KeyEventResult;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
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
import 'components/candy_layer.dart';
import 'components/world_bounds.dart';
import 'components/background_grid.dart';
import 'systems/collision_system.dart';
import 'systems/bot_ai.dart';

class SlitherGame extends FlameGame with PanDetector, MouseMovementDetector, KeyboardEvents {
  final WidgetRef ref;
  final CollisionSystem _collisionSystem = CollisionSystem();
  final Map<String, BotAI> _botAIs = {};

  // Layers
  late final CandyLayer _candyLayer;

  // Cache components to avoid O(N) lookups in children list
  final Map<String, SnakeComponent> _snakeComponents = {};

  // UI Throttle
  final UIUpdateNotifier uiUpdateNotifier = UIUpdateNotifier();
  double _uiTimer = 0.0;

  static const int minSnakes = 20;
  int? _lastRank;
  double _syncTimer = 0.0;

  SlitherGame(this.ref);

  @override
  void onRemove() {
    uiUpdateNotifier.dispose();
    super.onRemove();
  }

  @override
  Future<void> onLoad() async {
    // Add grid first
    world.add(BackgroundGrid());
    world.add(WorldBounds());

    _candyLayer = CandyLayer(_collisionSystem);
    world.add(_candyLayer);

    Future.microtask(() {
      spawnPlayer();
      ref.read(candyProvider.notifier).spawnRandomCandy(800);
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
      final id = const Uuid().v4();
      final skin = SkinPresets.allSkins[random.nextInt(SkinPresets.allSkins.length)];

      // Spawn bots far from the player at (0,0)
      double posX, posY;
      do {
        posX = (random.nextDouble() * 2 - 1) * GameConstants.worldBounds * 0.9;
        posY = (random.nextDouble() * 2 - 1) * GameConstants.worldBounds * 0.9;
      } while (math.sqrt(posX * posX + posY * posY) < 500);

      ref.read(snakeProvider.notifier).addSnake(
        id,
        name: 'Bot ${random.nextInt(1000)}',
        head: Vector2(posX, posY),
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
        _collisionSystem.candyGrid,
        (id, angle) => ref.read(snakeProvider.notifier).turnSnake(id, angle),
      );
    }

    ref.read(snakeProvider.notifier).updateTick(dt, onBoostDrop: (pos, amount) {
      ref.read(candyProvider.notifier).addCandy(CandyEntity(
       id: 'drop_${const Uuid().v4()}',
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

    // Sync components: Snakes every frame
    _syncSnakes(updatedSnakes);
    _candyLayer.updateCandies(updatedCandies);
    
    _syncTimer += dt;
    if (_syncTimer >= 0.5) { // Slower rank sync
      _syncTimer = 0.0;
      _updateRank(updatedSnakes);
    }

    // UI Throttle: Notify every 0.1s
    _uiTimer += dt;
    if (_uiTimer >= 0.1) {
      _uiTimer = 0.0;
      uiUpdateNotifier.notify();
    }

    final localSnake = ref.read(snakeProvider)['local_player'];
    if (localSnake != null && !localSnake.dead) {
      camera.viewfinder.position = localSnake.head;

      final description = localSnake.describe();
      // Reduced zoom to see more of the world
      final double targetZoom = 1.4 / (description.radius * 0.02 + 1.0);
      
      // Smoothly interpolate zoom
      camera.viewfinder.zoom += (targetZoom - camera.viewfinder.zoom) * dt * 1.5;
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

    final description = snake.describe();
    final tracerRadius = description.radius;

    final List<Vector2> candyPositions = [];
    Vector2? lastTracer;
    final tracers = snake.tracers;

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

    if (lastTracer != null) {
      final headAmount = (random.nextDouble() * math.max((tracerRadius * 10.0) / 5.0, 1.0)).round() + 1;
      for (int i = 0; i < headAmount; i++) {
        final x = (random.nextDouble() * 2 - 1) * tracerRadius * 10.0;
        final y = (random.nextDouble() * 2 - 1) * tracerRadius * 10.0;
        candyPositions.add(snake.head + Vector2(x, y));
      }
    }

    final double sum = math.min(8000 * (math.log(snake.score / 3000.0 + 1.0) / math.ln10), snake.score.toDouble());
    final int total = candyPositions.length;
    final int sizePerCandy = (total > 0) ? (sum / total).ceil().clamp(1, 100) : 1;

    final skin = SkinPresets.getById(snake.skin);

    final uuid = const Uuid();
    for (int i = 0; i < candyPositions.length; i++) {
      final pos = candyPositions[i];
      Color color = skin.primary ?? CatppuccinColors.peach;
      if (skin.tint.isNotEmpty) {
        color = skin.tint[i % skin.tint.length];
      }

      loot.add(CandyEntity(
        id: 'loot_${uuid.v4()}',
        size: sizePerCandy,
        position: pos,
        color: color,
        type: CandyType.loot,
      ));
    }

    ref.read(candyProvider.notifier).populateCandy(loot);
    ref.read(snakeProvider.notifier).killSnake(snakeId);
  }

  void _syncSnakes(Map<String, SnakeEntity> snakes) {
    final activeIds = snakes.keys.toSet();
    _snakeComponents.keys.where((id) => !activeIds.contains(id)).toList().forEach((id) {
       _snakeComponents.remove(id)?.removeFromParent();
    });

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
  }

  void _updateRank(Map<String, SnakeEntity> snakes) {
    final localSnake = snakes['local_player'];
    if (localSnake == null || localSnake.dead) return;

    final sortedSnakes = snakes.values.toList()..sort((a, b) => b.score.compareTo(a.score));
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
      } else if (rank <= 3) {
        ref.read(alertProvider.notifier).sendAlert(
          emoji: '🥈',
          message: 'CONGRATULATIONS! YOU ARE IN TOP 3',
          color: CatppuccinColors.sapphire,
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

class UIUpdateNotifier extends ChangeNotifier {
  void notify() => notifyListeners();
}
