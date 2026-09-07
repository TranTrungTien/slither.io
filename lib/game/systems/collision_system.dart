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
      final nearestEnemy = snakeGrid.nearest(snake.head, radius + 15.0, (
        point,
      ) {
        if (point.metadata == snake.id) {
          // Self collision only if far from head
          final dx = snake.head.x - point.position.x;
          final dy = snake.head.y - point.position.y;
          return (dx * dx + dy * dy) >
              (radius * radius * 12.0); // 3.5 * radius approx
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
      candyGrid.forEachWithin(snake.head, eatRange, (candyPoint) {
        onEatCandy(candyPoint.metadata, snake.id);
      });
    }
  }
}
