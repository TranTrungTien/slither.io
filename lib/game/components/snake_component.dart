import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/snake.dart';
import '../../models/skin_presets.dart';
import '../../utils/constants.dart';

class SnakeComponent extends Component {
  final String id;
  SnakeEntity? _entity;

  static final Paint _bodyPaint = Paint()..strokeCap = StrokeCap.round;
  static final Paint _headPaint = Paint();
  static final Paint _eyePaint = Paint()..color = Colors.white;
  static final Paint _pupilPaint = Paint()..color = Colors.black;
  static final Paint _boostPaint = Paint();
  static final Paint _shadowPaint = Paint()..strokeCap = StrokeCap.round;
  static final Paint _highlightPaint = Paint()..strokeCap = StrokeCap.round;
  static final Paint _headGlowPaint = Paint();

  final Float32List _pointBuffer = Float32List(2048 * 2);
  final Float32List _highlightBuffer = Float32List(2048 * 2);
  int _pointCount = 0;

  SnakeComponent(this.id);

  void updateEntity(SnakeEntity entity) {
    _entity = entity;
  }

  @override
  void render(Canvas canvas) {
    final entity = _entity;
    if (entity == null || entity.dead) return;

    final description = entity.describe();
    final radius = description.radius;
    final skin = SkinPresets.getById(entity.skin);
    final primaryColor = skin.primary ?? CatppuccinColors.mauve;

    _bodyPaint.color = primaryColor;
    _bodyPaint.strokeWidth = radius * 2.1; 
    _headPaint.color = primaryColor;

    // LOD Optimization
    final double spacing = description.spacingAtHead;
    final int renderStep = math.max(1, (radius * 0.8 / spacing).floor());
    
    _pointCount = 0;

    for (int i = entity.tracers.length - 1; i >= 0; i -= renderStep) {
      if (_pointCount >= 1024) break;
      final pos = entity.tracers[i];
      _pointBuffer[_pointCount * 2] = pos.x;
      _pointBuffer[_pointCount * 2 + 1] = pos.y;
      
      // Pre-calculate highlight offset to avoid loop inside drawing
      _highlightBuffer[_pointCount * 2] = pos.x - radius * 0.2;
      _highlightBuffer[_pointCount * 2 + 1] = pos.y - radius * 0.2;

      _pointCount++;
    }

    if (_pointCount > 0) {
      final points = Float32List.sublistView(_pointBuffer, 0, _pointCount * 2);
      
      _shadowPaint.color = Colors.black.withAlpha(30);
      _shadowPaint.strokeWidth = radius * 2.3;
      canvas.drawRawPoints(ui.PointMode.points, points, _shadowPaint);

      canvas.drawRawPoints(ui.PointMode.points, points, _bodyPaint);
      
      if (entity.id == 'local_player' || radius > 40) {
        _highlightPaint.color = Colors.white.withAlpha(25);
        _highlightPaint.strokeWidth = radius * 0.9;
        canvas.drawRawPoints(
          ui.PointMode.points, 
          Float32List.sublistView(_highlightBuffer, 0, _pointCount * 2), 
          _highlightPaint
        );
      }
    }

    final headPos = Offset(entity.head.x, entity.head.y);
    
    _headGlowPaint.color = primaryColor.withAlpha(60);
    _headGlowPaint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 15.0);
    canvas.drawCircle(headPos, radius * 2.0, _headGlowPaint);

    canvas.drawCircle(headPos, radius * 1.2, _headPaint);

    if (entity.isBoosting) {
      _boostPaint.color = primaryColor.withAlpha(80);
      canvas.drawCircle(headPos, radius * 1.6, _boostPaint);
    }

    final angle = entity.angle;
    final cosA = math.cos(angle);
    final sinA = math.sin(angle);
    
    final fx = cosA * radius * 0.7;
    final fy = sinA * radius * 0.7;
    final rx = -sinA * radius * 0.55;
    final ry = cosA * radius * 0.55;

    final leftEyeX = entity.head.x + fx + rx;
    final leftEyeY = entity.head.y + fy + ry;
    final rightEyeX = entity.head.x + fx - rx;
    final rightEyeY = entity.head.y + fy - ry;

    canvas.drawCircle(Offset(leftEyeX, leftEyeY), radius * 0.35, _eyePaint);
    canvas.drawCircle(Offset(rightEyeX, rightEyeY), radius * 0.35, _eyePaint);

    final px = cosA * radius * 0.08;
    final py = sinA * radius * 0.08;
    canvas.drawCircle(Offset(leftEyeX + px, leftEyeY + py), radius * 0.18, _pupilPaint);
    canvas.drawCircle(Offset(rightEyeX + px, rightEyeY + py), radius * 0.18, _pupilPaint);
  }
}
