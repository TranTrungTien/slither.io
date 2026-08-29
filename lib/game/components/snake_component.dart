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
  static final Paint _outlinePaint = Paint()
    ..color = Colors.black.withAlpha(50)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.5;
  static final Paint _eyePaint = Paint()..color = Colors.white;
  static final Paint _pupilPaint = Paint()..color = Colors.black;
  static final Paint _boostPaint = Paint();

  final Float32List _pointBuffer = Float32List(2048 * 2);
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
    final tintList = (entity.isBoosting && skin.boostTint != null) ? skin.boostTint! : skin.tint;

    _bodyPaint.color = skin.primary ?? CatppuccinColors.mauve;
    _bodyPaint.strokeWidth = radius * 2.0;
    _headPaint.color = skin.primary?.withValues(red: 200) ?? CatppuccinColors.mauve.withValues(red: 200);

    final renderStep = math.max(2, entity.tracers.length ~/ 100);
    _pointCount = 0;

    for (int i = entity.tracers.length - 1; i >= 0; i -= renderStep) {
      if (_pointCount >= 1024) break;
      final pos = entity.tracers[i];
      if (tintList.isNotEmpty) {
       _bodyPaint.color = tintList[i % tintList.length];
      }
      _pointBuffer[_pointCount * 2] = pos.x;
      _pointBuffer[_pointCount * 2 + 1] = pos.y;
      _pointCount++;
    }

    if (_pointCount > 0) {
      canvas.drawRawPoints(
       ui.PointMode.points,
       Float32List.sublistView(_pointBuffer, 0, _pointCount * 2),
       _bodyPaint,
      );
    }

    canvas.drawCircle(entity.head.toOffset(), radius * 1.2, _headPaint);

    if (entity.isBoosting) {
      _boostPaint.color = (skin.primary ?? CatppuccinColors.mauve).withAlpha(60);
      canvas.drawCircle(entity.head.toOffset(), radius * 1.5, _boostPaint);
    }

    final forward = Vector2(math.cos(entity.angle), math.sin(entity.angle));
    final right = Vector2(-forward.y, forward.x);

    final leftEyeBase = entity.head + (forward * radius * 0.8) + (right * radius * 0.6);
    final rightEyeBase = entity.head + (forward * radius * 0.8) - (right * radius * 0.6);

    canvas.drawCircle(leftEyeBase.toOffset(), radius * 0.4, _eyePaint);
    canvas.drawCircle(rightEyeBase.toOffset(), radius * 0.4, _eyePaint);

    final leftPupil = leftEyeBase + (forward * radius * 0.1);
    final rightPupil = rightEyeBase + (forward * radius * 0.1);

    canvas.drawCircle(leftPupil.toOffset(), radius * 0.2, _pupilPaint);
    canvas.drawCircle(rightPupil.toOffset(), radius * 0.2, _pupilPaint);
  }
}
