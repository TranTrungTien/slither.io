import 'dart:math' as math;
import 'package:flame/extensions.dart';

class Vector2Pool {
  static final List<Vector2> _pool = [];
  
  static Vector2 get(double x, double y) {
    if (_pool.isEmpty) return Vector2(x, y);
    return _pool.removeLast()..setValues(x, y);
  }
  
  static Vector2 from(Vector2 other) => get(other.x, other.y);
  
  static void release(Vector2 v) {
    if (_pool.length < 5000) _pool.add(v);
  }
}

double lerp(double a, double b, double t) {
  return a + (b - a) * t;
}

double lerpStrict(double a, double b, double t) {
  return lerp(a, b, t).clamp(math.min(a, b), math.max(a, b));
}

double map(double value, double min, double max, double newMin, double newMax) {
  if (min == max) return newMin;
  return lerp(newMin, newMax, (value - min) / (max - min));
}

double mapStrict(double value, double min, double max, double newMin, double newMax) {
  if (min == max) return newMin;
  return lerpStrict(newMin, newMax, (value - min) / (max - min));
}

double subtractRadians(double a, double b) {
  return math.atan2(math.sin(a - b), math.cos(a - b));
}

double addRadians(double a, double b) {
  return math.atan2(math.sin(a + b), math.cos(a + b));
}

double lerpRadians(double a, double b, double t) {
  return addRadians(a, subtractRadians(b, a) * t);
}

double turnRadians(double current, double target, double angle) {
  final difference = subtractRadians(target, current);
  final sign = difference.sign;
  final amount = math.min(difference.abs(), angle);
  return current + amount * sign;
}
