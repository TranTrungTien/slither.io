import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class WorldBounds extends Component {
  @override
  void render(Canvas canvas) {
    final paint = Paint()
      ..color = CatppuccinColors.overlay0.withAlpha(50)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    canvas.drawCircle(Offset.zero, GameConstants.worldBounds, paint);

    // Draw a "danger" zone border
    final dangerPaint = Paint()
      ..color = CatppuccinColors.red.withAlpha(30)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    canvas.drawCircle(Offset.zero, GameConstants.worldBounds + 50, dangerPaint);
  }
}
