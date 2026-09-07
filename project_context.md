# Project Context Dump
Generated at: 2026-09-07T19:53:26.137094

## Project Configuration (`pubspec.yaml`)

```yaml
name: slither_io
description: "A new Flutter project."
# The following line prevents the package from being accidentally published to
# pub.dev using `flutter pub publish`. This is preferred for private packages.
publish_to: 'none' # Remove this line if you wish to publish to pub.dev

# The following defines the version and build number for your application.
# A version number is three numbers separated by dots, like 1.2.43
# followed by an optional build number separated by a +.
# Both the version and the builder number may be overridden in flutter
# build by specifying --build-name and --build-number, respectively.
# In Android, build-name is used as versionName while build-number used as versionCode.
# Read more about Android versioning at https://developer.android.com/studio/publish/versioning
# In iOS, build-name is used as CFBundleShortVersionString while build-number is used as CFBundleVersion.
# Read more about iOS versioning at
# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html
# In Windows, build-name is used as the major, minor, and patch parts
# of the product and file versions while build-number is used as the build suffix.
version: 1.0.0+1

environment:
  sdk: ^3.11.0

# Dependencies specify other packages that your package needs in order to work.
# To automatically upgrade your package dependencies to the latest versions
# consider running `flutter pub upgrade --major-versions`. Alternatively,
# dependencies can be manually updated by changing the version numbers below to
# the latest version available on pub.dev. To see which dependencies have newer
# versions available, run `flutter pub outdated`.
dependencies:
  flutter:
    sdk: flutter
  flame: ^1.18.0
  flame_audio: ^2.10.0
  flutter_riverpod: ^2.5.1
  freezed_annotation: ^2.4.1
  json_annotation: ^4.9.0
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  uuid: ^4.4.0
  collection: ^1.18.0
  cupertino_icons: ^1.0.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
  build_runner: ^2.4.8
  freezed: ^2.4.7
  json_serializable: ^6.8.0
  hive_generator: ^2.0.1

# For information on the generic Dart part of this file, see the
# following page: https://dart.dev/tools/pub/pubspec

# The following section is specific to Flutter packages.
flutter:
  uses-material-design: true

  assets:
    - assets/images/ui/
    - assets/images/skins/
    - assets/sounds/

  # An image asset can refer to one or more resolution-specific "variants", see
  # https://flutter.dev/to/resolution-aware-images

  # For details regarding adding assets from package dependencies, see
  # https://flutter.dev/to/asset-from-package

  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  # fonts:
  #   - family: Schyler
  #     fonts:
  #       - asset: fonts/Schyler-Regular.ttf
  #       - asset: fonts/Schyler-Italic.ttf
  #         style: italic
  #   - family: Trajan Pro
  #     fonts:
  #       - asset: fonts/TrajanPro.ttf
  #       - asset: fonts/TrajanPro_Bold.ttf
  #         weight: 700
  #
  # For details regarding fonts from package dependencies,
  # see https://flutter.dev/to/font-from-package

```

## Directory Structure (`lib/`)

```
├── game
│   ├── components
│   │   ├── background_grid.dart
│   │   ├── candy_component.dart
│   │   ├── candy_layer.dart
│   │   ├── snake_component.dart
│   │   └── world_bounds.dart
│   ├── slither_game.dart
│   └── systems
│       ├── bot_ai.dart
│       └── collision_system.dart
├── main.dart
├── models
│   ├── alert.dart
│   ├── candy.dart
│   ├── player_data.dart
│   ├── skin.dart
│   ├── skin_presets.dart
│   ├── snake.dart
│   └── vector2_serde.dart
├── providers
│   ├── alert_provider.dart
│   ├── candy_provider.dart
│   ├── player_provider.dart
│   └── snake_provider.dart
├── ui
│   ├── app.dart
│   ├── overlays
│   │   ├── alerts_overlay.dart
│   │   ├── compass_overlay.dart
│   │   ├── death_overlay.dart
│   │   ├── hud_overlay.dart
│   │   └── minimap_overlay.dart
│   └── screens
│       ├── game_screen.dart
│       └── home_screen.dart
└── utils
    ├── audio_service.dart
    ├── constants.dart
    ├── grid_spatial_hash.dart
    └── math_utils.dart
```

## Source Code Files

### `lib/game/components/background_grid.dart`

```dart
import 'dart:math' as math;
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class BackgroundGrid extends Component with HasGameReference {
  static final Paint _gridPaint = Paint()
    ..color = CatppuccinColors.surface0.withAlpha(60)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.5;

  static Path? _hexagonPath;

  static Path _getHexagonPath(double radius) {
    if (_hexagonPath != null) return _hexagonPath!;
    
    final Path path = Path();
    for (int i = 0; i < 6; i++) {
      double angle = (math.pi / 180) * (60 * i - 30);
      double x = radius * math.cos(angle);
      double y = radius * math.sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    _hexagonPath = path;
    return path;
  }

  @override
  void render(Canvas canvas) {
    final viewport = game.camera.visibleWorldRect;
    
    const double radius = 60.0;
    final double width = math.sqrt(3) * radius;
    final double height = 2 * radius;
    final double horizontalSpacing = width;
    final double verticalSpacing = height * 0.75;

    final int startCol = (viewport.left / horizontalSpacing).floor() - 1;
    final int endCol = (viewport.right / horizontalSpacing).ceil() + 1;
    final int startRow = (viewport.top / verticalSpacing).floor() - 1;
    final int endRow = (viewport.bottom / verticalSpacing).ceil() + 1;

    final Path path = _getHexagonPath(radius * 0.95);

    for (int row = startRow; row <= endRow; row++) {
      final double rowY = row * verticalSpacing;
      final bool isOdd = row % 2 != 0;
      
      for (int col = startCol; col <= endCol; col++) {
        double x = col * horizontalSpacing;
        if (isOdd) {
          x += horizontalSpacing / 2;
        }
        
        canvas.save();
        canvas.translate(x, rowY);
        canvas.drawPath(path, _gridPaint);
        canvas.restore();
      }
    }
  }
}

```

### `lib/game/components/candy_component.dart`

```dart
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/candy.dart';

class CandyComponent extends PositionComponent {
  final String id;
  CandyEntity? _entity;

  static final Paint _paint = Paint();
  static final Paint _highlightPaint = Paint()..color = Colors.white.withAlpha(80);

  CandyComponent(this.id);

  void updateEntity(CandyEntity entity) {
    _entity = entity;
    position = entity.position;
    size = Vector2.all(entity.size * 4.0);
    anchor = Anchor.center;
  }

  @override
  void render(Canvas canvas) {
    final entity = _entity;
    if (entity == null || entity.eatenAt != null) return;

    final center = Offset(size.x / 2, size.y / 2);
    final radius = size.x / 2;

    _paint.color = entity.color;
    canvas.drawCircle(center, radius, _paint);

    if (entity.size > 3) {
      canvas.drawCircle(
        Offset(size.x * 0.35, size.y * 0.35),
        radius * 0.2,
        _highlightPaint,
      );
    }
  }
}

```

### `lib/game/components/candy_layer.dart`

```dart
import 'dart:ui' as ui;
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/candy.dart';
import '../systems/collision_system.dart';
import '../slither_game.dart';

class CandyLayer extends Component with HasGameReference<SlitherGame> {
  final CollisionSystem collisionSystem;
  Map<String, CandyEntity> _candies = {};

  CandyLayer(this.collisionSystem);

  void updateCandies(Map<String, CandyEntity> newCandies) {
    _candies = newCandies;
  }

  static final Paint _paint = Paint()..style = ui.PaintingStyle.fill;
  static final Paint _highlightPaint = Paint()..color = Colors.white.withAlpha(80);
  static final Paint _glowPaint = Paint()..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6.0);

  @override
  void render(Canvas canvas) {
    if (_candies.isEmpty) return;
    
    final viewport = game.camera.visibleWorldRect;
    final visiblePoints = collisionSystem.candyGrid.allWithinRect(viewport);
    
    if (visiblePoints.isEmpty) return;

    for (final point in visiblePoints) {
      final candy = _candies[point.metadata];
      if (candy == null || candy.eatenAt != null) continue;

      final double px = candy.position.x;
      final double py = candy.position.y;
      final double radius = 3.5 + (candy.size * 1.2);
      
      _paint.color = candy.color;
      _glowPaint.color = candy.color.withAlpha(40);
      
      final center = Offset(px, py);
      canvas.drawCircle(center, radius * 1.4, _glowPaint);
      canvas.drawCircle(center, radius, _paint);
      
      canvas.drawCircle(
        Offset(px - radius * 0.3, py - radius * 0.3),
        radius * 0.25,
        _highlightPaint,
      );
    }
  }
}

```

