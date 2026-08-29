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

    state = {
      ...state,
      id: newSnake,
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
    state = {...state, id: snake.copyWith(score: math.max(0, snake.score + amount))};
  }

  void incrementEliminations(String id) {
    final snake = state[id];
    if (snake == null) return;
    state = {...state, id: snake.copyWith(eliminations: snake.eliminations + 1)};
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
      Vector2 previousDropPosition = snake.previousDropPosition ?? snake.head;

      if (snake.isBoosting) {
        currentBoostTimer += dt;
        if (currentBoostTimer >= 0.15) {
          currentBoostTimer = 0.0;
          final int maxDecrease = (3 + 0.001 * currentScore).round().clamp(2, 10);
          final int drain = math.Random().nextInt(maxDecrease) + 1;
          currentScore = math.max(0, currentScore - drain);

          final description = snake.copyWith(score: currentScore).describe();
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

      final description = snake.copyWith(score: currentScore).describe();
      final speed = snake.isBoosting ? GameConstants.snakeBoostSpeed : GameConstants.snakeSpeed;

      final angle = turnRadians(snake.angle, snake.desiredAngle, description.turnSpeed * dt);
      final direction = Vector2(math.cos(angle), math.sin(angle));
      final head = snake.head + (direction * (speed * dt));

      final int currentLength = snake.tracers.length;
      final int desiredLength = description.length.floor();
      Vector2 tailVar = head.clone();

      final List<Vector2> nextTracers = [];

      for (int i = 0; i < desiredLength; i++) {
        if (i < currentLength) {
          final Vector2 tracer = snake.tracers[i];
          final Vector2 previous = i == 0 ? snake.head : snake.tracers[i - 1];

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
            final Vector2 lerped = tracer.clone()..lerp(previous, alpha);
            tailVar = tailVar.clone()..lerp(lerped, stretch);
          } else {
            tailVar = tracer.clone()..lerp(previous, alpha);
          }
          nextTracers.add(tailVar.clone());
        }
      }

      if (currentLength < desiredLength) {
        for (int i = currentLength; i < desiredLength; i++) {
          final Vector2 newTracer = tailVar + Vector2(tiny * (i + 1), 0);
          nextTracers.add(newTracer);
        }
      }

      newState[id] = snake.copyWith(
        head: head,
        angle: angle,
        score: currentScore,
        boostTimer: currentBoostTimer,
        previousDropPosition: previousDropPosition,
        tracers: nextTracers,
      );
    });

    state = newState;
  }
}

final snakeProvider = StateNotifierProvider<SnakeNotifier, Map<String, SnakeEntity>>((ref) {
  return SnakeNotifier();
});
