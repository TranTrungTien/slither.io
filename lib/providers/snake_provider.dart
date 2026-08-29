import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/snake.dart';
import '../utils/constants.dart';
import '../utils/math_utils.dart';

// Ported from: src/shared/store/snakes/snake-slice.ts

class SnakeNotifier extends ChangeNotifier {
  Map<String, SnakeEntity> _snakes = {};

  Map<String, SnakeEntity> get snakes => _snakes;

  void addSnake(String id, {String? name, Vector2? head, String? skin, int? score}) {
    final headPos = head ?? Vector2.zero();
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
      previousDropPosition: headPos,
    );

    _snakes = {..._snakes, id: newSnake};
    notifyListeners();
  }

  void turnSnake(String id, double desiredAngle) {
    final snake = _snakes[id];
    if (snake == null) return;
    snake.desiredAngle = desiredAngle;
    notifyListeners();
  }

  void boostSnake(String id, bool boost) {
    final snake = _snakes[id];
    if (snake == null) return;
    snake.boost = boost;
    notifyListeners();
  }

  void killSnake(String id) {
    final snake = _snakes[id];
    if (snake == null) return;
    snake.dead = true;
    notifyListeners();
  }

  void removeSnake(String id) {
    _snakes.remove(id);
    notifyListeners();
  }

  void incrementScore(String id, int amount) {
    final snake = _snakes[id];
    if (snake == null) return;
    snake.score = math.max(0, snake.score + amount);
    notifyListeners();
  }

  void incrementEliminations(String id) {
    final snake = _snakes[id];
    if (snake == null) return;
    snake.eliminations += 1;
    notifyListeners();
  }

  void updateTick(double dt, {void Function(Vector2 position, int amount)? onBoostDrop}) {
    const double tiny = 0.0001;

    for (final entry in _snakes.entries) {
      final snake = entry.value;
      if (snake.dead) continue;

      double currentBoostTimer = snake.boostTimer;
      int currentScore = snake.score;
      Vector2 previousDropPosition = snake.previousDropPosition ?? snake.head;

      if (snake.isBoosting) {
        currentBoostTimer += dt;
        if (currentBoostTimer >= 0.15) {
          currentBoostTimer = 0.0;
          final int maxDecrease = (3 + 0.001 * currentScore).round().clamp(2, 10);
          final int drain = math.Random().nextInt(maxDecrease) + 1;
          currentScore = math.max(0, currentScore - drain);

          final description = snake.describe();
          final tail = snake.tracers.isNotEmpty ? snake.tracers.last : null;

          if (tail != null && onBoostDrop != null) {
            if (tail.distanceTo(previousDropPosition) > description.radius * 2) {
              previousDropPosition = tail.clone();
              onBoostDrop(tail, drain);
            }
          }
        }
      } else {
        currentBoostTimer = 0.0;
      }

      final description = snake.describe();
      final speed = snake.isBoosting ? GameConstants.snakeBoostSpeed : GameConstants.snakeSpeed;
      final angle = turnRadians(snake.angle, snake.desiredAngle, description.turnSpeed * dt);
      final direction = Vector2(math.cos(angle), math.sin(angle));
      final nextHead = snake.head + (direction * (speed * dt));

      snake.head.setFrom(nextHead);
      snake.angle = angle;
      snake.score = currentScore;
      snake.boostTimer = currentBoostTimer;
      snake.previousDropPosition = previousDropPosition;

      final tracers = snake.tracers;
      final int currentLength = tracers.length;
      final int desiredLength = description.length.floor();
      final Vector2 temp = Vector2.zero();
      final Vector2 tailVar = Vector2.zero();

      while (tracers.length > desiredLength) {
        tracers.removeLast();
      }
      while (tracers.length < desiredLength) {
        tracers.add(Vector2.zero());
      }

      for (int i = 0; i < desiredLength; i++) {
        final Vector2 tracer = tracers[i];
        final Vector2 previous = i == 0 ? snake.head : tracers[i - 1];

        final double spacing = map(
          i.toDouble(),
          0,
          math.max(1.0, currentLength.toDouble()),
          description.spacingAtHead,
          description.spacingAtTail,
        );

        final double alpha = ((dt * speed) / spacing).clamp(tiny, 1.0 - tiny);

        if (i == desiredLength - 1) {
          final double stretch = math.max(description.length % 1, tiny);
          temp.setFrom(tracer);
          temp.lerp(previous, alpha);
          tailVar.setFrom(temp);
          tailVar.lerp(previous, stretch);
          tracer.setFrom(tailVar);
        } else {
          temp.setFrom(tracer);
          temp.lerp(previous, alpha);
          tracer.setFrom(temp);
        }
      }
    }

    notifyListeners();
  }
}

final snakeProvider = ChangeNotifierProvider<SnakeNotifier>((ref) {
  return SnakeNotifier();
});
