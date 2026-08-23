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
  double _timer = 0;

  BotAI(this.id) : seed = math.Random().nextDouble() * 255;

  void update(
    double dt,
    SnakeEntity snake,
    Map<String, SnakeEntity> snakes,
    Map<String, CandyEntity> candies,
    SpatialGrid<String> snakeGrid,
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
        _scavenge(snake, candies, onTurn);
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

    final random = math.Random();
    final range = random.nextDouble() > 0.2 ? 20.0 : 180.0;
    final turnAmount = (random.nextDouble() * 2 - 1) * range * (math.pi / 180.0);
    onTurn(id, snake.angle + turnAmount);
  }

  void _scavenge(SnakeEntity snake, Map<String, CandyEntity> candies, void Function(String id, double angle) onTurn) {
    CandyEntity? target;
    double minDistance = 150.0;

    for (final candy in candies.values) {
      if (candy.eatenAt != null) continue;
      final dist = snake.head.distanceTo(candy.position);
      if (dist < minDistance) {
        minDistance = dist;
        target = candy;
      }
    }

    if (target == null) {
      _idle(snake, onTurn);
      return;
    }

    final angle = math.atan2(target.position.y - snake.head.y, target.position.x - snake.head.x);
    onTurn(id, angle);
  }

  void _flee(SnakeEntity snake, Vector2 enemyDirection, void Function(String id, double angle) onTurn) {
    final random = math.Random();
    final angle = math.atan2(enemyDirection.y, enemyDirection.x) + math.pi + (random.nextDouble() * 2 - 1) * 0.17;
    onTurn(id, angle);
  }

  Vector2? _directionToNearestEnemy(SnakeEntity snake, Map<String, SnakeEntity> snakes, SpatialGrid<String> snakeGrid) {
    final description = snake.describe();
    final radius = description.radius * 10;

    final nearestPoint = snakeGrid.nearest(snake.head, radius * 10 + 30, (point) {
      return point.metadata != snake.id;
    });

    if (nearestPoint == null) return null;

    final enemy = snakes[nearestPoint.metadata];
    if (enemy == null || enemy.dead) return null;

    final direction = nearestPoint.position - snake.head;
    final enemyRadius = enemy.describe().radius * 10;

    if (direction.length <= 5 * (radius + enemyRadius)) {
      return direction.normalized();
    }
    return null;
  }

  BehaviorMode _getBehavior() {
    final random = math.Random();
    if (random.nextDouble() > 0.7) {
      return BehaviorMode.scavenging;
    }
    return BehaviorMode.idle;
  }
}
