import 'package:flame/extensions.dart';

// Ported from: src/shared/utils/grid.ts

class GridPoint<T> {
  final Vector2 position;
  final T metadata;

  GridPoint({required this.position, required this.metadata});
}

class SpatialGrid<T> {
  final Map<int, Map<int, GridPoint<T>>> _cells = {};
  final double resolution;

  SpatialGrid(this.resolution);

  int _cellKeyXY(int x, int y) => (x << 20) ^ (y & 0xFFFFF);

  int _cellKey(Vector2 value) {
    final x = (value.x / resolution).floor();
    final y = (value.y / resolution).floor();
    return _cellKeyXY(x, y);
  }

  int _pointKey(Vector2 value) {
    final x = (value.x * 100).round();
    final y = (value.y * 100).round();
    return _cellKeyXY(x, y);
  }

  void insert(Vector2 vector, T metadata) {
    final cellKey = _cellKey(vector);
    final pointKey = _pointKey(vector);
    final cell = _cells.putIfAbsent(cellKey, () => {});
    cell[pointKey] = GridPoint(position: vector, metadata: metadata);
  }

  void remove(Vector2 vector) {
    final cellKey = _cellKey(vector);
    final pointKey = _pointKey(vector);
    final cell = _cells[cellKey];
    if (cell == null) return;

    cell.remove(pointKey);
    if (cell.isEmpty) {
      _cells.remove(cellKey);
    }
  }

  void clear() {
    _cells.clear();
  }

  GridPoint<T>? nearest(
    Vector2 vector,
    double range, [
    bool Function(GridPoint<T>)? predicate,
  ]) {
    GridPoint<T>? nearestPoint;
    double nearestDistance = range;

    forEachWithin(vector, range, (point) {
      final distance = vector.distanceTo(point.position);
      if (distance < nearestDistance &&
          (predicate == null || predicate(point))) {
        nearestPoint = point;
        nearestDistance = distance;
      }
    });
    return nearestPoint;
  }

  void forEachWithin(
    Vector2 vector,
    double range,
    void Function(GridPoint<T>) onPoint, [
    bool Function(GridPoint<T>)? predicate,
  ]) {
    final intRange = (range / resolution).ceil();
    final centerX = (vector.x / resolution).floor();
    final centerY = (vector.y / resolution).floor();
    final rangeSquared = range * range;

    for (int x = centerX - intRange; x <= centerX + intRange; x++) {
      for (int y = centerY - intRange; y <= centerY + intRange; y++) {
        final cell = _cells[_cellKeyXY(x, y)];
        if (cell == null) continue;

        for (final point in cell.values) {
          if (vector.distanceToSquared(point.position) <= rangeSquared &&
              (predicate == null || predicate(point))) {
            onPoint(point);
          }
        }
      }
    }
  }

  List<GridPoint<T>> allWithin(
    Vector2 vector,
    double range, [
    bool Function(GridPoint<T>)? predicate,
  ]) {
    final List<GridPoint<T>> points = [];
    forEachWithin(vector, range, points.add, predicate);
    return points;
  }

  void forEachWithinRect(
    Rect rect,
    void Function(GridPoint<T>) onPoint, [
    bool Function(GridPoint<T>)? predicate,
  ]) {
    final int minX = (rect.left / resolution).floor();
    final int maxX = (rect.right / resolution).ceil();
    final int minY = (rect.top / resolution).floor();
    final int maxY = (rect.bottom / resolution).ceil();

    for (int x = minX; x <= maxX; x++) {
      for (int y = minY; y <= maxY; y++) {
        final cell = _cells[_cellKeyXY(x, y)];
        if (cell == null) continue;

        for (final point in cell.values) {
          final px = point.position.x;
          final py = point.position.y;
          if (px >= rect.left &&
              px <= rect.right &&
              py >= rect.top &&
              py <= rect.bottom &&
              (predicate == null || predicate(point))) {
            onPoint(point);
          }
        }
      }
    }
  }

  List<GridPoint<T>> allWithinRect(
    Rect rect, [
    bool Function(GridPoint<T>)? predicate,
  ]) {
    final List<GridPoint<T>> points = [];
    forEachWithinRect(rect, points.add, predicate);
    return points;
  }

}
