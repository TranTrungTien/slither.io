import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/candy.dart';
import '../utils/constants.dart';

// Ported from: src/shared/store/candy/candy-slice.ts

class CandyNotifier extends StateNotifier<Map<String, CandyEntity>> {
  CandyNotifier() : super({});

  void populateCandy(List<CandyEntity> candies) {
    final newState = Map<String, CandyEntity>.from(state);
    for (final candy in candies) {
      newState[candy.id] = candy;
    }
    state = newState;
  }

  void addCandy(CandyEntity candy) {
    state = {...state, candy.id: candy};
  }

  void removeCandy(String id) {
    final newState = Map<String, CandyEntity>.from(state);
    newState.remove(id);
    state = newState;
  }

  void setCandyEatenAt(String id, Vector2 eatenAt) {
    final candy = state[id];
    if (candy == null) return;
    state = {...state, id: candy.copyWith(eatenAt: eatenAt)};
  }

  void spawnRandomCandy(int amount) {
    final random = math.Random();
    final List<CandyEntity> newCandies = [];

    for (int i = 0; i < amount; i++) {
      final pos = Vector2(
        (random.nextDouble() * 2 - 1) * GameConstants.worldBounds,
        (random.nextDouble() * 2 - 1) * GameConstants.worldBounds,
      );

      // Basic circle check
      if (pos.length > GameConstants.worldBounds) {
        i--;
        continue;
      }

      newCandies.add(CandyEntity(
        id: 'candy_${DateTime.now().microsecondsSinceEpoch}_$i',
        size: random.nextInt(4) + 1,
        position: pos,
        color: CatppuccinColors.mauve, // Default or random from palette
        type: CandyType.defaultType,
      ));
    }
    populateCandy(newCandies);
  }
}

final candyProvider = StateNotifierProvider<CandyNotifier, Map<String, CandyEntity>>((ref) {
  return CandyNotifier();
});
