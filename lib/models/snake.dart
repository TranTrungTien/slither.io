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
  }) = _SnakeEntity;

  factory SnakeEntity.fromJson(Map<String, dynamic> json) => _$SnakeEntityFromJson(json);

  bool get isBoosting => boost && score > 10;

  SnakeDescription describe() {
    // Ported from: src/shared/store/snakes/snake-utils.ts
    final radius = math.max(0.7 * (math.log(score / 300.0 + 2.0) / math.ln10), 0.5);

    return SnakeDescription(
      radius: radius,
      spacingAtHead: math.max(0.75 * radius, 0.5),
      spacingAtTail: 2.5 * radius,
      length: 64.0 * (math.log(score / 256.0 + 1.0) / math.ln10) + 3.0,
      turnSpeed: (math.max(360.0 - 100.0 * (math.log(score / 150.0 + 1.0) / math.ln10), 45.0) * math.pi / 180.0),
    );
  }
}