### `lib/game/components/snake_component.dart`

```dart
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/snake.dart';
import '../../models/skin_presets.dart';
import '../../utils/constants.dart';

class SnakeComponent extends Component {
  final String id;
  SnakeEntity? _entity;

  static final Paint _bodyPaint = Paint()..strokeCap = StrokeCap.round;
  static final Paint _headPaint = Paint();
  static final Paint _eyePaint = Paint()..color = Colors.white;
  static final Paint _pupilPaint = Paint()..color = Colors.black;
  static final Paint _boostPaint = Paint();
  static final Paint _shadowPaint = Paint()..strokeCap = StrokeCap.round;
  static final Paint _highlightPaint = Paint()..strokeCap = StrokeCap.round;
  static final Paint _headGlowPaint = Paint();

  final Float32List _pointBuffer = Float32List(2048 * 2);
  final Float32List _highlightBuffer = Float32List(2048 * 2);
  int _pointCount = 0;

  SnakeComponent(this.id);

  void updateEntity(SnakeEntity entity) {
    _entity = entity;
  }

  @override
  void render(Canvas canvas) {
    final entity = _entity;
    if (entity == null || entity.dead) return;

    final description = entity.describe();
    final radius = description.radius;
    final skin = SkinPresets.getById(entity.skin);
    final primaryColor = skin.primary ?? CatppuccinColors.mauve;

    _bodyPaint.color = primaryColor;
    _bodyPaint.strokeWidth = radius * 2.1; 
    _headPaint.color = primaryColor;

    // LOD Optimization
    final double spacing = description.spacingAtHead;
    final int renderStep = math.max(1, (radius * 0.8 / spacing).floor());
    
    _pointCount = 0;

    for (int i = entity.tracers.length - 1; i >= 0; i -= renderStep) {
      if (_pointCount >= 1024) break;
      final pos = entity.tracers[i];
      _pointBuffer[_pointCount * 2] = pos.x;
      _pointBuffer[_pointCount * 2 + 1] = pos.y;
      
      // Pre-calculate highlight offset to avoid loop inside drawing
      _highlightBuffer[_pointCount * 2] = pos.x - radius * 0.2;
      _highlightBuffer[_pointCount * 2 + 1] = pos.y - radius * 0.2;

      _pointCount++;
    }

    if (_pointCount > 0) {
      final points = Float32List.sublistView(_pointBuffer, 0, _pointCount * 2);
      
      _shadowPaint.color = Colors.black.withAlpha(30);
      _shadowPaint.strokeWidth = radius * 2.3;
      canvas.drawRawPoints(ui.PointMode.points, points, _shadowPaint);

      canvas.drawRawPoints(ui.PointMode.points, points, _bodyPaint);
      
      if (entity.id == 'local_player' || radius > 40) {
        _highlightPaint.color = Colors.white.withAlpha(25);
        _highlightPaint.strokeWidth = radius * 0.9;
        canvas.drawRawPoints(
          ui.PointMode.points, 
          Float32List.sublistView(_highlightBuffer, 0, _pointCount * 2), 
          _highlightPaint
        );
      }
    }

    final headPos = Offset(entity.head.x, entity.head.y);
    
    _headGlowPaint.color = primaryColor.withAlpha(60);
    _headGlowPaint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 15.0);
    canvas.drawCircle(headPos, radius * 2.0, _headGlowPaint);

    canvas.drawCircle(headPos, radius * 1.2, _headPaint);

    if (entity.isBoosting) {
      _boostPaint.color = primaryColor.withAlpha(80);
      canvas.drawCircle(headPos, radius * 1.6, _boostPaint);
    }

    final angle = entity.angle;
    final cosA = math.cos(angle);
    final sinA = math.sin(angle);
    
    final fx = cosA * radius * 0.7;
    final fy = sinA * radius * 0.7;
    final rx = -sinA * radius * 0.55;
    final ry = cosA * radius * 0.55;

    final leftEyeX = entity.head.x + fx + rx;
    final leftEyeY = entity.head.y + fy + ry;
    final rightEyeX = entity.head.x + fx - rx;
    final rightEyeY = entity.head.y + fy - ry;

    canvas.drawCircle(Offset(leftEyeX, leftEyeY), radius * 0.35, _eyePaint);
    canvas.drawCircle(Offset(rightEyeX, rightEyeY), radius * 0.35, _eyePaint);

    final px = cosA * radius * 0.08;
    final py = sinA * radius * 0.08;
    canvas.drawCircle(Offset(leftEyeX + px, leftEyeY + py), radius * 0.18, _pupilPaint);
    canvas.drawCircle(Offset(rightEyeX + px, rightEyeY + py), radius * 0.18, _pupilPaint);
  }
}

```

### `lib/game/components/world_bounds.dart`

```dart
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class WorldBounds extends Component {
  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = CatppuccinColors.overlay0.withAlpha(50)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    canvas.drawCircle(Offset.zero, GameConstants.worldBounds, paint);

    // Draw a "danger" zone border
    final dangerPaint = Paint()
      ..color = CatppuccinColors.red.withAlpha(30)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawCircle(Offset.zero, GameConstants.worldBounds + 50, dangerPaint);
  }
}

```

### `lib/game/slither_game.dart`

```dart
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

```

### `lib/game/systems/bot_ai.dart`

```dart
import 'dart:math' as math;
import 'package:flame/extensions.dart';
import '../../models/snake.dart';
import '../../models/candy.dart';
import '../../utils/constants.dart';
import '../../utils/grid_spatial_hash.dart';

// Ported from: src/server/bots/bot-behavior.ts

enum BehaviorMode {
  idle,
  scavenging,
}

class BotAI {
  final String id;
  final double seed;
  late double _timer;
  final math.Random _random = math.Random();

  BotAI(this.id) : seed = math.Random().nextDouble() * 255 {
    _timer = math.Random().nextDouble(); // Stagger initial update
  }

  void update(
    double dt,
    SnakeEntity snake,
    Map<String, SnakeEntity> snakes,
    Map<String, CandyEntity> candies,
    SpatialGrid<String> snakeGrid,
    SpatialGrid<String> candyGrid,
    void Function(String id, double angle) onTurn,
  ) {
    _timer += dt;

    if (_timer < 1.0) return;
    _timer = 0;

    final nearbyEnemy = _directionToNearestEnemy(snake, snakes, snakeGrid);
    if (nearbyEnemy != null) {
      _flee(snake, nearbyEnemy, onTurn);
      return;
    }

    final mode = _getBehavior();
    switch (mode) {
      case BehaviorMode.idle:
        _idle(snake, onTurn);
        break;
      case BehaviorMode.scavenging:
        _scavenge(snake, candies, candyGrid, onTurn);
        break;
    }
  }

  void _idle(SnakeEntity snake, void Function(String id, double angle) onTurn) {
    final head = snake.head;
    if (GameConstants.worldBounds - head.length <= 20) {
      final angle = math.atan2(head.y, head.x) + math.pi;
      onTurn(id, angle);
      return;
    }

    final range = _random.nextDouble() > 0.2 ? 20.0 : 180.0;
    final turnAmount = (_random.nextDouble() * 2 - 1) * range * (math.pi / 180.0);
    onTurn(id, snake.angle + turnAmount);
  }

  void _scavenge(
    SnakeEntity snake,
    Map<String, CandyEntity> candies,
    SpatialGrid<String> candyGrid,
    void Function(String id, double angle) onTurn,
  ) {
    // Spatial grid nearest is much faster than iterating all candies
    final nearestCandyPoint = candyGrid.nearest(snake.head, 400.0);
    
    if (nearestCandyPoint == null) {
      _idle(snake, onTurn);
      return;
    }

    final angle = math.atan2(
      nearestCandyPoint.position.y - snake.head.y,
      nearestCandyPoint.position.x - snake.head.x,
    );
    onTurn(id, angle);
  }

  void _flee(SnakeEntity snake, Vector2 enemyDirection, void Function(String id, double angle) onTurn) {
    final angle = math.atan2(enemyDirection.y, enemyDirection.x) + math.pi + (_random.nextDouble() * 2 - 1) * 0.2;
    onTurn(id, angle);
  }

  Vector2? _directionToNearestEnemy(SnakeEntity snake, Map<String, SnakeEntity> snakes, SpatialGrid<String> snakeGrid) {
    final description = snake.describe();
    final radius = description.radius * 1.5;

    final nearestPoint = snakeGrid.nearest(snake.head, radius * 8.0 + 50.0, (point) {
      return point.metadata != snake.id;
    });

    if (nearestPoint == null) return null;

    final enemy = snakes[nearestPoint.metadata];
    if (enemy == null || enemy.dead) return null;

    final dx = nearestPoint.position.x - snake.head.x;
    final dy = nearestPoint.position.y - snake.head.y;
    final distSq = dx * dx + dy * dy;
    
    final enemyRadius = enemy.describe().radius;
    final alertDist = 5.0 * (radius + enemyRadius);

    if (distSq <= alertDist * alertDist) {
      return nearestPoint.position - snake.head;
    }
    return null;
  }

  BehaviorMode _getBehavior() {
    if (_random.nextDouble() > 0.7) {
      return BehaviorMode.scavenging;
    }
    return BehaviorMode.idle;
  }
}

```

