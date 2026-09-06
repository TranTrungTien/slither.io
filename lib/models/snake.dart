import 'dart:math' as math;
import 'package:flame/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'snake.freezed.dart';
part 'snake.g.dart';

@freezed
class SnakeDescription with _$SnakeDescription {
  const factory SnakeDescription({
    required double length,
    required double radius,
    required double spacingAtHead,
    required double spacingAtTail,
    required double turnSpeed,
  }) = _SnakeDescription;
}

@freezed
class SnakeEntity with _$SnakeEntity {
  const SnakeEntity._();

  const factory SnakeEntity({
    required String id,
    required String name,
    @Vector2Converter() required Vector2 head,
    required double angle,
    required double desiredAngle,
    required int score,
    required bool boost,
    @Vector2Converter() required List<Vector2> tracers,
    required String skin,
    required bool dead,
    required int eliminations,
    @Default(0.0) double boostTimer,
    @Vector2Converter() Vector2? previousDropPosition,
    @JsonKey(includeFromJson: false, includeToJson: false) SnakeDescription? cachedDescription,
  }) = _SnakeEntity;

  factory SnakeEntity.fromJson(Map<String, dynamic> json) => _$SnakeEntityFromJson(json);

  bool get isBoosting => boost && score > 10;

  SnakeDescription describe() {
    if (cachedDescription != null) {
      return cachedDescription!;
    }

    // Slightly smaller base radius and more gradual scaling
    final radius = math.max(0.6 * (math.log(score / 150.0 + 2.0) / math.ln10), 0.4) * 50.0;
    
    // More linear length scaling for lower scores to make early growth feel better
    final double length = (120.0 * (math.log(score / 300.0 + 1.0) / math.ln10) + 15.0) * 4.0;
    
    return SnakeDescription(
      radius: radius,
      spacingAtHead: 0.12 * radius,
      spacingAtTail: 0.14 * radius,
      length: length,
      turnSpeed: (math.max(380.0 - 110.0 * (math.log(score / 180.0 + 1.0) / math.ln10), 55.0) * math.pi / 180.0),
    );
  }
}
