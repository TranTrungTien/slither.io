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

  int _cellKey(Vector2 value) {
    final x = (value.x / resolution).floor();
    final y = (value.y / resolution).floor();
    return (x << 20) ^ (y & 0xFFFFF);
  }

  int _pointKey(Vector2 value) {
    final x = (value.x * 100).round();
    final y = (value.y * 100).round();
    return (x << 20) ^ (y & 0xFFFFF);
  }

  Vector2 _snapToGrid(Vector2 value) {
    return Vector2(
      (value.x / resolution).floorToDouble(),
      (value.y / resolution).floorToDouble(),
    );
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

  GridPoint<T>? nearest(Vector2 vector, double range, [bool Function(GridPoint<T>)? predicate]) {
    final cellsInRange = _getCellsInRange(vector, range);
    GridPoint<T>? nearestPoint;
    double nearestDistance = range;

    for (final cell in cellsInRange) {
      for (final point in cell.values) {
        final distance = vector.distanceTo(point.position);
        if (distance < nearestDistance && (predicate == null || predicate(point))) {
          nearestPoint = point;
          nearestDistance = distance;
        }
      }
    }
    return nearestPoint;
  }

  List<GridPoint<T>> allWithin(Vector2 vector, double range, [bool Function(GridPoint<T>)? predicate]) {
    final cellsInRange = _getCellsInRange(vector, range);
    final List<GridPoint<T>> points = [];

    for (final cell in cellsInRange) {
      for (final point in cell.values) {
        if (vector.distanceTo(point.position) <= range && (predicate == null || predicate(point))) {
          points.add(point);
        }
      }
    }
    return points;
  }

  List<Map<int, GridPoint<T>>> _getCellsInRange(Vector2 vector, double range) {
    final List<Map<int, GridPoint<T>>> cells = [];
    final snapped = _snapToGrid(vector);
    final intRange = (range / resolution).ceil();

    for (int i = -intRange; i <= intRange; i++) {
      for (int j = -intRange; j <= intRange; j++) {
        final cellKey = _cellKey(Vector2(snapped.x + i, snapped.y + j));
        final cell = _cells[cellKey];
        if (cell != null) {
          cells.add(cell);
        }
      }
    }
    return cells;
  }
}
