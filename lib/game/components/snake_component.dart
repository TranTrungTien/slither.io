import 'dart:math' as math;
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import '../../models/snake.dart';
import '../../models/skin_presets.dart';
import '../../utils/constants.dart';

class SnakeComponent extends Component {
  final String id;
  SnakeEntity? _entity;

  // Reuse paint objects to avoid allocation in render()
  final Paint _bodyPaint = Paint();
  final Paint _headPaint = Paint();
  final Paint _outlinePaint = Paint()
    ..color = Colors.black.withAlpha(50)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1.5;
  final Paint _glowPaint = Paint()
    ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10.0);

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
    _bodyPaint.color = skin.primary ?? CatppuccinColors.mauve;
    _headPaint.color = skin.primary?.withValues(red: 200) ?? CatppuccinColors.mauve.withValues(red: 200);

    // 1. Draw body tracers
    // Performance: If there are too many tracers, we can skip some for rendering
    // since they overlap significantly in "To và Khít" mode.
    const int renderStep = 2;

    for (int i = entity.tracers.length - 1; i >= 0; i -= renderStep) {
      final pos = entity.tracers[i];

      final List<Color> tints = (entity.isBoosting && skin.boostTint != null)
          ? skin.boostTint!
          : skin.tint;

      if (tints.isNotEmpty) {
        _bodyPaint.color = tints[i % tints.length];
      }

      canvas.drawCircle(pos.toOffset(), radius, _bodyPaint);
      canvas.drawCircle(pos.toOffset(), radius, _outlinePaint);
    }

    // 2. Draw head
    canvas.drawCircle(entity.head.toOffset(), radius * 1.2, _headPaint);

    // Boost glow
    if (entity.isBoosting) {
      canvas.drawCircle(entity.head.toOffset(), radius * 1.5, _glowPaint..color = (skin.primary ?? CatppuccinColors.mauve).withAlpha(100));
    }

    // 3. Eyes
    final eyePaint = Paint()..color = Colors.white;
    final pupilPaint = Paint()..color = Colors.black;

    final forward = Vector2(math.cos(entity.angle), math.sin(entity.angle));
    final right = Vector2(-forward.y, forward.x);

    final leftEyeBase = entity.head + (forward * radius * 0.8) + (right * radius * 0.6);
    final rightEyeBase = entity.head + (forward * radius * 0.8) - (right * radius * 0.6);

    canvas.drawCircle(leftEyeBase.toOffset(), radius * 0.4, eyePaint);
    canvas.drawCircle(rightEyeBase.toOffset(), radius * 0.4, eyePaint);

    final leftPupil = leftEyeBase + (forward * radius * 0.1);
    final rightPupil = rightEyeBase + (forward * radius * 0.1);

    canvas.drawCircle(leftPupil.toOffset(), radius * 0.2, pupilPaint);
    canvas.drawCircle(rightPupil.toOffset(), radius * 0.2, pupilPaint);

    // Boost glow
    if (entity.isBoosting) {
       final glowPaint = Paint()
         ..color = (skin.primary ?? CatppuccinColors.mauve).withAlpha(100)
         ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10.0);
       canvas.drawCircle(entity.head.toOffset(), radius * 1.5, glowPaint);
    }
  }
}
