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
      final double angle = random.nextDouble() * 2 * math.pi;
      final double dist =
          math.sqrt(random.nextDouble()) * GameConstants.worldBounds;

      final pos = Vector2(math.cos(angle) * dist, math.sin(angle) * dist);

      newCandies.add(
        CandyEntity(
          id: 'candy_${DateTime.now().microsecondsSinceEpoch}_$i',
          size: random.nextInt(5) + 1,
          position: pos,
          color: _getRandomColor(random),
          type: CandyType.defaultType,
        ),
      );
    }
    populateCandy(newCandies);
  }

  Color _getRandomColor(math.Random random) {
    const colors = [
      CatppuccinColors.mauve,
      CatppuccinColors.blue,
      CatppuccinColors.green,
      CatppuccinColors.red,
      CatppuccinColors.peach,
      CatppuccinColors.yellow,
      CatppuccinColors.sapphire,
      CatppuccinColors.flamingo,
      CatppuccinColors.pink,
    ];
    return colors[random.nextInt(colors.length)];
  }
}

final candyProvider =
    StateNotifierProvider<CandyNotifier, Map<String, CandyEntity>>((ref) {
      return CandyNotifier();
    });
