import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/player_data.dart';

// Ported from: src/shared/store/saves/save-slice.ts

class PlayerNotifier extends AsyncNotifier<PlayerData> {
  static const String boxName = 'player_data';
  Box? _box;

  @override
  Future<PlayerData> build() async {
    _box ??= await Hive.openBox(boxName);
    final data = _box!.get('current');
    if (data != null) {
      return PlayerData.fromJson(Map<String, dynamic>.from(data));
    }
    return PlayerData.initial();
  }

  Future<void> updateBalance(int amount) async {
    final current = state.value;
    if (current == null) return;

    final newState = current.copyWith(balance: current.balance + amount);
    state = AsyncData(newState);
    await _save(newState);
  }

  Future<void> buySkin(String skinId, int price) async {
    final current = state.value;
    if (current == null) return;
    if (current.balance < price) return;

    final newState = current.copyWith(
      balance: current.balance - price,
      skins: [...current.skins, skinId],
    );
    state = AsyncData(newState);
    await _save(newState);
  }

  Future<void> equipSkin(String skinId) async {
    final current = state.value;
    if (current == null) return;
    if (!current.skins.contains(skinId)) return;

    final newState = current.copyWith(skin: skinId);
    state = AsyncData(newState);
    await _save(newState);
  }

  Future<void> _save(PlayerData data) async {
    _box ??= await Hive.openBox(boxName);
    await _box!.put('current', data.toJson());
  }
}

final playerProvider = AsyncNotifierProvider<PlayerNotifier, PlayerData>(() {
  return PlayerNotifier();
});
