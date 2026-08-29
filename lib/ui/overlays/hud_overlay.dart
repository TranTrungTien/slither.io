import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/snake_provider.dart';
import '../../providers/player_provider.dart';
import '../../utils/constants.dart';
import '../../models/snake.dart';
import 'compass_overlay.dart';

// Ported from: src/client/components/stats/stats.tsx

class HudOverlay extends ConsumerWidget {
  const HudOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snakes = ref.watch(snakeProvider).snakes;
    final localSnake = snakes['local_player'];

    // Compute ranking
    final sortedSnakes = snakes.values.toList()..sort((a, b) => b.score.compareTo(a.score));
    final rankIndex = sortedSnakes.indexWhere((s) => s.id == 'local_player');
    final rank = rankIndex != -1 ? rankIndex + 1 : null;

    final player = ref.watch(playerProvider).value;

    return Stack(
      children: [
        const CompassOverlay(),

        // Bottom Left: Stats
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _StatsCard(
                emoji: '☠️',
                label: 'KOs',
                value: localSnake?.eliminations.toString() ?? 'N/A',
                primary: const Color(0xFFA1A3C2),
                secondary: const Color(0xFF61618A),
              ),
              const SizedBox(height: 8),
              _StatsCard(
                emoji: '🏆',
                label: 'Rank',
                value: rank != null ? _formatRank(rank) : 'N/A',
                primary: const Color(0xFFFFCB50),
                secondary: const Color(0xFFFF964F),
              ),
              const SizedBox(height: 8),
              _StatsCard(
                emoji: '💯',
                label: 'Score',
                value: localSnake?.score.toString() ?? 'N/A',
                primary: const Color(0xFFB54040),
                secondary: const Color(0xFF963B54),
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

        // Top Right: Leaderboard
        Positioned(
          top: 20,
          right: 20,
          child: _Leaderboard(snakes: sortedSnakes.take(10).toList()),
        ),
      ],
    );
  }

  String _formatRank(int rank) {
    final lastDigit = rank % 10;
    final lastTwoDigits = rank % 100;

    if (lastTwoDigits >= 11 && lastTwoDigits <= 13) {
      return '${rank}th';
    }

    switch (lastDigit) {
      case 1: return '${rank}st';
      case 2: return '${rank}nd';
      case 3: return '${rank}rd';
      default: return '${rank}th';
    }
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
      width: 180,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: CatppuccinColors.crust.withAlpha(180),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'LEADERBOARD',
            style: TextStyle(
              color: CatppuccinColors.subtext0,
              fontSize: 10,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 8),
          ...snakes.asMap().entries.map((entry) {
            final index = entry.key;
            final snake = entry.value;
            final isLocal = snake.id == 'local_player';

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(
                children: [
                  Text(
                    '${index + 1}.',
                    style: TextStyle(
                      color: isLocal ? CatppuccinColors.mauve : CatppuccinColors.subtext0,
                      fontSize: 12,
                      fontWeight: isLocal ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      snake.name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isLocal ? CatppuccinColors.mauve : Colors.white,
                        fontSize: 12,
                        fontWeight: isLocal ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                  Text(
                    snake.score.toString(),
                    style: TextStyle(
                      color: isLocal ? CatppuccinColors.mauve : CatppuccinColors.subtext1,
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
}
