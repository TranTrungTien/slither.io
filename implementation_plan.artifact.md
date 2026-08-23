# Implementation Plan - Slither Flutter Rewrite (Phase 1)

This plan covers the implementation of the core game engine in Flutter using the Flame engine, based on the analyzed TypeScript source.

## Goal
Establish the core "Augmented Experience" of Slither: smooth snake movement, food spawning, and basic collision detection in a single-player environment.

## Proposed Changes

### 1. Foundation & Shared Logic
Grouped by utility and models.

#### [NEW] [core_constants.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/core/constants/core_constants.dart)
Porting missing `core.ts`. Defines `worldBounds`, `tickRate`, `snakeSpeed`, etc.

#### [NEW] [math_utils.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/core/utils/math_utils.dart)
Porting `shared/utils/math-utils.ts`. Includes `lerpRadians`, `turnRadians`, `mapStrict`.

#### [NEW] [spatial_grid.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/core/utils/spatial_grid.dart)
Porting `shared/utils/grid.ts`. Efficient spatial partitioning for collisions.

---

### 2. State Management (Riverpod)
Porting the Redux-like logic to Riverpod.

#### [NEW] [snake_state.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/core/state/snake_state.dart)
Porting `shared/store/snakes/`. `SnakeEntity` model and `SnakeNotifier`.

#### [NEW] [candy_state.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/core/state/candy_state.dart)
Porting `shared/store/candy/`. `CandyEntity` model and `CandyNotifier`.

---

### 3. Flame Engine Integration
Visualizing the state.

#### [NEW] [slither_game.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/game/slither_game.dart)
Main `FlameGame` class. Manages the loop and integrates with Riverpod.

#### [NEW] [snake_component.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/game/components/snake_component.dart)
Renders the head and body segments.

#### [NEW] [candy_component.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/game/components/candy_component.dart)
Renders food items.

---

### 4. Game Systems
#### [NEW] [collision_system.dart](file:///C:/Users/Administrator/StudioProjects/slither_io/lib/game/systems/collision_system.dart)
Porting `onCollisionTick` logic.

## Verification Plan

### Automated Tests
- Unit tests for `turnRadians` to ensure smooth rotation.
- Unit tests for `SpatialGrid` insertion and nearest-neighbor query.

### Manual Verification
- Run the app and verify:
  - Snake follows the pointer (mouse/touch).
  - Snake grows when eating candy.
  - Snake dies when hitting world boundaries.
  - Performance stays stable with 1000+ candy items.
