import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../game/slither_game.dart';
import '../../utils/constants.dart';
import '../../providers/snake_provider.dart';
import '../overlays/hud_overlay.dart';
import '../overlays/minimap_overlay.dart';
import '../overlays/death_overlay.dart';
import '../overlays/alerts_overlay.dart';

class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({super.key});

  @override
  ConsumerState<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends ConsumerState<GameScreen> {
  late final SlitherGame _game;

  @override
  void initState() {
    super.initState();
    _game = SlitherGame(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget<SlitherGame>(
            game: _game,
            backgroundBuilder: (context) => Container(
              color: CatppuccinColors.crust,
            ),
            overlayBuilderMap: {
              'hud': (context, game) => const HudOverlay(),
              'minimap': (context, game) => const MinimapOverlay(),
              'alerts': (context, game) => const AlertsOverlay(),
              'death': (context, game) {
                final score = ref.read(snakeProvider)['local_player']?.score ?? 0;
                return DeathOverlay(
                  finalScore: score,
                  onRestart: () {
                    game.overlays.remove('death');
                    game.spawnPlayer();
                  },
                );
              },
            },
            initialActiveOverlays: const ['hud', 'minimap', 'alerts'],
          ),
        ],
      ),
    );
  }
}
