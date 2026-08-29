import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'vector2_serde.dart';

part 'alert.freezed.dart';
part 'alert.g.dart';

enum AlertScope { money, ranking }

@freezed
class AlertEntity with _$AlertEntity {
  const factory AlertEntity({
    required int id,
    required String emoji,
    required String message,
    @ColorConverter() required Color color,
    required double duration,
    required bool visible,
    AlertScope? scope,
  }) = _AlertEntity;

  factory AlertEntity.fromJson(Map<String, dynamic> json) => _$AlertEntityFromJson(json);
}
