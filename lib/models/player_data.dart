import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_data.freezed.dart';
part 'player_data.g.dart';

@freezed
class PlayerData with _$PlayerData {
  const factory PlayerData({
    required int balance,
    required List<String> skins,
    required String skin,
  }) = _PlayerData;

  factory PlayerData.fromJson(Map<String, dynamic> json) => _$PlayerDataFromJson(json);

  static const String randomSkin = "__random__";

  factory PlayerData.initial() => const PlayerData(
    balance: 100,
    skins: [randomSkin, 'default'],
    skin: randomSkin,
  );
}
