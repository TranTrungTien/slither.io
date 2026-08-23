import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../game/slither_game.dart';
import '../utils/constants.dart';
import '../providers/snake_provider.dart';
import 'overlays/hud_overlay.dart';
import 'overlays/minimap_overlay.dart';
import 'overlays/death_overlay.dart';

class SlitherApp extends StatelessWidget {
  const SlitherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slither Rewrite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: CatppuccinColors.base,
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.dark(
          primary: CatppuccinColors.mauve,
          secondary: CatppuccinColors.blue,
          surface: CatppuccinColors.mantle,
        ),
      ),
      home: const MyAppBody(),
    );
  }
}

class MyAppBody extends ConsumerWidget {
  const MyAppBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          GameWidget<SlitherGame>(
            game: SlitherGame(ref),
            backgroundBuilder: (context) => Container(
              color: CatppuccinColors.crust,
            ),
            overlayBuilderMap: {
              'hud': (context, game) => const HudOverlay(),
              'minimap': (context, game) => const MinimapOverlay(),
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
            initialActiveOverlays: const ['hud', 'minimap'],
          ),
        ],
      ),
    );
  }
}
