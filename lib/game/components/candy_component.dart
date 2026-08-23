import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/candy.dart';

class CandyComponent extends PositionComponent {
  final String id;
  CandyEntity? _entity;

  CandyComponent(this.id);

  void updateEntity(CandyEntity entity) {
    _entity = entity;
    position = entity.position;
    size = Vector2.all(entity.size * 4.0);
    anchor = Anchor.center;
  }

  @override
  void render(Canvas canvas) {
    final entity = _entity;
    if (entity == null || entity.eatenAt != null) return;

    final paint = Paint()..color = entity.color;
    canvas.drawCircle(Offset(size.x / 2, size.y / 2), size.x / 2, paint);

    final highlightPaint = Paint()..color = Colors.white.withAlpha(120);
    canvas.drawCircle(Offset(size.x * 0.35, size.y * 0.35), size.x * 0.2, highlightPaint);

    final glowPaint = Paint()
      ..color = entity.color.withAlpha(80)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5.0);
    canvas.drawCircle(Offset(size.x / 2, size.y / 2), size.x * 0.8, glowPaint);
  }
}