### `lib/game/systems/collision_system.dart`

```dart
import 'package:flame/extensions.dart';
import '../../models/snake.dart';
import '../../models/candy.dart';
import '../../utils/constants.dart';
import '../../utils/grid_spatial_hash.dart';

// Ported from: src/server/world/services/collision/collision-tick.ts

class CollisionSystem {
  final SpatialGrid<String> snakeGrid = SpatialGrid(50.0);
  final SpatialGrid<String> candyGrid = SpatialGrid(50.0);

  // Cache to track candy positions in grid to avoid full clear
  final Map<String, Vector2> _candyPositionCache = {};

  void updateSnakeGrid(Map<String, SnakeEntity> snakes) {
    snakeGrid.clear();
    const int tracerStep = 15; // Increased step for better performance
    for (final snake in snakes.values) {
      if (snake.dead) continue;

      snakeGrid.insert(snake.head, snake.id);
      final tracers = snake.tracers;
      
      // Only insert every Nth tracer
      for (int i = 0; i < tracers.length; i += tracerStep) {
        snakeGrid.insert(tracers[i], snake.id);
      }
      
      if (tracers.isNotEmpty && (tracers.length - 1) % tracerStep != 0) {
        snakeGrid.insert(tracers.last, snake.id);
      }
    }
  }

  void updateCandyGrid(Map<String, CandyEntity> candies) {
    // Incremental update for candies without toSet()
    final List<String> removedIds = [];
    for (final id in _candyPositionCache.keys) {
      if (!candies.containsKey(id)) {
        removedIds.add(id);
      }
    }
    
    for (final id in removedIds) {
      final pos = _candyPositionCache.remove(id);
      if (pos != null) candyGrid.remove(pos);
    }

    // Add new candies
    for (final entry in candies.entries) {
      if (!_candyPositionCache.containsKey(entry.key)) {
        final candy = entry.value;
        if (candy.eatenAt != null) continue;
        candyGrid.insert(candy.position, entry.key);
        _candyPositionCache[entry.key] = candy.position;
      }
    }
  }

  void checkCollisions({
    required Map<String, SnakeEntity> snakes,
    required Map<String, CandyEntity> candies,
    required void Function(String candyId, String snakeId) onEatCandy,
    required void Function(String snakeId) onHitWall,
    required void Function(String victimId, String killerId) onSnakeCollision,
  }) {
    updateSnakeGrid(snakes);
    updateCandyGrid(candies);

    // Optimized: Only check collisions for snakes that moved or are nearby
    for (final snake in snakes.values) {
      if (snake.dead) continue;

      final description = snake.describe();
      final radius = description.radius;

      // Wall check is cheap
      if (snake.head.length + radius > GameConstants.worldBounds) {
        onHitWall(snake.id);
        continue;
      }

      // 1. Snake-to-Snake collision
      final nearestEnemy = snakeGrid.nearest(snake.head, radius + 15.0, (point) {
        if (point.metadata == snake.id) {
          // Self collision only if far from head
          final dx = snake.head.x - point.position.x;
          final dy = snake.head.y - point.position.y;
          return (dx * dx + dy * dy) > (radius * radius * 12.0); // 3.5 * radius approx
        }
        return true;
      });

      if (nearestEnemy != null) {
        final enemy = snakes[nearestEnemy.metadata];
        if (enemy != null && !enemy.dead) {
          final enemyRadius = enemy.describe().radius;
          final dx = snake.head.x - nearestEnemy.position.x;
          final dy = snake.head.y - nearestEnemy.position.y;
          final distSq = dx * dx + dy * dy;
          
          final collisionDist = 0.85 * (radius + enemyRadius);

          if (distSq <= collisionDist * collisionDist) {
            onSnakeCollision(snake.id, enemy.id);
            continue;
          }
        }
      }

      // 2. Snake-to-Candy collision
      final eatRange = radius * 1.5 + 15.0;
      final nearbyCandies = candyGrid.allWithin(snake.head, eatRange);

      for (final candyPoint in nearbyCandies) {
        onEatCandy(candyPoint.metadata, snake.id);
      }
    }
  }
}

```

### `lib/main.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'ui/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  runApp(
    const ProviderScope(
      child: SlitherApp(),
    ),
  );
}

```

### `lib/models/alert.dart`

```dart
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'alert.freezed.dart';
part 'alert.g.dart';

enum AlertScope { money, ranking }

@freezed
class AlertEntity with _$AlertEntity {
  const factory AlertEntity({
    required int id,
    required String emoji,
    required String message,
    @ColorConverter() required Color color,
    required double duration,
    required bool visible,
    AlertScope? scope,
  }) = _AlertEntity;

  factory AlertEntity.fromJson(Map<String, dynamic> json) => _$AlertEntityFromJson(json);
}

```

### `lib/models/candy.dart`

```dart
import 'package:flame/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'candy.freezed.dart';
part 'candy.g.dart';

enum CandyType {
  defaultType,
  loot,
  dropping,
}

@freezed
class CandyEntity with _$CandyEntity {
  const factory CandyEntity({
    required String id,
    required int size,
    @Vector2Converter() required Vector2 position,
    @ColorConverter() required Color color,
    required CandyType type,
    @Vector2Converter() Vector2? eatenAt,
  }) = _CandyEntity;

  factory CandyEntity.fromJson(Map<String, dynamic> json) => _$CandyEntityFromJson(json);
}

```

### `lib/models/player_data.dart`

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_data.freezed.dart';
part 'player_data.g.dart';

@freezed
class PlayerData with _$PlayerData {
  const factory PlayerData({
    required int balance,
    required List<String> skins,
    required String skin,
  }) = _PlayerData;

  factory PlayerData.fromJson(Map<String, dynamic> json) => _$PlayerDataFromJson(json);

  static const String randomSkin = "__random__";

  factory PlayerData.initial() => const PlayerData(
    balance: 100,
    skins: [randomSkin, 'default'],
    skin: randomSkin,
  );
}

```

### `lib/models/skin.dart`

```dart
import 'package:flame/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'skin.freezed.dart';
part 'skin.g.dart';

@freezed
class SnakeSkin with _$SnakeSkin {
  const factory SnakeSkin({
    required String id,
    @ColorConverter() Color? primary,
    @ColorConverter() Color? secondary,
    @ColorConverter() required List<Color> tint,
    @ColorConverter() List<Color>? boostTint,
    required List<String> texture,
    @Vector2Converter() required Vector2 size,
    required int price,
  }) = _SnakeSkin;

  factory SnakeSkin.fromJson(Map<String, dynamic> json) => _$SnakeSkinFromJson(json);
}

```

### `lib/models/skin_presets.dart`

