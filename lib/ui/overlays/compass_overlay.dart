import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/snake_provider.dart';
import '../../models/snake.dart';
import '../../utils/constants.dart';

class CompassOverlay extends ConsumerWidget {
  const CompassOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snakes = ref.watch(snakeProvider);
    final localSnake = snakes['local_player'];

    if (localSnake == null || localSnake.dead) return const SizedBox.shrink();

    // Find leader
    SnakeEntity? leader;
    int maxScore = -1;
    for (final snake in snakes.values) {
      if (snake.score > maxScore) {
        maxScore = snake.score;
        leader = snake;
      }
    }

    if (leader == null || leader.id == 'local_player') return const SizedBox.shrink();

    final delta = leader.head - localSnake.head;
    if (delta.length < 100) return const SizedBox.shrink(); // Hide if very close

    final angle = math.atan2(delta.y, delta.x);

    return Center(
      child: IgnorePointer(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              // The Crown and Arrow will be placed on a circle around the center
              Positioned.fill(
                child: _CompassRenderer(angle: angle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CompassRenderer extends StatelessWidget {
  final double angle;

  const _CompassRenderer({required this.angle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Crown at the edge
        Transform.translate(
          offset: Offset(
            math.cos(angle) * 120,
            math.sin(angle) * 120,
          ),
          child: const Center(
            child: Text('👑', style: TextStyle(fontSize: 32)),
          ),
        ),
        // Pointer arrow
        Transform.translate(
          offset: Offset(
            math.cos(angle) * 90,
            math.sin(angle) * 90,
          ),
          child: Center(
            child: Transform.rotate(
              angle: angle + math.pi / 2,
              child: Image.asset(
                SlitherAssets.leaderPointer,
                width: 24,
                height: 24,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
