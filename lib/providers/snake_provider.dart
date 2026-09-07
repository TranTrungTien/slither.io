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
