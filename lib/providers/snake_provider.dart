import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:flutter/foundation.dart';
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
    final headPos = head ?? Vector2.zero();
    final newSnake = SnakeEntity(
      id: id,
      name: name ?? id,
      head: headPos.clone(),
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
    state = {...state, id: snake.copyWith(score: math.max(0, snake.score + amount))};
  }

  void incrementEliminations(String id) {
    final snake = state[id];
    if (snake == null) return;
    state = {...state, id: snake.copyWith(eliminations: snake.eliminations + 1)};
  }

  void updateTick(double dt, {void Function(Vector2 position, int amount)? onBoostDrop}) {
    const double tiny = 0.0001;
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
            if (tail.distanceTo(previousDropPosition) > description.radius * 2) {
              previousDropPosition = tail.clone();
              onBoostDrop(tail, drain);
            }
          }
        }
      } else {
        currentBoostTimer = 0.0;
      }

      // Bug 2 Fix: Invalidate description cache if score changed
      if (currentScore != snake.score) {
        snake = snake.copyWith(score: currentScore, cachedDescription: null);
      }

      final description = snake.describe();
      final speed = snake.isBoosting ? GameConstants.snakeBoostSpeed : GameConstants.snakeSpeed;
      final angle = turnRadians(snake.angle, snake.desiredAngle, description.turnSpeed * dt);
      final direction = Vector2(math.cos(angle), math.sin(angle));
      final nextHead = snake.head + (direction * (speed * dt));

      final List<Vector2> tracers = List.from(snake.tracers);
      final int desiredLength = description.length.floor();
      final Vector2 temp = Vector2.zero();
      final Vector2 tailVar = Vector2.zero();

      while (tracers.length > desiredLength) {
        tracers.removeLast();
      }

      // Bug 1 Fix: Spawn at last tracer or head
      final Vector2 spawnPoint = tracers.isNotEmpty ? tracers.last.clone() : snake.head.clone();
      while (tracers.length < desiredLength) {
        tracers.add(spawnPoint.clone());
      }

      for (int i = 0; i < desiredLength; i++) {
        final Vector2 tracer = tracers[i].clone(); // Clone to update
        final Vector2 previous = i == 0 ? nextHead : tracers[i - 1];

        // Bug 2 Fix: Use desiredLength - 1 as denominator
        final double spacing = map(
          i.toDouble(),
          0,
          math.max(1.0, (desiredLength - 1).toDouble()),
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
          tracers[i] = tailVar.clone();
        } else {
          temp.setFrom(tracer);
          temp.lerp(previous, alpha);
          tracers[i] = temp.clone();
        }
      }

      nextState[entry.key] = snake.copyWith(
        head: nextHead,
        angle: angle,
        boostTimer: currentBoostTimer,
        previousDropPosition: previousDropPosition,
        tracers: tracers,
        cachedDescription: description, // Cache for current frame
      );
    }

    state = nextState;
  }
}

final snakeProvider = NotifierProvider<SnakeNotifier, Map<String, SnakeEntity>>(() {
  return SnakeNotifier();
});
