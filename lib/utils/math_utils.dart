import 'dart:math' as math;

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
