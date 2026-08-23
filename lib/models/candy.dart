import 'package:flame/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'candy.freezed.dart';
part 'candy.g.dart';

enum CandyType {
  defaultType,
  loot,
  dropping,
}

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color object) => object.toARGB32();
}

@freezed
class CandyEntity with _$CandyEntity {
  const factory CandyEntity({
    required String id,
    required int size,
    @Vector2Converter() required Vector2 position,
    @ColorConverter() required Color color,
    required CandyType type,
    @Vector2Converter() Vector2? eatenAt,
  }) = _CandyEntity;

  factory CandyEntity.fromJson(Map<String, dynamic> json) => _$CandyEntityFromJson(json);
}