```dart
import 'package:flame/extensions.dart';
import 'skin.dart';
import '../utils/constants.dart';

class SkinPresets {
  static final List<SnakeSkin> allSkins = [
    ..._catppuccinSkins,
    _silverSkin,
    _usaSkin,
    _canadaSkin,
    _ukSkin,
    _franceSkin,
  ];

  static final List<SnakeSkin> _catppuccinSkins = [
    'rosewater', 'flamingo', 'pink', 'mauve', 'red', 'maroon', 'peach',
    'yellow', 'green', 'teal', 'sky', 'sapphire', 'blue', 'lavender'
  ].map((id) => _createCatppuccinSkin(id, _getCatppuccinColor(id))).toList();

  static const Map<String, Color> _catppuccinColorMap = {
    'rosewater': CatppuccinColors.rosewater,
    'flamingo': CatppuccinColors.flamingo,
    'pink': CatppuccinColors.pink,
    'mauve': CatppuccinColors.mauve,
    'red': CatppuccinColors.red,
    'maroon': CatppuccinColors.maroon,
    'peach': CatppuccinColors.peach,
    'yellow': CatppuccinColors.yellow,
    'green': CatppuccinColors.green,
    'teal': CatppuccinColors.teal,
    'sky': CatppuccinColors.sky,
    'sapphire': CatppuccinColors.sapphire,
    'blue': CatppuccinColors.blue,
    'lavender': CatppuccinColors.lavender,
  };

  static Color _getCatppuccinColor(String id) {
    return _catppuccinColorMap[id] ?? CatppuccinColors.mauve;
  }

  static SnakeSkin _createCatppuccinSkin(String id, Color color) {
    final darkened = Color.lerp(color, CatppuccinColors.black, 0.1)!;
    return SnakeSkin(
      id: id,
      price: 0,
      size: Vector2(512, 512),
      tint: _blendColorSequence([color, darkened], 12),
      texture: ['snake_main'],
      primary: color,
    );
  }

  static final SnakeSkin _silverSkin = SnakeSkin(
    id: 'silver',
    price: 100,
    size: Vector2(512, 512),
    tint: [CatppuccinColors.text],
    texture: ['snake_main'],
    primary: CatppuccinColors.text,
  );

  static final SnakeSkin _usaSkin = SnakeSkin(
    id: 'usa',
    price: 100,
    size: Vector2(512, 512),
    tint: [
      ..._duplicate([CatppuccinColors.red, CatppuccinColors.offwhite], 4),
      ..._duplicate([CatppuccinColors.white], 8),
    ],
    texture: [
      ..._duplicate(['snake_main'], 8),
      ..._duplicate(['snake_stars'], 8),
    ],
    boostTint: [
      ..._duplicate([CatppuccinColors.red, CatppuccinColors.offwhite], 4),
      ..._duplicate([CatppuccinColors.blue], 8),
    ],
    primary: const Color(0xFF3B4D8A),
    secondary: const Color(0xFF2B3969),
  );

  static final SnakeSkin _canadaSkin = SnakeSkin(
    id: 'canada',
    price: 100,
    size: Vector2(512, 512),
    tint: [CatppuccinColors.red, CatppuccinColors.white, CatppuccinColors.offwhite],
    texture: ['snake_main', 'snake_canada', 'snake_main'],
    boostTint: [CatppuccinColors.red, CatppuccinColors.red, CatppuccinColors.white],
  );

  static final SnakeSkin _ukSkin = SnakeSkin(
    id: 'uk',
    price: 100,
    size: Vector2(512, 512),
    tint: [
      CatppuccinColors.red, CatppuccinColors.red, CatppuccinColors.offwhite,
      CatppuccinColors.blue, CatppuccinColors.blue, CatppuccinColors.offwhite
    ],
    texture: ['snake_main'],
  );

  static final SnakeSkin _franceSkin = SnakeSkin(
    id: 'france',
    price: 100,
    size: Vector2(512, 512),
    tint: [
      CatppuccinColors.blue, CatppuccinColors.blue,
      CatppuccinColors.offwhite, CatppuccinColors.offwhite,
      CatppuccinColors.red, CatppuccinColors.red
    ],
    texture: ['snake_main'],
  );

  static List<Color> _blendColorSequence(List<Color> colors, int length, {bool looped = true}) {
    final List<Color> result = [];
    final List<Color> workingColors = looped ? [...colors, colors[0]] : colors;
    final int colorCount = workingColors.length;

    for (int i = 0; i < length; i++) {
      final double indexScaled = i * (colorCount - 1) / (length - 1);
      final int indexInArray = indexScaled.floor();

      final Color from = workingColors[indexInArray];
      final Color to = workingColors[(indexInArray + 1) % colorCount];

      result.add(Color.lerp(from, to, indexScaled % 1)!);
    }
    return result;
  }

  static List<T> _duplicate<T>(List<T> sequence, int repeatCount) {
    final List<T> result = [];
    for (int i = 0; i < repeatCount; i++) {
      result.addAll(sequence);
    }
    return result;
  }

  static SnakeSkin getById(String id) {
    return allSkins.firstWhere((s) => s.id == id, orElse: () => allSkins.first);
  }
}

```

### `lib/models/snake.dart`

```dart
import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'snake.freezed.dart';
part 'snake.g.dart';

@freezed
class SnakeDescription with _$SnakeDescription {
  const factory SnakeDescription({
    required double length,
    required double radius,
    required double spacingAtHead,
    required double spacingAtTail,
    required double turnSpeed,
  }) = _SnakeDescription;
}

@freezed
class SnakeEntity with _$SnakeEntity {
  const SnakeEntity._();

  const factory SnakeEntity({
    required String id,
    required String name,
    @Vector2Converter() required Vector2 head,
    required double angle,
    required double desiredAngle,
    required int score,
    required bool boost,
    @Vector2Converter() required List<Vector2> tracers,
    required String skin,
    required bool dead,
    required int eliminations,
    @Default(0.0) double boostTimer,
    @Vector2Converter() Vector2? previousDropPosition,
    @JsonKey(includeFromJson: false, includeToJson: false) SnakeDescription? cachedDescription,
  }) = _SnakeEntity;

  factory SnakeEntity.fromJson(Map<String, dynamic> json) => _$SnakeEntityFromJson(json);

  bool get isBoosting => boost && score > 10;

  SnakeDescription describe() {
    if (cachedDescription != null) {
      return cachedDescription!;
    }

    // Slightly smaller base radius and more gradual scaling
    final radius = math.max(0.6 * (math.log(score / 150.0 + 2.0) / math.ln10), 0.4) * 50.0;
    
    // More linear length scaling for lower scores to make early growth feel better
    final double length = (120.0 * (math.log(score / 300.0 + 1.0) / math.ln10) + 15.0) * 4.0;
    
    return SnakeDescription(
      radius: radius,
      spacingAtHead: 0.12 * radius,
      spacingAtTail: 0.14 * radius,
      length: length,
      turnSpeed: (math.max(380.0 - 110.0 * (math.log(score / 180.0 + 1.0) / math.ln10), 55.0) * math.pi / 180.0),
    );
  }
}

```

### `lib/models/vector2_serde.dart`

```dart
import 'package:flame/extensions.dart';
import 'package:json_annotation/json_annotation.dart';

class Vector2Converter implements JsonConverter<Vector2, Map<String, dynamic>> {
  const Vector2Converter();

  @override
  Vector2 fromJson(Map<String, dynamic> json) {
    return Vector2(
      (json['x'] as num).toDouble(),
      (json['y'] as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic> toJson(Vector2 object) {
    return {
      'x': object.x,
      'y': object.y,
    };
  }
}

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color object) => object.toARGB32();
}

```

### `lib/providers/alert_provider.dart`

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/alert.dart';
import '../utils/constants.dart';

class AlertNotifier extends StateNotifier<List<AlertEntity>> {
  AlertNotifier() : super([]);

  int _nextId = 0;
  final Map<AlertScope, DateTime> _lastAlertTime = {};

  void sendAlert({
    String emoji = '✅',
    String message = 'Alert',
    Color color = CatppuccinColors.green,
    double duration = 5.0,
    AlertScope? scope,
  }) {
    if (scope != null) {
      final now = DateTime.now();
      final lastTime = _lastAlertTime[scope];
      if (lastTime != null && now.difference(lastTime).inMilliseconds < 800) {
        return; // Throttled
      }
      _lastAlertTime[scope] = now;
      dismissAlertsOfScope(scope);
    }

    final id = _nextId++;
    final alert = AlertEntity(
      id: id,
      emoji: emoji,
      message: message,
      color: color,
      duration: duration,
      visible: true,
      scope: scope,
    );

    state = [...state, alert];

    Timer(Duration(milliseconds: (duration * 1000).toInt()), () {
      dismissAlert(id);
    });
  }

  void dismissAlert(int id) {
    bool found = false;
    state = state.map((a) {
      if (a.id == id && a.visible) {
        found = true;
        return a.copyWith(visible: false);
      }
      return a;
    }).toList();

    if (found) {
      Timer(const Duration(milliseconds: 250), () {
        state = state.where((a) => a.id != id).toList();
      });
    }
  }

