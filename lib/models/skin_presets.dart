import 'package:flame/extensions.dart';
import 'skin.dart';
import '../utils/constants.dart';

class SkinPresets {
  static final List<SnakeSkin> allSkins = [
    _createAccentSkin('rosewater', CatppuccinColors.rosewater),
    _createAccentSkin('flamingo', CatppuccinColors.flamingo),
    _createAccentSkin('pink', CatppuccinColors.pink),
    _createAccentSkin('mauve', CatppuccinColors.mauve),
    _createAccentSkin('red', CatppuccinColors.red),
    _createAccentSkin('maroon', CatppuccinColors.maroon),
    _createAccentSkin('peach', CatppuccinColors.peach),
    _createAccentSkin('yellow', CatppuccinColors.yellow),
    _createAccentSkin('green', CatppuccinColors.green),
    _createAccentSkin('teal', CatppuccinColors.teal),
    _createAccentSkin('sky', CatppuccinColors.sky),
    _createAccentSkin('sapphire', CatppuccinColors.sapphire),
    _createAccentSkin('blue', CatppuccinColors.blue),
    _createAccentSkin('lavender', CatppuccinColors.lavender),
  ];

  static SnakeSkin _createAccentSkin(String id, Color color) {
    return SnakeSkin(
      id: id,
      price: 0,
      size: Vector2(512, 512),
      tint: [color],
      boostTint: [color.withValues(alpha: 0.8)],
      texture: ['snake_main'],
      primary: color,
    );
  }

  static SnakeSkin getById(String id) {
    return allSkins.firstWhere((s) => s.id == id, orElse: () => allSkins.first);
  }
}
