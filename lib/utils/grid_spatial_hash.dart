import 'package:flame/extensions.dart';

// Ported from: src/shared/utils/grid.ts

class GridPoint<T> {
  final Vector2 position;
  final T metadata;

  GridPoint({required this.position, required this.metadata});
}

class SpatialGrid<T> {
  final Map<Vector3, Map<Vector3, GridPoint<T>>> _cells = {};
  final double resolution;

  SpatialGrid(this.resolution);

  Vector3 _vectorize(Vector2 v) {
    // Round to prevent tiny float precision issues from creating separate keys
    return Vector3(
      (v.x * 100).roundToDouble() / 100.0,
      (v.y * 100).roundToDouble() / 100.0,
      0,
    );
  }

  Vector2 _snapToGrid(Vector2 value) {
    return Vector2(
      (value.x / resolution).floorToDouble(),
      (value.y / resolution).floorToDouble(),
    );
  }

  void insert(Vector2 vector, T metadata) {
    final key = _vectorize(_snapToGrid(vector));
    final cell = _cells.putIfAbsent(key, () => {});
    cell[_vectorize(vector)] = GridPoint(position: vector, metadata: metadata);
  }

  void remove(Vector2 vector) {
    final key = _vectorize(_snapToGrid(vector));
    final cell = _cells[key];
    if (cell == null) return;

    cell.remove(_vectorize(vector));
    if (cell.isEmpty) {
      _cells.remove(key);
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

  List<Map<Vector3, GridPoint<T>>> _getCellsInRange(Vector2 vector, double range) {
    final List<Map<Vector3, GridPoint<T>>> cells = [];
    final snapped = _snapToGrid(vector);
    final intRange = (range / resolution).ceil();

    for (int i = -intRange; i <= intRange; i++) {
      for (int j = -intRange; j <= intRange; j++) {
        // Construct Vector3 keys explicitly as integers for hash stability
        final key = Vector3(snapped.x + i, snapped.y + j, 0);
        final cell = _cells[key];
        if (cell != null) {
          cells.add(cell);
        }
      }
    }
    return cells;
  }
}