  void dismissAlertsOfScope(AlertScope scope) {
    final targets = state.where((a) => a.scope == scope && a.visible).toList();
    for (final alert in targets) {
      dismissAlert(alert.id);
    }
  }
}

final alertProvider = StateNotifierProvider<AlertNotifier, List<AlertEntity>>((ref) {
  return AlertNotifier();
});

```

### `lib/providers/candy_provider.dart`

```dart
import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/candy.dart';
import '../utils/constants.dart';

// Ported from: src/shared/store/candy/candy-slice.ts

class CandyNotifier extends StateNotifier<Map<String, CandyEntity>> {
  CandyNotifier() : super({});

  void populateCandy(List<CandyEntity> candies) {
    final newState = Map<String, CandyEntity>.from(state);
    for (final candy in candies) {
      newState[candy.id] = candy;
    }
    state = newState;
  }

  void addCandy(CandyEntity candy) {
    state = {...state, candy.id: candy};
  }

  void removeCandy(String id) {
    final newState = Map<String, CandyEntity>.from(state);
    newState.remove(id);
    state = newState;
  }

  void setCandyEatenAt(String id, Vector2 eatenAt) {
    final candy = state[id];
    if (candy == null) return;
    state = {...state, id: candy.copyWith(eatenAt: eatenAt)};
  }

  void spawnRandomCandy(int amount) {
    final random = math.Random();
    final List<CandyEntity> newCandies = [];

    for (int i = 0; i < amount; i++) {
      final double angle = random.nextDouble() * 2 * math.pi;
      final double dist = math.sqrt(random.nextDouble()) * GameConstants.worldBounds;
      
      final pos = Vector2(
        math.cos(angle) * dist,
        math.sin(angle) * dist,
      );

      newCandies.add(CandyEntity(
        id: 'candy_${DateTime.now().microsecondsSinceEpoch}_$i',
        size: random.nextInt(5) + 1,
        position: pos,
        color: _getRandomColor(random),
        type: CandyType.defaultType,
      ));
    }
    populateCandy(newCandies);
  }

  Color _getRandomColor(math.Random random) {
    const colors = [
      CatppuccinColors.mauve,
      CatppuccinColors.blue,
      CatppuccinColors.green,
      CatppuccinColors.red,
      CatppuccinColors.peach,
      CatppuccinColors.yellow,
      CatppuccinColors.sapphire,
      CatppuccinColors.flamingo,
      CatppuccinColors.pink,
    ];
    return colors[random.nextInt(colors.length)];
  }
}

final candyProvider = StateNotifierProvider<CandyNotifier, Map<String, CandyEntity>>((ref) {
  return CandyNotifier();
});

```

### `lib/providers/player_provider.dart`

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/player_data.dart';

// Ported from: src/shared/store/saves/save-slice.ts

class PlayerNotifier extends AsyncNotifier<PlayerData> {
  static const String boxName = 'player_data';
  Box? _box;

  @override
  Future<PlayerData> build() async {
    _box ??= await Hive.openBox(boxName);
    final data = _box!.get('current');
    if (data != null) {
      return PlayerData.fromJson(Map<String, dynamic>.from(data));
    }
    return PlayerData.initial();
  }

  Future<void> updateBalance(int amount) async {
    final current = state.value;
    if (current == null) return;

    final newState = current.copyWith(balance: current.balance + amount);
    state = AsyncData(newState);
    await _save(newState);
  }

  Future<void> buySkin(String skinId, int price) async {
    final current = state.value;
    if (current == null) return;
    if (current.balance < price) return;

    final newState = current.copyWith(
      balance: current.balance - price,
      skins: [...current.skins, skinId],
    );
    state = AsyncData(newState);
    await _save(newState);
  }

  Future<void> equipSkin(String skinId) async {
    final current = state.value;
    if (current == null) return;
    if (!current.skins.contains(skinId)) return;

    final newState = current.copyWith(skin: skinId);
    state = AsyncData(newState);
    await _save(newState);
  }

  Future<void> _save(PlayerData data) async {
    _box ??= await Hive.openBox(boxName);
    await _box!.put('current', data.toJson());
  }
}

final playerProvider = AsyncNotifierProvider<PlayerNotifier, PlayerData>(() {
  return PlayerNotifier();
});

```

### `lib/providers/snake_provider.dart`

```dart
import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/snake.dart';
import '../utils/constants.dart';
import '../utils/math_utils.dart';

// Ported from: src/shared/store/snakes/snake-slice.ts

class SnakeNotifier extends Notifier<Map<String, SnakeEntity>> {
  final math.Random _random = math.Random();

  @override
  Map<String, SnakeEntity> build() => {};

  void addSnake(String id, {String? name, Vector2? head, String? skin, int? score}) {
    final headPos = head?.clone() ?? Vector2.zero();
    final newSnake = SnakeEntity(
      id: id,
      name: name ?? id,
      head: headPos,
      angle: 0,
      desiredAngle: 0,
      score: score ?? GameConstants.initialScore,
      boost: false,
      tracers: [],
      skin: skin ?? 'default',
      dead: false,
      eliminations: 0,
      previousDropPosition: headPos.clone(),
    );

    state = {...state, id: newSnake};
  }

  void turnSnake(String id, double desiredAngle) {
    final snake = state[id];
    if (snake == null) return;
    state = {...state, id: snake.copyWith(desiredAngle: desiredAngle)};
  }

  void boostSnake(String id, bool boost) {
    final snake = state[id];
    if (snake == null) return;
    state = {...state, id: snake.copyWith(boost: boost)};
  }

  void killSnake(String id) {
    final snake = state[id];
    if (snake == null) return;
    state = {...state, id: snake.copyWith(dead: true)};
  }

  void removeSnake(String id) {
    final newState = Map<String, SnakeEntity>.from(state);
    newState.remove(id);
    state = newState;
  }

  void incrementScore(String id, int amount) {
    final snake = state[id];
    if (snake == null) return;
    state = {
      ...state, 
      id: snake.copyWith(
        score: math.max(0, snake.score + amount),
        cachedDescription: null, // Force recalculation on next tick
      )
    };
  }

  void incrementEliminations(String id) {
    final snake = state[id];
    if (snake == null) return;
    state = {...state, id: snake.copyWith(eliminations: snake.eliminations + 1)};
  }

  void updateTick(double dt, {void Function(Vector2 position, int amount)? onBoostDrop}) {
    final Map<String, SnakeEntity> nextState = {};

    for (final entry in state.entries) {
      SnakeEntity snake = entry.value;
      if (snake.dead) {
        nextState[entry.key] = snake;
        continue;
      }

      double currentBoostTimer = snake.boostTimer;
      int currentScore = snake.score;
      Vector2 previousDropPosition = snake.previousDropPosition ?? snake.head;

      if (snake.isBoosting) {
        currentBoostTimer += dt;
        if (currentBoostTimer >= 0.15) {
          currentBoostTimer = 0.0;
          final int maxDecrease = (3 + 0.001 * currentScore).round().clamp(2, 10);
          final int drain = _random.nextInt(maxDecrease) + 1;
          currentScore = math.max(0, currentScore - drain);

          final description = snake.describe();
          final tail = snake.tracers.isNotEmpty ? snake.tracers.last : null;

          if (tail != null && onBoostDrop != null) {
            if (tail.distanceToSquared(previousDropPosition) > description.radius * description.radius * 4) {
              previousDropPosition = tail.clone();
              onBoostDrop(tail, drain);
            }
          }
        }
      } else {
        currentBoostTimer = 0.0;
      }

      // Important: Invalidate cache if boost drained points
      if (currentScore != snake.score) {
        snake = snake.copyWith(score: currentScore, cachedDescription: null);
      }

      final description = snake.describe();
      final speed = snake.isBoosting ? GameConstants.snakeBoostSpeed : GameConstants.snakeSpeed;
      final angle = turnRadians(snake.angle, snake.desiredAngle, description.turnSpeed * dt);
      
      final nextHead = Vector2(
        snake.head.x + math.cos(angle) * (speed * dt),
        snake.head.y + math.sin(angle) * (speed * dt),
      );

      final double length = description.length;
      final int desiredCount = length.ceil(); 
      final double fraction = length % 1.0;
      
      // Fix: Create a modifiable copy to avoid "unmodifiable list" error
      final List<Vector2> tracers = List<Vector2>.of(snake.tracers);
      
      // Adjust list size
      if (tracers.length > desiredCount) {
        tracers.removeRange(desiredCount, tracers.length);
      }

      for (int i = 0; i < desiredCount; i++) {
        final Vector2 prev = i == 0 ? nextHead : tracers[i - 1];
        
        final double baseSpacing = map(
          i.toDouble(),
          0,
          math.max(1.0, (desiredCount - 1).toDouble()),
          description.spacingAtHead,
          description.spacingAtTail,
        );

        final double spacing = (i == desiredCount - 1 && fraction > 0) 
            ? baseSpacing * fraction 
            : baseSpacing;

        if (i < tracers.length) {
          // Update existing Vector2 in-place (performance optimization)
          final Vector2 current = tracers[i];
          final double dx = current.x - prev.x;
          final double dy = current.y - prev.y;
          final double distSq = dx * dx + dy * dy;

          if (distSq > spacing * spacing) {
            final double dist = math.sqrt(distSq);
            final double ratio = spacing / dist;
            current.setValues(prev.x + dx * ratio, prev.y + dy * ratio);
          }
        } else {
          // Add new segment (cloning prev to start at a valid position)
          tracers.add(prev.clone());
        }
      }

      nextState[entry.key] = snake.copyWith(
        head: nextHead,
        angle: angle,
        boostTimer: currentBoostTimer,
        previousDropPosition: previousDropPosition,
        tracers: tracers, // Same list reference, new values
        cachedDescription: description,
      );
    }

    state = nextState;
  }
}

final snakeProvider = NotifierProvider<SnakeNotifier, Map<String, SnakeEntity>>(() {
  return SnakeNotifier();
});

```

