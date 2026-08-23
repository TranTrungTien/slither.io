import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/snake_provider.dart';
import '../../utils/constants.dart';
import '../../utils/math_utils.dart';

// Ported from: src/client/components/game/minimap/minimap.tsx

class MinimapOverlay extends ConsumerWidget {
  const MinimapOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snakes = ref.watch(snakeProvider);
    const double size = 150.0;

    return Positioned(
      bottom: 20,
      right: 20,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: CatppuccinColors.crust.withAlpha(150),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white10, width: 2),
        ),
        child: CustomPaint(
          painter: _MinimapPainter(
            snakes: snakes.values.toList(),
            worldBounds: GameConstants.worldBounds,
          ),
        ),
      ),
    );
  }
}

class _MinimapPainter extends CustomPainter {
  final List<dynamic> snakes; // SnakeEntity
  final double worldBounds;

  _MinimapPainter({required this.snakes, required this.worldBounds});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final borderPaint = Paint()
      ..color = Colors.white24
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    canvas.drawCircle(center, radius, borderPaint);

    for (final snake in snakes) {
      final isLocal = snake.id == 'local_player';

      final nx = map(snake.head.x as double, -worldBounds, worldBounds, 0, 1);
      final ny = map(snake.head.y as double, -worldBounds, worldBounds, 0, 1);

      final pos = Offset(nx * size.width, ny * size.height);

      final dotPaint = Paint()
        ..color = isLocal ? CatppuccinColors.mauve : Colors.white70;

      canvas.drawCircle(pos, isLocal ? 3.0 : 1.5, dotPaint);

      if (isLocal) {
        final glowPaint = Paint()
          ..color = dotPaint.color.withAlpha(50);
        canvas.drawCircle(pos, 5.0, glowPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _MinimapPainter oldDelegate) => true;
}
