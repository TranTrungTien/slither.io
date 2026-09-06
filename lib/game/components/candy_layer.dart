import 'dart:ui' as ui;
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/candy.dart';
import '../systems/collision_system.dart';
import '../slither_game.dart';

class CandyLayer extends Component with HasGameReference<SlitherGame> {
  final CollisionSystem collisionSystem;
  Map<String, CandyEntity> _candies = {};

  CandyLayer(this.collisionSystem);

  void updateCandies(Map<String, CandyEntity> newCandies) {
    _candies = newCandies;
  }

  static final Paint _paint = Paint()..style = ui.PaintingStyle.fill;
  static final Paint _highlightPaint = Paint()..color = Colors.white.withAlpha(80);
  static final Paint _glowPaint = Paint()..maskFilter = const MaskFilter.blur(BlurStyle.normal, 6.0);

  @override
  void render(Canvas canvas) {
    if (_candies.isEmpty) return;
    
    final viewport = game.camera.visibleWorldRect;
    final visiblePoints = collisionSystem.candyGrid.allWithinRect(viewport);
    
    if (visiblePoints.isEmpty) return;

    for (final point in visiblePoints) {
      final candy = _candies[point.metadata];
      if (candy == null || candy.eatenAt != null) continue;

      final double px = candy.position.x;
      final double py = candy.position.y;
      final double radius = 3.5 + (candy.size * 1.2);
      
      _paint.color = candy.color;
      _glowPaint.color = candy.color.withAlpha(40);
      
      final center = Offset(px, py);
      canvas.drawCircle(center, radius * 1.4, _glowPaint);
      canvas.drawCircle(center, radius, _paint);
      
      canvas.drawCircle(
        Offset(px - radius * 0.3, py - radius * 0.3),
        radius * 0.25,
        _highlightPaint,
      );
    }
  }
}
