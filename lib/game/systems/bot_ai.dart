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
