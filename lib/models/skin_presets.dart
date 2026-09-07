import 'package:flame/extensions.dart';
import 'skin.dart';
import '../utils/constants.dart';

class SkinPresets {
  static final List<SnakeSkin> allSkins = [
    ..._catppuccinSkins,
    _silverSkin,
    _usaSkin,
    _canadaSkin,
    _ukSkin,
    _franceSkin,
  ];

  static final List<SnakeSkin> _catppuccinSkins = [
    'rosewater', 'flamingo', 'pink', 'mauve', 'red', 'maroon', 'peach',
    'yellow', 'green', 'teal', 'sky', 'sapphire', 'blue', 'lavender'
  ].map((id) => _createCatppuccinSkin(id, _getCatppuccinColor(id))).toList();

  static const Map<String, Color> _catppuccinColorMap = {
    'rosewater': CatppuccinColors.rosewater,
    'flamingo': CatppuccinColors.flamingo,
    'pink': CatppuccinColors.pink,
    'mauve': CatppuccinColors.mauve,
    'red': CatppuccinColors.red,
    'maroon': CatppuccinColors.maroon,
    'peach': CatppuccinColors.peach,
    'yellow': CatppuccinColors.yellow,
    'green': CatppuccinColors.green,
    'teal': CatppuccinColors.teal,
    'sky': CatppuccinColors.sky,
    'sapphire': CatppuccinColors.sapphire,
    'blue': CatppuccinColors.blue,
    'lavender': CatppuccinColors.lavender,
  };

  static Color _getCatppuccinColor(String id) {
    return _catppuccinColorMap[id] ?? CatppuccinColors.mauve;
  }

  static SnakeSkin _createCatppuccinSkin(String id, Color color) {
    final darkened = Color.lerp(color, CatppuccinColors.black, 0.1)!;
    return SnakeSkin(
      id: id,
      price: 0,
      size: Vector2(512, 512),
      tint: _blendColorSequence([color, darkened], 12),
      texture: ['snake_main'],
      primary: color,
    );
  }

  static final SnakeSkin _silverSkin = SnakeSkin(
    id: 'silver',
    price: 100,
    size: Vector2(512, 512),
    tint: [CatppuccinColors.text],
    texture: ['snake_main'],
    primary: CatppuccinColors.text,
  );

  static final SnakeSkin _usaSkin = SnakeSkin(
    id: 'usa',
    price: 100,
    size: Vector2(512, 512),
    tint: [
      ..._duplicate([CatppuccinColors.red, CatppuccinColors.offwhite], 4),
      ..._duplicate([CatppuccinColors.white], 8),
    ],
    texture: [
      ..._duplicate(['snake_main'], 8),
      ..._duplicate(['snake_stars'], 8),
    ],
    boostTint: [
      ..._duplicate([CatppuccinColors.red, CatppuccinColors.offwhite], 4),
      ..._duplicate([CatppuccinColors.blue], 8),
    ],
    primary: const Color(0xFF3B4D8A),
    secondary: const Color(0xFF2B3969),
  );

  static final SnakeSkin _canadaSkin = SnakeSkin(
    id: 'canada',
    price: 100,
    size: Vector2(512, 512),
    tint: [CatppuccinColors.red, CatppuccinColors.white, CatppuccinColors.offwhite],
    texture: ['snake_main', 'snake_canada', 'snake_main'],
    boostTint: [CatppuccinColors.red, CatppuccinColors.red, CatppuccinColors.white],
  );

  static final SnakeSkin _ukSkin = SnakeSkin(
    id: 'uk',
    price: 100,
    size: Vector2(512, 512),
    tint: [
      CatppuccinColors.red, CatppuccinColors.red, CatppuccinColors.offwhite,
      CatppuccinColors.blue, CatppuccinColors.blue, CatppuccinColors.offwhite
    ],
    texture: ['snake_main'],
  );

  static final SnakeSkin _franceSkin = SnakeSkin(
    id: 'france',
    price: 100,
    size: Vector2(512, 512),
    tint: [
      CatppuccinColors.blue, CatppuccinColors.blue,
      CatppuccinColors.offwhite, CatppuccinColors.offwhite,
      CatppuccinColors.red, CatppuccinColors.red
    ],
    texture: ['snake_main'],
  );

  static List<Color> _blendColorSequence(List<Color> colors, int length, {bool looped = true}) {
    final List<Color> result = [];
    final List<Color> workingColors = looped ? [...colors, colors[0]] : colors;
    final int colorCount = workingColors.length;

    for (int i = 0; i < length; i++) {
      final double indexScaled = i * (colorCount - 1) / (length - 1);
      final int indexInArray = indexScaled.floor();

      final Color from = workingColors[indexInArray];
      final Color to = workingColors[(indexInArray + 1) % colorCount];

      result.add(Color.lerp(from, to, indexScaled % 1)!);
    }
    return result;
  }

  static List<T> _duplicate<T>(List<T> sequence, int repeatCount) {
    final List<T> result = [];
    for (int i = 0; i < repeatCount; i++) {
      result.addAll(sequence);
    }
    return result;
  }

  static SnakeSkin getById(String id) {
    return allSkins.firstWhere((s) => s.id == id, orElse: () => allSkins.first);
  }
}
