import '../../models/snake.dart';
import '../../models/candy.dart';
import '../../utils/constants.dart';
import '../../utils/grid_spatial_hash.dart';

// Ported from: src/server/world/services/collision/collision-tick.ts

class CollisionSystem {
  final SpatialGrid<String> snakeGrid = SpatialGrid(50.0);

  void updateSnakeGrid(Map<String, SnakeEntity> snakes) {
    snakeGrid.clear();
    for (final snake in snakes.values) {
      if (snake.dead) continue;

      snakeGrid.insert(snake.head, snake.id);
      for (final tracer in snake.tracers) {
        snakeGrid.insert(tracer, snake.id);
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

    final sortedSnakes = snakes.values.toList()..sort((a, b) => b.score.compareTo(a.score));

    for (final snake in sortedSnakes) {
      if (snake.dead) continue;

      final description = snake.describe();
      final radius = description.radius * 10;

      if (snake.head.length + description.radius > GameConstants.worldBounds) {
        onHitWall(snake.id);
        continue;
      }

      final nearest = snakeGrid.nearest(snake.head, radius + 5.0, (point) {
        if (point.metadata == snake.id) {
          return snake.head.distanceTo(point.position) > radius * 2.5;
        }
        return true;
      });

      if (nearest != null) {
        final enemy = snakes[nearest.metadata];
        if (enemy != null && !enemy.dead) {
          final enemyRadius = enemy.describe().radius * 10;
          final distance = snake.head.distanceTo(nearest.position);

          if (distance <= 0.8 * (radius + enemyRadius)) {
            onSnakeCollision(snake.id, enemy.id);
            continue;
          }
        }
      }

      for (final candy in candies.values) {
        if (candy.eatenAt != null) continue;

        final eatRange = radius * 1.25 + 5.0;
        if (snake.head.distanceTo(candy.position) < eatRange) {
          onEatCandy(candy.id, snake.id);
        }
      }
    }
  }
}
