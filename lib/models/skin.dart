import 'package:flame/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'skin.freezed.dart';
part 'skin.g.dart';

@freezed
class SnakeSkin with _$SnakeSkin {
  const factory SnakeSkin({
    required String id,
    @ColorConverter() Color? primary,
    @ColorConverter() Color? secondary,
    @ColorConverter() required List<Color> tint,
    @ColorConverter() List<Color>? boostTint,
    required List<String> texture,
    @Vector2Converter() required Vector2 size,
    required int price,
  }) = _SnakeSkin;

  factory SnakeSkin.fromJson(Map<String, dynamic> json) => _$SnakeSkinFromJson(json);
}
