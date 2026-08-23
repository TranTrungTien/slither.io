import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/snake.dart';
import '../utils/constants.dart';
import '../utils/math_utils.dart';

// Ported from: src/shared/store/snakes/snake-slice.ts

class SnakeNotifier extends StateNotifier<Map<String, SnakeEntity>> {
  SnakeNotifier() : super({});

  void addSnake(String id, {String? name, Vector2? head, String? skin, int? score}) {
    state = {
      ...state,
      id: SnakeEntity(
        id: id,
        name: name ?? id,
        head: head ?? Vector2.zero(),
        angle: 0,
        desiredAngle: 0,
        score: score ?? GameConstants.initialScore,
        boost: false,
        tracers: [],
        skin: skin ?? 'default',
        dead: false,
        eliminations: 0,
      ),
    };
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
    state = {...state, id: snake.copyWith(score: snake.score + amount)};
  }

  void updateTick(double dt, {void Function(Vector2 position, int amount)? onBoostDrop}) {
    final newState = <String, SnakeEntity>{};
    const double tiny = 0.0001;

    state.forEach((id, snake) {
      if (snake.dead) {
        newState[id] = snake;
        return;
      }

      double currentBoostTimer = snake.boostTimer;
      int currentScore = snake.score;

      if (snake.isBoosting) {
        currentBoostTimer += dt;
        if (currentBoostTimer >= 0.15) {
          currentBoostTimer = 0.0;
          final int drain = (3 + 0.001 * currentScore).round().clamp(2, 10);
          currentScore = math.max(0, currentScore - drain);

          if (snake.tracers.isNotEmpty && onBoostDrop != null) {
            onBoostDrop(snake.tracers.last, drain);
          }
        }
      } else {
        currentBoostTimer = 0.0;
      }

      final description = snake.copyWith(score: currentScore).describe();
      final speed = snake.isBoosting ? GameConstants.snakeBoostSpeed : GameConstants.snakeSpeed;

      final angle = turnRadians(snake.angle, snake.desiredAngle, description.turnSpeed * dt);
      final direction = Vector2(math.cos(angle), math.sin(angle));
      final head = snake.head + (direction * (speed * dt));

      final int currentLength = snake.tracers.length;
      final int desiredLength = description.length.floor();
      Vector2 currentTail = head.clone();

      final List<Vector2> nextTracers = [];

      for (int i = 0; i < desiredLength; i++) {
        final Vector2 prev = i == 0 ? head : nextTracers[i - 1];

        final double spacing = map(
          i.toDouble(),
          0,
          math.max(1.0, currentLength.toDouble()),
          description.spacingAtHead,
          description.spacingAtTail,
        );

        final double alpha = ((dt * speed) / spacing).clamp(tiny, 1.0 - tiny);

        Vector2 nextTracerPos;
        if (i < currentLength) {
          final Vector2 currentInState = snake.tracers[i];
          // Break down lerp calls to avoid any potential compiler issues with chaining
          final Vector2 interpolated = currentInState.clone();
          interpolated.lerp(prev, alpha);

          if (i == desiredLength - 1) {
            final double stretch = math.max(description.length % 1, tiny);
            final Vector2 stretchTarget = currentTail.clone();
            stretchTarget.lerp(interpolated, stretch);
            nextTracerPos = stretchTarget;
          } else {
            final Vector2 followTarget = currentTail.clone();
            followTarget.lerp(interpolated, 1.0);
            nextTracerPos = followTarget;
          }
        } else {
          nextTracerPos = currentTail + Vector2(tiny * (i + 1), 0);
        }

        currentTail = nextTracerPos;
        nextTracers.add(currentTail.clone());
      }

      newState[id] = snake.copyWith(
        head: head,
        angle: angle,
        score: currentScore,
        boostTimer: currentBoostTimer,
        tracers: nextTracers,
      );
    });

    state = newState;
  }
}

final snakeProvider = StateNotifierProvider<SnakeNotifier, Map<String, SnakeEntity>>((ref) {
  return SnakeNotifier();
});
