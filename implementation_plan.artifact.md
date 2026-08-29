# Implementation Plan - 100% Logic & UI Mapping Fixes

Dựa trên kết quả review, kế hoạch này sẽ tinh chỉnh logic core, bổ sung các component UI thiếu sót và cập nhật hệ thống Skin để đạt độ tương đồng tuyệt đối với bản gốc.

## Goal
Fix toàn bộ các sai lệch về logic di chuyển, chết, hiển thị UI và dữ liệu Skin để khớp 100% với `origin_source.md`.

## User Review Required
> [!IMPORTANT]
> - **Compass Overlay**: La bàn chỉ hướng Leader sẽ được thêm vào HUD. Tôi sẽ loại bỏ Leaderboard list nếu bạn muốn giống bản gốc hoàn toàn, hoặc giữ cả hai? (Mặc định: Thêm Compass, giữ Leaderboard để tiện theo dõi).
> - **Scale Vật lý**: Tôi sẽ điều chỉnh `tracerRadius` và khoảng cách rơi candy để đảm bảo mật độ loot giống Roblox nhất có thể.

## Proposed Changes

### 1. Core Logic Fixes
Khớp chính xác các tham số toán học và xác suất.

#### [MODIFY] [snake_provider.dart](file:///C:/Users/projects/slither.io/lib/providers/snake_provider.dart)
- Cập nhật logic trừ điểm khi boost: `math.Random().nextInt(maxDecrease) + 1` (để bao gồm giá trị `maxDecrease`).
- Đảm bảo `tiny` constant và logic `Lerp` khớp hoàn toàn với `snake-slice.ts`.

#### [MODIFY] [slither_game.dart](file:///C:/Users/projects/slither.io/lib/game/slither_game.dart)
- Cập nhật `_handleSnakeDeath`:
    - Fix scale `tracerRadius` khi tính toán vị trí rơi candy.
    - Đảm bảo logic spawn candy trên mỗi tracer khớp với vòng lặp `for (const tracer of tracers)` trong bản gốc.

---

### 2. UI & UX Enhancements
Bổ sung các thành phần thị giác đặc trưng.

#### [MODIFY] [minimap_overlay.dart](file:///C:/Users/projects/slither.io/lib/ui/overlays/minimap_overlay.dart)
- Thêm tâm ngắm `map_crosshair` vào giữa bản đồ.
- Cập nhật `BoxDecoration`: Thêm `border` màu `lavender` với độ trong suốt 0.1 và `uigradient` (mô phỏng bằng `LinearGradient` từ `crust` đến `mantle`).

#### [NEW] [compass_overlay.dart](file:///C:/Users/projects/slither.io/lib/ui/overlays/compass_overlay.dart)
- Implement la bàn chỉ hướng Leader (`src/client/components/game/compass/`).
- Hiển thị emoji 👑 và mũi tên `leader_pointer` xoay theo hướng Leader hiện tại.

#### [MODIFY] [hud_overlay.dart](file:///C:/Users/projects/slither.io/lib/ui/overlays/hud_overlay.dart)
- Thêm `StatsCard` cho **Cash** (sử dụng màu xanh lá cây đặc trưng).
- Tích hợp la bàn vào Stack HUD.

---

### 3. Data & Skins Mapping
Cập nhật hệ thống skin phức tạp.

#### [MODIFY] [skin_presets.dart](file:///C:/Users/projects/slither.io/lib/models/skin_presets.dart)
- Implement `_blendColorSequence`: Tạo mảng 12 màu cho mỗi skin Catppuccin (từ `color` đến `color.lerp(black, 0.1)`).
- Bổ sung các skin quốc kỳ và đặc biệt: `usa`, `canada`, `uk`, `france`, `silver`.

#### [MODIFY] [constants.dart](file:///C:/Users/projects/slither.io/lib/utils/constants.dart)
- Thêm các đường dẫn asset cho Compass và Minimap crosshair.

## Verification Plan

### Automated Tests
- Chạy lại các unit test liên quan đến `SnakeNotifier` để đảm bảo logic drain/growth không bị sai lệch sau khi sửa.

### Manual Verification
- **Visual Check**: So sánh Minimap mới với screenshot bản gốc (crosshair, border).
- **Behavior Check**: Boost và kiểm tra xem điểm trừ có khớp dải `[1, maxDecrease]` không.
- **Leader Tracking**: Di chuyển xa leader và kiểm tra xem Compass có chỉ đúng hướng không.
