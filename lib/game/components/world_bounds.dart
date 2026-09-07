import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class WorldBounds extends Component {
  static final Paint _borderPaint = Paint()
    ..color = CatppuccinColors.overlay0.withAlpha(50)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 5.0;

  static final Paint _dangerPaint = Paint()
    ..color = CatppuccinColors.red.withAlpha(30)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0;

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset.zero, GameConstants.worldBounds, _borderPaint);

    // Draw a "danger" zone border
    canvas.drawCircle(
      Offset.zero,
      GameConstants.worldBounds + 50,
      _dangerPaint,
    );
  }
}
