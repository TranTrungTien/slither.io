import 'package:flutter_test/flutter_test.dart';
import 'package:slither_io/utils/math_utils.dart';
import 'dart:math' as math;

void main() {
  group('Math Utils', () {
    test('turnRadians smooth rotation', () {
      final current = 0.0;
      final target = math.pi / 2; // 90 degrees
      final step = math.pi / 4; // 45 degrees

      final result = turnRadians(current, target, step);
      expect(result, closeTo(math.pi / 4, 0.001));
    });

    test('turnRadians wraps around properly', () {
      final current = math.pi - 0.1; // Almost PI
      final target = -math.pi + 0.1; // Almost -PI (very close across the wrap)
      final step = 0.5;

      final result = turnRadians(current, target, step);
      expect(result > current || result < -math.pi + 0.5, true);
    });
  });
}
