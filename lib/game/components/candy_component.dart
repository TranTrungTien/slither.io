import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/candy.dart';

class CandyComponent extends PositionComponent {
  final String id;
  CandyEntity? _entity;

  static final Paint _paint = Paint();
  static final Paint _highlightPaint = Paint()..color = Colors.white.withAlpha(80);

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

    final center = Offset(size.x / 2, size.y / 2);
    final radius = size.x / 2;

    _paint.color = entity.color;
    canvas.drawCircle(center, radius, _paint);

    if (entity.size > 3) {
      canvas.drawCircle(
        Offset(size.x * 0.35, size.y * 0.35),
        radius * 0.2,
        _highlightPaint,
      );
    }
  }
}