### `lib/ui/app.dart`

```dart
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/audio_service.dart';
import 'screens/home_screen.dart';

class SlitherApp extends StatefulWidget {
  const SlitherApp({super.key});

  @override
  State<SlitherApp> createState() => _SlitherAppState();
}

class _SlitherAppState extends State<SlitherApp> {
  @override
  void initState() {
    super.initState();
    AudioService.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slither Rewrite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CatppuccinColors.base,
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.dark(
          primary: CatppuccinColors.mauve,
          secondary: CatppuccinColors.blue,
          surface: CatppuccinColors.mantle,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

```

### `lib/ui/overlays/alerts_overlay.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/alert_provider.dart';
import '../../models/alert.dart';

class AlertsOverlay extends ConsumerWidget {
  const AlertsOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alerts = ref.watch(alertProvider);

    return Positioned(
      top: 100,
      left: 0,
      right: 0,
      child: Column(
        children: alerts.map((alert) => _AlertItem(key: ValueKey(alert.id), alert: alert)).toList(),
      ),
    );
  }
}

class _AlertItem extends StatefulWidget {
  final AlertEntity alert;
  const _AlertItem({super.key, required this.alert});

  @override
  State<_AlertItem> createState() => _AlertItemState();
}

class _AlertItemState extends State<_AlertItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _slideAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: widget.alert.visible ? 1.0 : 0.0,
      child: ScaleTransition(
        scale: _slideAnimation,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.alert.color.withAlpha(220),
                widget.alert.color.withAlpha(150),
              ],
            ),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white30),
            boxShadow: [
              BoxShadow(
                color: widget.alert.color.withAlpha(100),
                blurRadius: 15,
                spreadRadius: -5,
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.alert.emoji, style: const TextStyle(fontSize: 22)),
              const SizedBox(width: 12),
              Text(
                widget.alert.message.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

### `lib/ui/overlays/compass_overlay.dart`

```dart
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/snake_provider.dart';
import '../../models/snake.dart';
import '../../utils/constants.dart';
import '../../game/slither_game.dart';

class CompassOverlay extends ConsumerWidget {
  final SlitherGame game;
  const CompassOverlay({super.key, required this.game});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnimatedBuilder(
      animation: game.uiUpdateNotifier,
      builder: (context, child) {
        final snakes = ref.read(snakeProvider);
        final localSnake = snakes['local_player'];

        if (localSnake == null || localSnake.dead) return const SizedBox.shrink();

        // Find leader
        SnakeEntity? leader;
        int maxScore = -1;
        for (final snake in snakes.values) {
          if (snake.score > maxScore) {
            maxScore = snake.score;
            leader = snake;
          }
        }

        if (leader == null || leader.id == 'local_player') return const SizedBox.shrink();

        final delta = leader.head - localSnake.head;
        if (delta.length < 100) return const SizedBox.shrink(); // Hide if very close

        final angle = math.atan2(delta.y, delta.x);

        return Center(
          child: IgnorePointer(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: _CompassRenderer(angle: angle),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CompassRenderer extends StatelessWidget {
  final double angle;

  const _CompassRenderer({required this.angle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Crown at the edge
        Transform.translate(
          offset: Offset(
            math.cos(angle) * 120,
            math.sin(angle) * 120,
          ),
          child: const Center(
            child: Text('👑', style: TextStyle(fontSize: 32)),
          ),
        ),
        // Pointer arrow
        Transform.translate(
          offset: Offset(
            math.cos(angle) * 90,
            math.sin(angle) * 90,
          ),
          child: Center(
            child: Transform.rotate(
              angle: angle + math.pi / 2,
              child: Image.asset(
                SlitherAssets.leaderPointer,
                width: 24,
                height: 24,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

```

### `lib/ui/overlays/death_overlay.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utils/constants.dart';

class DeathOverlay extends ConsumerWidget {
  final int finalScore;
  final VoidCallback onRestart;

  const DeathOverlay({
    super.key,
    required this.finalScore,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.black.withAlpha(150),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'GAME OVER',
              style: TextStyle(
                color: CatppuccinColors.red,
                fontSize: 48,
                fontWeight: FontWeight.w900,
                letterSpacing: 4,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Final Score: $finalScore',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                backgroundColor: CatppuccinColors.mauve,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              child: const Text('PLAY AGAIN'),
            ),
          ],
        ),
      ),
    );
  }
}

```

### `lib/ui/overlays/hud_overlay.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/snake_provider.dart';
import '../../providers/player_provider.dart';
import '../../utils/constants.dart';
import '../../models/snake.dart';
import '../../game/slither_game.dart';
import 'compass_overlay.dart';

class HudOverlay extends ConsumerWidget {
  final SlitherGame game;
  const HudOverlay({super.key, required this.game});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        CompassOverlay(game: game),

