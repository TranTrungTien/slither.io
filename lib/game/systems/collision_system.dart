import '../../models/snake.dart';
import '../../models/candy.dart';
import '../../utils/constants.dart';
import '../../utils/grid_spatial_hash.dart';

// Ported from: src/server/world/services/collision/collision-tick.ts

class CollisionSystem {
  final SpatialGrid<String> snakeGrid = SpatialGrid(50.0);
  final SpatialGrid<String> candyGrid = SpatialGrid(50.0);

  void updateGrids(Map<String, SnakeEntity> snakes, Map<String, CandyEntity> candies) {
    snakeGrid.clear();
    for (final snake in snakes.values) {
      if (snake.dead) continue;

      snakeGrid.insert(snake.head, snake.id);
      for (final tracer in snake.tracers) {
        snakeGrid.insert(tracer, snake.id);
      }
    }

    candyGrid.clear();
    for (final candy in candies.values) {
      if (candy.eatenAt != null) continue;
      candyGrid.insert(candy.position, candy.id);
    }
  }

  void checkCollisions({
    required Map<String, SnakeEntity> snakes,
    required Map<String, CandyEntity> candies,
    required void Function(String candyId, String snakeId) onEatCandy,
    required void Function(String snakeId) onHitWall,
    required void Function(String victimId, String killerId) onSnakeCollision,
  }) {
    updateGrids(snakes, candies);

    final sortedSnakes = snakes.values.toList()..sort((a, b) => a.score.compareTo(b.score));

    for (final snake in sortedSnakes) {
      if (snake.dead) continue;

      final description = snake.describe();
      final radius = description.radius;

      if (snake.head.length + radius > GameConstants.worldBounds) {
        onHitWall(snake.id);
        continue;
      }

      // 1. Snake-to-Snake collision
      final nearestSnake = snakeGrid.nearest(snake.head, radius + 5.0, (point) {
        if (point.metadata == snake.id) {
          return snake.head.distanceTo(point.position) > radius * 2.5;
        }
        return true;
      });

      if (nearestSnake != null) {
        final enemy = snakes[nearestSnake.metadata];
        if (enemy != null && !enemy.dead) {
          final enemyRadius = enemy.describe().radius;
          final distance = snake.head.distanceTo(nearestSnake.position);

          if (distance <= 0.8 * (radius + enemyRadius)) {
            onSnakeCollision(snake.id, enemy.id);
            continue;
          }
        }
      }

      // 2. Snake-to-Candy collision (Optimized with Spatial Grid)
      final eatRange = radius * 1.5 + 10.0;
      final nearbyCandies = candyGrid.allWithin(snake.head, eatRange);

      for (final candyPoint in nearbyCandies) {
        onEatCandy(candyPoint.metadata, snake.id);
      }
    }
  }
}
