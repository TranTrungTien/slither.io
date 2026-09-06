import 'dart:math' as math;
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class BackgroundGrid extends Component with HasGameReference {
  static final Paint _gridPaint = Paint()
    ..color = CatppuccinColors.surface0.withAlpha(60)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.5;

  static Path? _hexagonPath;

  static Path _getHexagonPath(double radius) {
    if (_hexagonPath != null) return _hexagonPath!;
    
    final Path path = Path();
    for (int i = 0; i < 6; i++) {
      double angle = (math.pi / 180) * (60 * i - 30);
      double x = radius * math.cos(angle);
      double y = radius * math.sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    _hexagonPath = path;
    return path;
  }

  @override
  void render(Canvas canvas) {
    final viewport = game.camera.visibleWorldRect;
    
    const double radius = 60.0;
    final double width = math.sqrt(3) * radius;
    final double height = 2 * radius;
    final double horizontalSpacing = width;
    final double verticalSpacing = height * 0.75;

    final int startCol = (viewport.left / horizontalSpacing).floor() - 1;
    final int endCol = (viewport.right / horizontalSpacing).ceil() + 1;
    final int startRow = (viewport.top / verticalSpacing).floor() - 1;
    final int endRow = (viewport.bottom / verticalSpacing).ceil() + 1;

    final Path path = _getHexagonPath(radius * 0.95);

    for (int row = startRow; row <= endRow; row++) {
      final double rowY = row * verticalSpacing;
      final bool isOdd = row % 2 != 0;
      
      for (int col = startCol; col <= endCol; col++) {
        double x = col * horizontalSpacing;
        if (isOdd) {
          x += horizontalSpacing / 2;
        }
        
        canvas.save();
        canvas.translate(x, rowY);
        canvas.drawPath(path, _gridPaint);
        canvas.restore();
      }
    }
  }
}