        // Throttled HUD Elements
        AnimatedBuilder(
          animation: game.uiUpdateNotifier,
          builder: (context, child) {
            final snakes = ref.read(snakeProvider);
            final localSnake = snakes['local_player'];

            // Compute ranking
            final sortedSnakes = snakes.values.toList()..sort((a, b) => b.score.compareTo(a.score));
            
            final player = ref.read(playerProvider).value;

            final currentLength = localSnake?.describe().length.floor() ?? 0;

            return Stack(
              children: [
                // Bottom Left: Length Indicator like in Image 1
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Your length: $currentLength',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Stats Cards (moved up slightly)
                Positioned(
                  bottom: 60,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _StatsCard(
                        emoji: '☠️',
                        label: 'KOs',
                        value: localSnake?.eliminations.toString() ?? '0',
                        primary: const Color(0xFFA1A3C2),
                        secondary: const Color(0xFF61618A),
                      ),
                      const SizedBox(height: 8),
                      _StatsCard(
                        emoji: '💵',
                        label: 'Cash',
                        value: '\$${player?.balance ?? 0}',
                        primary: const Color(0xFF6F9E4F),
                        secondary: const Color(0xFF99B56B),
                      ),
                    ],
                  ),
                ),

                // Top Right: Leaderboard (Matches Image 1 style)
                Positioned(
                  top: 10,
                  right: 10,
                  child: _Leaderboard(snakes: sortedSnakes.take(10).toList()),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class _StatsCard extends StatelessWidget {
  final String emoji;
  final String label;
  final String value;
  final Color primary;
  final Color secondary;

  const _StatsCard({
    required this.emoji,
    required this.label,
    required this.value,
    required this.primary,
    required this.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primary.withAlpha(200), secondary.withAlpha(200)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white10),
        boxShadow: [
          BoxShadow(
            color: primary.withAlpha(50),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: primary.withAlpha(200),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Leaderboard extends StatelessWidget {
  final List<SnakeEntity> snakes;

  const _Leaderboard({required this.snakes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Leaderboard',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.black, blurRadius: 2)],
            ),
          ),
          const SizedBox(height: 4),
          ...snakes.asMap().entries.map((entry) {
            final index = entry.key;
            final snake = entry.value;
            final isLocal = snake.id == 'local_player';

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '#${index + 1} ',
                    style: TextStyle(
                      color: _getRankColor(index),
                      fontSize: 12,
                      fontWeight: isLocal ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      snake.name,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isLocal ? CatppuccinColors.mauve : Colors.white70,
                        fontSize: 12,
                        fontWeight: isLocal ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    snake.score.toString(),
                    style: TextStyle(
                      color: isLocal ? CatppuccinColors.mauve : Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Color _getRankColor(int index) {
    if (index == 0) return Colors.yellow;
    if (index == 1) return Colors.grey;
    if (index == 2) return Colors.brown;
    return Colors.white54;
  }
}

```

### `lib/ui/overlays/minimap_overlay.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/snake_provider.dart';
import '../../models/snake.dart';
import '../../utils/constants.dart';
import '../../utils/math_utils.dart';
import '../../game/slither_game.dart';

class MinimapOverlay extends ConsumerWidget {
  final SlitherGame game;
  const MinimapOverlay({super.key, required this.game});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double size = 150.0;

    return Positioned(
      bottom: 20,
      right: 20,
      child: RepaintBoundary(
        child: AnimatedBuilder(
          animation: game.uiUpdateNotifier,
          builder: (context, child) {
            final snakes = ref.read(snakeProvider);
            return Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [CatppuccinColors.crust, CatppuccinColors.mantle],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
                border: Border.all(color: CatppuccinColors.lavender.withAlpha(50), width: 2),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.asset(SlitherAssets.mapCrosshair, width: 20, height: 20),
                    ),
                  ),
                  CustomPaint(
                    size: const Size(size, size),
                    painter: _MinimapPainter(
                      snakes: snakes.values.toList(),
                      worldBounds: GameConstants.worldBounds,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _MinimapPainter extends CustomPainter {
  final List<SnakeEntity> snakes;
  final double worldBounds;

  _MinimapPainter({required this.snakes, required this.worldBounds});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final borderPaint = Paint()
      ..color = Colors.white24
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    canvas.drawCircle(center, radius, borderPaint);

    for (final snake in snakes) {
      if (snake.dead) continue;
      final isLocal = snake.id == 'local_player';

      final nx = map(snake.head.x, -worldBounds, worldBounds, 0, 1);
      final ny = map(snake.head.y, -worldBounds, worldBounds, 0, 1);

      final pos = Offset(nx * size.width, ny * size.height);

      final dotPaint = Paint()
        ..color = isLocal ? CatppuccinColors.mauve : Colors.white70;

      canvas.drawCircle(pos, isLocal ? 3.0 : 1.5, dotPaint);

      if (isLocal) {
        final glowPaint = Paint()
          ..color = dotPaint.color.withAlpha(50);
        canvas.drawCircle(pos, 5.0, glowPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _MinimapPainter oldDelegate) => true;
}

```

### `lib/ui/screens/game_screen.dart`

```dart
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../game/slither_game.dart';
import '../../utils/constants.dart';
import '../../providers/snake_provider.dart';
import '../overlays/hud_overlay.dart';
import '../overlays/minimap_overlay.dart';
import '../overlays/death_overlay.dart';
import '../overlays/alerts_overlay.dart';

class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({super.key});

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  late final SlitherGame _game;

  @override
  void initState() {
    super.initState();
    _game = SlitherGame(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget<SlitherGame>(
            game: _game,
            backgroundBuilder: (context) => Container(
              color: CatppuccinColors.crust,
            ),
            overlayBuilderMap: {
              'hud': (context, game) => HudOverlay(game: game),
              'minimap': (context, game) => MinimapOverlay(game: game),
              'alerts': (context, game) => const AlertsOverlay(),
              'death': (context, game) {
                final score = ref.read(snakeProvider)['local_player']?.score ?? 0;
                return DeathOverlay(
                  finalScore: score,
                  onRestart: () {
                    game.overlays.remove('death');
                    game.spawnPlayer();
                  },
                );
              },
            },
            initialActiveOverlays: const ['hud', 'minimap', 'alerts'],
          ),
        ],
      ),
    );
  }
}

```

### `lib/ui/screens/home_screen.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/player_provider.dart';
import '../../models/skin_presets.dart';
import '../../utils/constants.dart';
import '../../utils/audio_service.dart';
import 'game_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerData = ref.watch(playerProvider).value;

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [CatppuccinColors.base, CatppuccinColors.crust],
                radius: 1.5,
              ),
            ),
          ),

          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SLITHER',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10,
                    color: CatppuccinColors.mauve,
                    shadows: [
                      Shadow(color: CatppuccinColors.mauve, blurRadius: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                // Skin Carousel
                if (playerData != null)
                  _SkinCarousel(
                    currentSkin: playerData.skin,
                    ownedSkins: playerData.skins,
                    onSelect: (id) => ref.read(playerProvider.notifier).equipSkin(id),
                  ),

                const SizedBox(height: 60),

                // Play Button
                _MenuButton(
                  text: 'PLAY',
                  color: CatppuccinColors.green,
                  onPressed: () {
                    AudioService.play(SlitherSound.startGame);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const GameScreen()),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _MenuButton(
                  text: 'SPECTATE',
                  color: CatppuccinColors.blue,
                  onPressed: () {
                    AudioService.play(SlitherSound.navigate);
                    // TODO: Implement spectator mode
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SkinCarousel extends StatelessWidget {
  final String currentSkin;
  final List<String> ownedSkins;
  final Function(String) onSelect;

  const _SkinCarousel({
    required this.currentSkin,
    required this.ownedSkins,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: SkinPresets.allSkins.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          final skin = SkinPresets.allSkins[index];
          final isSelected = skin.id == currentSkin;

          return GestureDetector(
            onTap: () {
              AudioService.play(SlitherSound.navigate);
              onSelect(skin.id);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isSelected ? 100 : 80,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: (skin.primary ?? CatppuccinColors.mauve).withAlpha(50),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: isSelected ? (skin.primary ?? CatppuccinColors.mauve) : Colors.white10,
                  width: 3,
                ),
                boxShadow: isSelected ? [
                  BoxShadow(color: (skin.primary ?? CatppuccinColors.mauve).withAlpha(100), blurRadius: 10)
                ] : [],
              ),
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: skin.primary ?? CatppuccinColors.mauve,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const _MenuButton({
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: CatppuccinColors.crust,
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
        textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 8,
      ),
      child: Text(text),
    );
  }
}

```

### `lib/utils/audio_service.dart`

```dart
import 'package:flame_audio/flame_audio.dart';

enum SlitherSound {
  alertBad('alert_bad.ogg'),
  alertDismiss('alert_dismiss.ogg'),
  alertMoney('alert_money.ogg'),
  alertNeutral('alert_neutral.ogg'),
  boostStart('boost_start.ogg'),
  boostStop('boost_stop.ogg'),
  buttonDownAlt('button_down_alt.ogg'),
  buttonDown('button_down.ogg'),
  buttonUpAlt('button_up_alt.ogg'),
  buttonUp('button_up.ogg'),
  error1('error_1.ogg'),
  error2('error_2.ogg'),
  error3('error_3.ogg'),
  navigate('navigate.ogg'),
  startGame('start_game.ogg'),
  whoosh('whoosh.ogg');

  final String fileName;
  const SlitherSound(this.fileName);
}

class AudioService {
  static bool _initialized = false;

  static Future<void> init() async {
    if (_initialized) return;
    FlameAudio.audioCache.prefix = 'sounds/';
    await FlameAudio.audioCache.loadAll(
      SlitherSound.values.map((s) => s.fileName).toList(),
    );
    _initialized = true;
  }

  static void play(SlitherSound sound, {double volume = 1.0}) {
    if (!_initialized) return;
    FlameAudio.play(sound.fileName, volume: volume);
  }
}

```

### `lib/utils/constants.dart`

```dart
import 'package:flutter/material.dart';

class CatppuccinColors {
  // Ported from: src/shared/constants/palette.ts
  static const Color rosewater = Color(0xFFF5E0DC);
  static const Color flamingo = Color(0xFFF2CDCD);
  static const Color pink = Color(0xFFF5C2E7);
  static const Color mauve = Color(0xFFCBA6F7);
  static const Color red = Color(0xFFF38BA8);
  static const Color maroon = Color(0xFFEBA0AC);
  static const Color peach = Color(0xFFFAB387);
  static const Color yellow = Color(0xFFF9E2AF);
  static const Color green = Color(0xFFA6E3A1);
  static const Color teal = Color(0xFF94E2D5);
  static const Color sky = Color(0xFF89DCEB);
  static const Color sapphire = Color(0xFF74C7EC);
  static const Color blue = Color(0xFF89B4FA);
  static const Color lavender = Color(0xFFB4BEFE);
  static const Color text = Color(0xFFCDD6F4);
  static const Color subtext1 = Color(0xFFBAC2DE);
  static const Color subtext0 = Color(0xFFA6ADC8);
  static const Color overlay2 = Color(0xFF9399B2);
  static const Color overlay1 = Color(0xFF7F849C);
  static const Color overlay0 = Color(0xFF6C7086);
  static const Color surface2 = Color(0xFF585B70);
  static const Color surface1 = Color(0xFF45475A);
  static const Color surface0 = Color(0xFF313244);
  static const Color base = Color(0xFF1E1E2E);
  static const Color mantle = Color(0xFF181825);
  static const Color crust = Color(0xFF11111B);

  static const Color white = Color(0xFFFFFFFF);
  static const Color offwhite = Color(0xFFEAEEFD);
  static const Color black = Color(0xFF000000);
}

class GameConstants {
  static const double worldBounds = 4000.0;
  static const double worldTick = 0.05; // 20 Hz

  static const double snakeSpeed = 180.0;
  static const double snakeBoostSpeed = 350.0;

  static const int initialScore = 10;
  static const int boostScoreThreshold = 10;

  static const double candyTickPhase = 0.33 * worldTick;
  static const double collisionTickPhase = 0.66 * worldTick;

  static const Map<String, int> candyLimits = {
    'default': 2048,
    'dropping': 256,
    'loot': 256,
  };
}

class SlitherAssets {
  static const String mapCrosshair = 'assets/images/ui/map_crosshair.png';
  static const String mapCursor = 'assets/images/ui/map_cursor.png';
  static const String leaderPointer = 'assets/images/ui/leader_pointer.png';
  static const String snakeEyeLeft = 'assets/images/skins/snake_eye_left.png';
  static const String snakeEyeRight = 'assets/images/skins/snake_eye_right.png';
  static const String heart = 'assets/images/ui/heart.png';
  static const String heartGlow = 'assets/images/ui/heart_glow.png';
}

```

### `lib/utils/grid_spatial_hash.dart`

```dart
import 'package:flame/extensions.dart';

// Ported from: src/shared/utils/grid.ts

class GridPoint<T> {
  final Vector2 position;
  final T metadata;

  GridPoint({required this.position, required this.metadata});
}

class SpatialGrid<T> {
  final Map<int, Map<int, GridPoint<T>>> _cells = {};
  final double resolution;

  SpatialGrid(this.resolution);

  int _cellKeyXY(int x, int y) => (x << 20) ^ (y & 0xFFFFF);

  int _cellKey(Vector2 value) {
    final x = (value.x / resolution).floor();
    final y = (value.y / resolution).floor();
    return _cellKeyXY(x, y);
  }

  int _pointKey(Vector2 value) {
    final x = (value.x * 100).round();
    final y = (value.y * 100).round();
    return _cellKeyXY(x, y);
  }

  Vector2 _snapToGrid(Vector2 value) {
    return Vector2(
      (value.x / resolution).floorToDouble(),
      (value.y / resolution).floorToDouble(),
    );
  }

  void insert(Vector2 vector, T metadata) {
    final cellKey = _cellKey(vector);
    final pointKey = _pointKey(vector);
    final cell = _cells.putIfAbsent(cellKey, () => {});
    cell[pointKey] = GridPoint(position: vector, metadata: metadata);
  }

  void remove(Vector2 vector) {
    final cellKey = _cellKey(vector);
    final pointKey = _pointKey(vector);
    final cell = _cells[cellKey];
    if (cell == null) return;

    cell.remove(pointKey);
    if (cell.isEmpty) {
      _cells.remove(cellKey);
    }
  }

  void clear() {
    _cells.clear();
  }

  GridPoint<T>? nearest(Vector2 vector, double range, [bool Function(GridPoint<T>)? predicate]) {
    final cellsInRange = _getCellsInRange(vector, range);
    GridPoint<T>? nearestPoint;
    double nearestDistance = range;

    for (final cell in cellsInRange) {
      for (final point in cell.values) {
        final distance = vector.distanceTo(point.position);
        if (distance < nearestDistance && (predicate == null || predicate(point))) {
          nearestPoint = point;
          nearestDistance = distance;
        }
      }
    }
    return nearestPoint;
  }

  List<GridPoint<T>> allWithin(Vector2 vector, double range, [bool Function(GridPoint<T>)? predicate]) {
    final cellsInRange = _getCellsInRange(vector, range);
    final List<GridPoint<T>> points = [];

    for (final cell in cellsInRange) {
      for (final point in cell.values) {
        if (vector.distanceToSquared(point.position) <= range * range && (predicate == null || predicate(point))) {
          points.add(point);
        }
      }
    }
    return points;
  }

  List<GridPoint<T>> allWithinRect(Rect rect, [bool Function(GridPoint<T>)? predicate]) {
    final List<GridPoint<T>> points = [];
    
    final int minX = (rect.left / resolution).floor();
    final int maxX = (rect.right / resolution).ceil();
    final int minY = (rect.top / resolution).floor();
    final int maxY = (rect.bottom / resolution).ceil();

    final double l = rect.left;
    final double r = rect.right;
    final double t = rect.top;
    final double b = rect.bottom;

    for (int x = minX; x <= maxX; x++) {
      for (int y = minY; y <= maxY; y++) {
        final cellKey = _cellKeyXY(x, y);
        final cell = _cells[cellKey];
        if (cell != null) {
          for (final point in cell.values) {
            final px = point.position.x;
            final py = point.position.y;
            if (px >= l && px <= r && py >= t && py <= b) {
              if (predicate == null || predicate(point)) {
                points.add(point);
              }
            }
          }
        }
      }
    }
    return points;
  }

  List<Map<int, GridPoint<T>>> _getCellsInRange(Vector2 vector, double range) {
    final List<Map<int, GridPoint<T>>> cells = [];
    final snapped = _snapToGrid(vector);
    final intRange = (range / resolution).ceil();
    final int snappedX = snapped.x.toInt();
    final int snappedY = snapped.y.toInt();

    for (int i = -intRange; i <= intRange; i++) {
      for (int j = -intRange; j <= intRange; j++) {
        final cellKey = _cellKeyXY(snappedX + i, snappedY + j);
        final cell = _cells[cellKey];
        if (cell != null) {
          cells.add(cell);
        }
      }
    }
    return cells;
  }
}

```

### `lib/utils/math_utils.dart`

```dart
import 'dart:math' as math;
import 'package:flame/extensions.dart';

class Vector2Pool {
  static final List<Vector2> _pool = [];
  
  static Vector2 get(double x, double y) {
    if (_pool.isEmpty) return Vector2(x, y);
    return _pool.removeLast()..setValues(x, y);
  }
  
  static Vector2 from(Vector2 other) => get(other.x, other.y);
  
  static void release(Vector2 v) {
    if (_pool.length < 5000) _pool.add(v);
  }
}

double lerp(double a, double b, double t) {
  return a + (b - a) * t;
}

double lerpStrict(double a, double b, double t) {
  return lerp(a, b, t).clamp(math.min(a, b), math.max(a, b));
}

double map(double value, double min, double max, double newMin, double newMax) {
  if (min == max) return newMin;
  return lerp(newMin, newMax, (value - min) / (max - min));
}

double mapStrict(double value, double min, double max, double newMin, double newMax) {
  if (min == max) return newMin;
  return lerpStrict(newMin, newMax, (value - min) / (max - min));
}

double subtractRadians(double a, double b) {
  return math.atan2(math.sin(a - b), math.cos(a - b));
}

double addRadians(double a, double b) {
  return math.atan2(math.sin(a + b), math.cos(a + b));
}

double lerpRadians(double a, double b, double t) {
  return addRadians(a, subtractRadians(b, a) * t);
}

double turnRadians(double current, double target, double angle) {
  final difference = subtractRadians(target, current);
  final sign = difference.sign;
  final amount = math.min(difference.abs(), angle);
  return current + amount * sign;
}

```

