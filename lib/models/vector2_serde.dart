import 'package:flame/extensions.dart';
import 'package:json_annotation/json_annotation.dart';

class Vector2Converter implements JsonConverter<Vector2, Map<String, dynamic>> {
  const Vector2Converter();

  @override
  Vector2 fromJson(Map<String, dynamic> json) {
    return Vector2(
      (json['x'] as num).toDouble(),
      (json['y'] as num).toDouble(),
    );
  }

  @override
  Map<String, dynamic> toJson(Vector2 object) {
    return {
      'x': object.x,
      'y': object.y,
    };
  }
}

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color object) => object.toARGB32();
}
