import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/snake_provider.dart';
import '../../providers/player_provider.dart';
import '../../utils/constants.dart';
import '../../models/snake.dart';
import '../../game/slither_game.dart';
import 'compass_overlay.dart';

class HudOverlay extends ConsumerWidget {
  final SlitherGame game;
  const HudOverlay({super.key, required this.game});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        CompassOverlay(game: game),

        // Throttled HUD Elements
        AnimatedBuilder(
          animation: game.uiUpdateNotifier,
          builder: (context, child) {
            final snakes = ref.read(snakeProvider);
            final localSnake = snakes['local_player'];

            // Compute ranking
            final sortedSnakes = snakes.values.toList()
              ..sort((a, b) => b.score.compareTo(a.score));

            final player = ref.read(playerProvider).value;

            final currentLength = localSnake?.describe().length.floor() ?? 0;

            return Stack(
              children: [
                // Bottom Left: Length Indicator like in Image 1
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Your length: $currentLength',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Stats Cards (moved up slightly)
                Positioned(
                  bottom: 60,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _StatsCard(
                        emoji: '☠️',
                        label: 'KOs',
                        value: localSnake?.eliminations.toString() ?? '0',
                        primary: const Color(0xFFA1A3C2),
                        secondary: const Color(0xFF61618A),
                      ),
                      const SizedBox(height: 8),
                      _StatsCard(
                        emoji: '💵',
                        label: 'Cash',
                        value: '\$${player?.balance ?? 0}',
                        primary: const Color(0xFF6F9E4F),
                        secondary: const Color(0xFF99B56B),
                      ),
                    ],
                  ),
                ),

                // Top Right: Leaderboard (Matches Image 1 style)
                Positioned(
                  top: 10,
                  right: 10,
                  child: _Leaderboard(snakes: sortedSnakes.take(10).toList()),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class _StatsCard extends StatelessWidget {
  final String emoji;
  final String label;
  final String value;
  final Color primary;
  final Color secondary;

  const _StatsCard({
    required this.emoji,
    required this.label,
    required this.value,
    required this.primary,
    required this.secondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primary.withAlpha(200), secondary.withAlpha(200)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white10),
        boxShadow: [
          BoxShadow(
            color: primary.withAlpha(50),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: primary.withAlpha(200),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Leaderboard extends StatelessWidget {
  final List<SnakeEntity> snakes;

  const _Leaderboard({required this.snakes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Leaderboard',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.black, blurRadius: 2)],
            ),
          ),
          const SizedBox(height: 4),
          ...snakes.asMap().entries.map((entry) {
            final index = entry.key;
            final snake = entry.value;
            final isLocal = snake.id == 'local_player';

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '#${index + 1} ',
                    style: TextStyle(
                      color: _getRankColor(index),
                      fontSize: 12,
                      fontWeight: isLocal ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      snake.name,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isLocal
                            ? CatppuccinColors.mauve
                            : Colors.white70,
                        fontSize: 12,
                        fontWeight: isLocal
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    snake.score.toString(),
                    style: TextStyle(
                      color: isLocal ? CatppuccinColors.mauve : Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Color _getRankColor(int index) {
    if (index == 0) return Colors.yellow;
    if (index == 1) return Colors.grey;
    if (index == 2) return Colors.brown;
    return Colors.white54;
  }
}
