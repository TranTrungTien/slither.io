import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/player_provider.dart';
import '../../models/skin_presets.dart';
import '../../utils/constants.dart';
import '../../utils/audio_service.dart';
import 'game_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerData = ref.watch(playerProvider).value;

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [CatppuccinColors.base, CatppuccinColors.crust],
                radius: 1.5,
              ),
            ),
          ),

          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SLITHER',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 10,
                    color: CatppuccinColors.mauve,
                    shadows: [
                      Shadow(color: CatppuccinColors.mauve, blurRadius: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                // Skin Carousel
                if (playerData != null)
                  _SkinCarousel(
                    currentSkin: playerData.skin,
                    ownedSkins: playerData.skins,
                    onSelect: (id) => ref.read(playerProvider.notifier).equipSkin(id),
                  ),

                const SizedBox(height: 60),

                // Play Button
                _MenuButton(
                  text: 'PLAY',
                  color: CatppuccinColors.green,
                  onPressed: () {
                    AudioService.play(SlitherSound.startGame);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const GameScreen()),
                    );
                  },
                ),
                const SizedBox(height: 20),
                _MenuButton(
                  text: 'SPECTATE',
                  color: CatppuccinColors.blue,
                  onPressed: () {
                    AudioService.play(SlitherSound.navigate);
                    // TODO: Implement spectator mode
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SkinCarousel extends StatelessWidget {
  final String currentSkin;
  final List<String> ownedSkins;
  final Function(String) onSelect;

  const _SkinCarousel({
    required this.currentSkin,
    required this.ownedSkins,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: SkinPresets.allSkins.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          final skin = SkinPresets.allSkins[index];
          final isSelected = skin.id == currentSkin;

          return GestureDetector(
            onTap: () {
              AudioService.play(SlitherSound.navigate);
              onSelect(skin.id);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isSelected ? 100 : 80,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: skin.primary?.withAlpha(50),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: isSelected ? skin.primary! : Colors.white10,
                  width: 3,
                ),
                boxShadow: isSelected ? [
                  BoxShadow(color: skin.primary!.withAlpha(100), blurRadius: 10)
                ] : [],
              ),
              child: Center(
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: skin.primary,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const _MenuButton({
    required this.text,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: CatppuccinColors.crust,
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
        textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 8,
      ),
      child: Text(text),
    );
  }
}
