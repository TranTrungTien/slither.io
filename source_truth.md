This document contains the complete source code of the repository consolidated into a single file for streamlined AI analysis.
The repository contents have been processed and combined with security validation bypassed.

# Repository Overview

## About This Document
This consolidated file represents the complete codebase from the repository, 
merged into a unified document optimized for AI consumption and automated 
analysis workflows.

## Repository Information
- **Repository:** littensy/slither
- **Branch:** main
- **Total Files:** 345
- **Generated:** 2026-08-23T00:38:44.374Z

## Document Structure
The content is organized in the following sequence:
1. This overview section
2. Repository metadata and information  
3. File system hierarchy
4. Repository files (when included)
5. Individual source files, each containing:
   a. File path header (## File: path/to/file)
   b. Complete file contents within code blocks

## Best Practices
- Treat this document as read-only - make changes in the original repository
- Use file path headers to navigate between different source files
- Handle with appropriate security measures as this may contain sensitive data
- This consolidated view is generated from the live repository state

## Important Notes
- Files excluded by .gitignore and configuration rules are omitted
- Binary assets are not included - refer to the file structure for complete file listings
- Default ignore patterns have been applied to filter content
- Security validation is disabled - review content for sensitive information carefully

# Repository Structure

```
littensy/slither/
├── .github
│   ├── workflows
│   │   ├── ci.yml
│   │   ├── release-canary.yml
│   │   └── release.yml
│   └── dependabot.yml
├── assets
│   ├── lighting
│   │   └── sky.model.json
│   └── sounds
│       ├── alert_bad.ogg
│       ├── alert_dismiss.ogg
│       ├── alert_money.ogg
│       ├── alert_neutral.ogg
│       ├── boost_start.ogg
│       ├── boost_stop.ogg
│       ├── button_down_alt.ogg
│       ├── button_down.ogg
│       ├── button_up_alt.ogg
│       ├── button_up.ogg
│       ├── error_1.ogg
│       ├── error_2.ogg
│       ├── error_3.ogg
│       ├── navigate.ogg
│       ├── start_game.ogg
│       └── whoosh.ogg
├── scripts
│   └── run-tests.server.lua
├── src
│   ├── client
│   │   ├── alerts
│   │   │   ├── handlers
│   │   │   │   ├── alert-ranks.ts
│   │   │   │   └── alert-remote.ts
│   │   │   ├── alert-factory.ts
│   │   │   ├── alerts.client.ts
│   │   │   └── index.ts
│   │   ├── app
│   │   │   ├── app.tsx
│   │   │   ├── index.client.tsx
│   │   │   └── react-config.ts
│   │   ├── components
│   │   │   ├── alerts
│   │   │   │   ├── alert-timer.tsx
│   │   │   │   ├── alert.tsx
│   │   │   │   ├── alerts.tsx
│   │   │   │   └── index.ts
│   │   │   ├── controller
│   │   │   │   ├── controllers
│   │   │   │   │   ├── gamepad.tsx
│   │   │   │   │   ├── mouse.tsx
│   │   │   │   │   └── touch.tsx
│   │   │   │   ├── utils
│   │   │   │   │   ├── use-toggle-touch-controls.ts
│   │   │   │   │   └── use-touch-move.ts
│   │   │   │   ├── controller.tsx
│   │   │   │   └── index.ts
│   │   │   ├── error-handler
│   │   │   │   ├── error-handler.tsx
│   │   │   │   ├── error-page.tsx
│   │   │   │   └── index.ts
│   │   │   ├── game
│   │   │   │   ├── compass
│   │   │   │   │   ├── compass.tsx
│   │   │   │   │   ├── index.ts
│   │   │   │   │   └── utils.ts
│   │   │   │   ├── minimap
│   │   │   │   │   ├── index.ts
│   │   │   │   │   ├── minimap-cursor.tsx
│   │   │   │   │   ├── minimap-nodes.tsx
│   │   │   │   │   ├── minimap-tracer.tsx
│   │   │   │   │   ├── minimap.tsx
│   │   │   │   │   └── utils.ts
│   │   │   │   ├── game.tsx
│   │   │   │   └── index.ts
│   │   │   ├── menu
│   │   │   │   ├── home
│   │   │   │   │   ├── home-footer.tsx
│   │   │   │   │   ├── home-title.tsx
│   │   │   │   │   ├── home-version.tsx
│   │   │   │   │   ├── home.tsx
│   │   │   │   │   ├── index.ts
│   │   │   │   │   ├── mute-button.tsx
│   │   │   │   │   ├── play-button.tsx
│   │   │   │   │   ├── spectate-button.tsx
│   │   │   │   │   └── utils.ts
│   │   │   │   ├── navigation
│   │   │   │   │   ├── destination.tsx
│   │   │   │   │   ├── index.ts
│   │   │   │   │   ├── indicator.tsx
│   │   │   │   │   └── navigation.tsx
│   │   │   │   ├── skins
│   │   │   │   │   ├── act-button.tsx
│   │   │   │   │   ├── index.ts
│   │   │   │   │   ├── skin-card.tsx
│   │   │   │   │   ├── skin-carousel.tsx
│   │   │   │   │   ├── skin-indicator.tsx
│   │   │   │   │   ├── skin-thumbnail.tsx
│   │   │   │   │   ├── skins.tsx
│   │   │   │   │   └── utils.ts
│   │   │   │   ├── support
│   │   │   │   │   ├── index.ts
│   │   │   │   │   ├── support-footer.tsx
│   │   │   │   │   ├── support-heart.tsx
│   │   │   │   │   ├── support-premium.tsx
│   │   │   │   │   ├── support-product.tsx
│   │   │   │   │   ├── support-products.tsx
│   │   │   │   │   └── support.tsx
│   │   │   │   ├── index.ts
│   │   │   │   ├── menu-container.tsx
│   │   │   │   ├── menu-vignette.tsx
│   │   │   │   └── menu.tsx
│   │   │   ├── music
│   │   │   │   ├── index.ts
│   │   │   │   └── music.tsx
│   │   │   ├── preloader
│   │   │   │   ├── index.ts
│   │   │   │   └── preloader.tsx
│   │   │   ├── stats
│   │   │   │   ├── index.ts
│   │   │   │   ├── stats-card.tsx
│   │   │   │   └── stats.tsx
│   │   │   ├── ui
│   │   │   │   ├── reactive-button
│   │   │   │   │   ├── index.ts
│   │   │   │   │   ├── reactive-button.tsx
│   │   │   │   │   ├── use-button-animation.ts
│   │   │   │   │   └── use-button-state.ts
│   │   │   │   ├── button.tsx
│   │   │   │   ├── canvas-group.tsx
│   │   │   │   ├── delay-render.tsx
│   │   │   │   ├── error-boundary.tsx
│   │   │   │   ├── frame.tsx
│   │   │   │   ├── group.tsx
│   │   │   │   ├── image.tsx
│   │   │   │   ├── input-capture.tsx
│   │   │   │   ├── layer.tsx
│   │   │   │   ├── outline.tsx
│   │   │   │   ├── primary-button.tsx
│   │   │   │   ├── shadow.tsx
│   │   │   │   ├── text-field.tsx
│   │   │   │   ├── text.tsx
│   │   │   │   └── transition.tsx
│   │   │   ├── voice
│   │   │   │   ├── index.ts
│   │   │   │   ├── utils.ts
│   │   │   │   ├── voice-camera.tsx
│   │   │   │   ├── voice-character.tsx
│   │   │   │   └── voice.tsx
│   │   │   └── world
│   │   │       ├── backdrop
│   │   │       │   ├── backdrop-ball.tsx
│   │   │       │   ├── backdrop.tsx
│   │   │       │   └── index.ts
│   │   │       ├── candy
│   │   │       │   ├── candy-item.tsx
│   │   │       │   ├── candy.tsx
│   │   │       │   ├── index.ts
│   │   │       │   └── use-candy-on-screen.ts
│   │   │       ├── snakes
│   │   │       │   ├── constants.ts
│   │   │       │   ├── index.ts
│   │   │       │   ├── snake-head.tsx
│   │   │       │   ├── snake-name-tag.tsx
│   │   │       │   ├── snake-tracer.tsx
│   │   │       │   ├── snake.tsx
│   │   │       │   ├── snakes.tsx
│   │   │       │   ├── use-snake-bindings.ts
│   │   │       │   ├── use-snakes-on-screen.ts
│   │   │       │   └── use-tracer-style.ts
│   │   │       ├── index.ts
│   │   │       ├── world-border.tsx
│   │   │       ├── world-sounds.tsx
│   │   │       ├── world-subject.tsx
│   │   │       └── world.tsx
│   │   ├── constants
│   │   │   ├── fonts.ts
│   │   │   └── springs.ts
│   │   ├── hooks
│   │   │   ├── index.ts
│   │   │   ├── use-character.ts
│   │   │   ├── use-continuous-angle.ts
│   │   │   ├── use-defined.ts
│   │   │   ├── use-input-device.ts
│   │   │   ├── use-orientation.ts
│   │   │   ├── use-premium.ts
│   │   │   ├── use-product-price.ts
│   │   │   ├── use-rem.ts
│   │   │   ├── use-seed.ts
│   │   │   └── use-store.ts
│   │   ├── providers
│   │   │   ├── rem-provider.tsx
│   │   │   └── root-provider.tsx
│   │   ├── reset
│   │   │   └── index.client.ts
│   │   ├── store
│   │   │   ├── alert
│   │   │   │   ├── alert-selectors.ts
│   │   │   │   ├── alert-slice.ts
│   │   │   │   └── index.ts
│   │   │   ├── menu
│   │   │   │   ├── index.ts
│   │   │   │   ├── menu-selectors.ts
│   │   │   │   ├── menu-slice.ts
│   │   │   │   └── menu-utils.ts
│   │   │   ├── middleware
│   │   │   │   └── receiver.ts
│   │   │   ├── world
│   │   │   │   ├── index.ts
│   │   │   │   ├── world-selectors.ts
│   │   │   │   └── world-slice.ts
│   │   │   └── index.ts
│   │   ├── stories
│   │   │   ├── components
│   │   │   │   ├── alerts.story.tsx
│   │   │   │   ├── controller.story.tsx
│   │   │   │   ├── error.story.tsx
│   │   │   │   ├── game.story.tsx
│   │   │   │   ├── menu.story.tsx
│   │   │   │   ├── skins.story.tsx
│   │   │   │   ├── stats.story.tsx
│   │   │   │   ├── support.story.tsx
│   │   │   │   └── world.story.tsx
│   │   │   └── utils
│   │   │       └── use-mock-remotes.ts
│   │   └── utils
│   │       └── format-integer.ts
│   ├── server
│   │   ├── bots
│   │   │   ├── bot-behavior.ts
│   │   │   ├── bot-factory.ts
│   │   │   ├── bot-names.ts
│   │   │   ├── bots.server.ts
│   │   │   └── index.ts
│   │   ├── commands
│   │   │   ├── create-command.ts
│   │   │   ├── index.server.ts
│   │   │   └── utils.ts
│   │   ├── players
│   │   │   ├── services
│   │   │   │   ├── character.ts
│   │   │   │   ├── index.ts
│   │   │   │   ├── remotes.ts
│   │   │   │   └── save.ts
│   │   │   └── index.server.ts
│   │   ├── products
│   │   │   ├── services
│   │   │   │   ├── index.ts
│   │   │   │   ├── money.ts
│   │   │   │   └── process-receipt.ts
│   │   │   └── index.server.ts
│   │   ├── rewards
│   │   │   ├── services
│   │   │   │   ├── badges.ts
│   │   │   │   ├── index.ts
│   │   │   │   ├── milestones.ts
│   │   │   │   └── rewards.ts
│   │   │   ├── index.ts
│   │   │   ├── rewards.server.ts
│   │   │   └── utils.ts
│   │   ├── store
│   │   │   ├── middleware
│   │   │   │   └── broadcaster.ts
│   │   │   ├── milestones
│   │   │   │   ├── index.ts
│   │   │   │   ├── milestone-selectors.ts
│   │   │   │   └── milestone-slice.ts
│   │   │   └── index.ts
│   │   └── world
│   │       ├── services
│   │       │   ├── candy
│   │       │   │   ├── candy-helpers.ts
│   │       │   │   ├── candy-tick.ts
│   │       │   │   ├── candy.ts
│   │       │   │   └── index.ts
│   │       │   ├── collision
│   │       │   │   ├── collision-tick.ts
│   │       │   │   ├── collision.ts
│   │       │   │   └── index.ts
│   │       │   ├── snakes
│   │       │   │   ├── index.ts
│   │       │   │   ├── snake-grid.ts
│   │       │   │   ├── snake-tick.ts
│   │       │   │   └── snakes.ts
│   │       │   └── index.ts
│   │       ├── constants.ts
│   │       ├── index.ts
│   │       ├── utils.ts
│   │       └── world.server.ts
│   └── shared
│       ├── assets
│       │   ├── badges
│       │   │   └── index.ts
│       │   ├── images
│       │   │   ├── index.d.ts
│       │   │   └── init.lua
│       │   ├── products
│       │   │   └── index.ts
│       │   ├── sounds
│       │   │   ├── index.ts
│       │   │   ├── play-button-sound.ts
│       │   │   ├── play-sound.ts
│       │   │   └── sounds.ts
│       │   └── index.ts
│       ├── constants
│       │   ├── skins
│       │   │   ├── index.ts
│       │   │   ├── skins.ts
│       │   │   ├── types.ts
│       │   │   └── utils.ts
│       │   └── palette.ts
│       ├── serdes
│       │   ├── handlers
│       │   │   ├── serdes-candy.ts
│       │   │   └── serdes-snake.ts
│       │   ├── index.ts
│       │   └── utils.ts
│       ├── store
│       │   ├── candy
│       │   │   ├── candy-selectors.ts
│       │   │   ├── candy-slice.ts
│       │   │   └── index.ts
│       │   ├── middleware
│       │   │   └── profiler.ts
│       │   ├── saves
│       │   │   ├── index.ts
│       │   │   ├── save-selectors.ts
│       │   │   ├── save-slice.ts
│       │   │   └── save-types.ts
│       │   ├── snakes
│       │   │   ├── index.ts
│       │   │   ├── snake-selectors.ts
│       │   │   ├── snake-slice.ts
│       │   │   └── snake-utils.ts
│       │   └── index.ts
│       ├── utils
│       │   ├── benchmark.ts
│       │   ├── color-utils.ts
│       │   ├── grid.ts
│       │   ├── math-utils.ts
│       │   ├── object-utils.ts
│       │   ├── player-utils.ts
│       │   ├── run-once.ts
│       │   └── scheduler.ts
│       └── remotes.ts
├── .npmrc
├── default.project.json
├── mantle.yml
├── package.json
├── rokit.toml
├── tarmac-manifest.toml
├── tarmac.toml
└── testez-companion.toml
```

================================================================================
// File: .github/dependabot.yml
================================================================================
version: 2
updates:
  - package-ecosystem: "npm"
    directory: "/"
    schedule:
      interval: "monthly"
    groups:
      deps:
        dependency-type: "production"
      deps-dev:
        dependency-type: "development"

================================================================================
// File: .github/workflows/ci.yml
================================================================================
name: CI

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

permissions:
  contents: write
  packages: write

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4
      - uses: pnpm/action-setup@v4
        with:
          run_install: true
      - uses: CompeyDev/setup-rokit@v0.1.2
        with:
          token: ${{ secrets.GITHUB_TOKEN }}

      - name: Lint
        run: |
          pnpm eslint src
          pnpm prettier --check src

      - name: Compile
        run: pnpm build --verbose

      - name: Build project
        run: rojo build --output place.rbxlx

================================================================================
// File: .github/workflows/release-canary.yml
================================================================================
name: Release Canary

on:
  push:
    branches: [main]
    paths-ignore:
      - "README.md"
      - "LICENSE.md"
      - "scripts/**"
      - ".github/**"
  release:
    types: [released, prereleased]
  workflow_dispatch:

permissions:
  contents: write
  packages: write

concurrency:
  group: canary_environment
  cancel-in-progress: true

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4
      - uses: pnpm/action-setup@v4
        with:
          run_install: true
      - uses: CompeyDev/setup-rokit@v0.1.2
        with:
          token: ${{ secrets.GITHUB_TOKEN }}

      - name: Compile
        run: pnpm build --verbose

      - name: Build project
        run: rojo build --output place.rbxlx

      - name: Upload place artifact
        uses: actions/upload-artifact@v4
        with:
          name: place
          path: place.rbxlx

  deploy:
    runs-on: ubuntu-latest # self-hosted
    environment: canary
    needs: build

    steps:
      - uses: actions/checkout@v4
      - uses: CompeyDev/setup-rokit@v0.1.2

      - name: Download place artifact
        uses: actions/download-artifact@v4
        with:
          name: place

      - name: Deploy game
        run: mantle deploy --allow-purchases --environment canary
        env:
          ROBLOSECURITY: ${{ secrets.ROBLOSECURITY }}
          MANTLE_AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          MANTLE_AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          MANTLE_OPEN_CLOUD_API_KEY: ${{ secrets.MANTLE_OPEN_CLOUD_API_KEY }}

================================================================================
// File: .github/workflows/release.yml
================================================================================
name: Release

on:
  release:
    types: [released]
  workflow_dispatch:

permissions:
  contents: write
  packages: write

concurrency:
  group: production_environment
  cancel-in-progress: true

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4
      - uses: pnpm/action-setup@v4
        with:
          run_install: true
      - uses: CompeyDev/setup-rokit@v0.1.2
        with:
          token: ${{ secrets.GITHUB_TOKEN }}

      - name: Compile
        run: pnpm build --verbose

      - name: Build project
        run: rojo build --output place.rbxlx

      - name: Upload place artifact
        uses: actions/upload-artifact@v4
        with:
          name: place
          path: place.rbxlx

  deploy:
    runs-on: ubuntu-latest # self-hosted
    environment: production
    needs: build

    steps:
      - uses: actions/checkout@v4
      - uses: CompeyDev/setup-rokit@v0.1.2

      - name: Download place artifact
        uses: actions/download-artifact@v4
        with:
          name: place

      - name: Deploy game
        run: mantle deploy --allow-purchases --environment production
        env:
          ROBLOSECURITY: ${{ secrets.ROBLOSECURITY }}
          MANTLE_AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          MANTLE_AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          MANTLE_OPEN_CLOUD_API_KEY: ${{ secrets.MANTLE_OPEN_CLOUD_API_KEY }}

================================================================================
// File: .npmrc
================================================================================
node-linker=hoisted

================================================================================
// File: assets/lighting/sky.model.json
================================================================================
{
	"ClassName": "Sky",
	"Properties": {
		"CelestialBodiesShown": false,
		"SkyboxBk": "rbxassetid://25901058",
		"SkyboxDn": "rbxassetid://25901058",
		"SkyboxFt": "rbxassetid://25901058",
		"SkyboxLf": "rbxassetid://25901058",
		"SkyboxRt": "rbxassetid://25901058",
		"SkyboxUp": "rbxassetid://25901058"
	}
}

================================================================================
// File: assets/sounds/alert_bad.ogg
================================================================================
OggS                 ��v�vorbis    D�       �     �OggS                 �I�(0����������������<vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV   �"LĀАU    ��7�{Ƚ��{��G{����{�G�z����{{˽��s 4d   �)�r�B���Q*ǽ���0��=��Z�!��B�=�Y   @!�RH!�RH!�RH)��b�)��b�)�s�1� �:褓PB	)�PJ*���RJ-�Zs��s�A� �B!�B!�BBCV    B!dB!�RH!��b�)��АU    �    I�˱�����%Q%�2-�R5S3=UTE�TUWU]]wm�vmՖm�Vm�vm�VmY�m۶m۶m۶m۶m۶m 4d   �#9�#)�")��8���� d   �(��8��H�%i�fy�g�����詞
���        �x��x�gy��x�gy��i��i��i��i��i��i��i��i��i��i��i��i��i��i��i@h�* @ @�q�q�qGr$Y �   @R$�r,Gs4�s<GtD�tLɔTɵ\Y        @,ES<Ǔ<�5��4�MQ4M�4M�4M�4M�4M�4M�4M�4M�4M�4M�4M�4M�4MS�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    ô��rύ�H*G�֒Q�$����Vs4�I�!b
!&1�:���S)sTsl!T�I:�R)-BCV � �$�$K       I� �� ��       @�4��4@�<                                                                    $M4�4�       �� OO      ��<�=�E                                                                    M4�4�       �� O�      @�<�E�E                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 �$A� I�4�dY�4hL Y4��         @�4h4��4�M�(          i4�QH�M��A         �L�Q�i<ӄ(Ba�                      �  � � �@�!+�8 ��X  8�cY  �8�e �eY�  ���"                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y �h@�  � � 4%(4d%  �P��4Q�8��i�ȑ,K�D�ei��&4��L��y�	��<ӄi���Q4M    6hJ,Ph�J  $ ��8��y��y�h���q,��DQMSUU��h�牢(����*��4�EQ4MUU]h�牢(����.<��DQMSU]��y�(�����QE�4MUUU��h������@E�4UUU]��(�������4MUUUו]�i������TUU]�ue���꺮+� �u]וeYຮ�ʲ,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�1�$BJ1�s!�s�9�c�9眔�1�sNJ�s�9'�d�9眓R:�s�I)�t�9礔RB�tRJ)�sB @  6�lN0Th�J   ��8��i�'��iI��y�牦�j��i�'����<��DQMSUy�牢(���r]QE�4MU%ˢh������4M�TUׅi��i���¶UUU]�ua۪������u]�ueȮ뺮,  Op  *�au�����BCV   �1)�R� �BH)��  � � �@�!+�T  �k���Zkc�Zk���笵�Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk��V  v��N��#���   �A�1�$�RJ�c�IH��+��PJJ���<��RZj-��9� ��Z�1&�BH)��b���B*)��b���Rj-�k�Ũ�JK1�k0���Z�1�Z�1:�K�1�Z���c���"����Z��c�����j͹#��-�Vk� �<8 @%�8�J�Y�hp�!+��  !�c�9�sB�R�9��B��RR�s�9!�PB)���1��B��RJi)e�9!�PJ)���R�sB��RJ)%��9� �PJ)��RJJ-�B(��RJ)���RJ!�PJ)��RJ)���B��RJ)��RRJ)�B)��RJ)���Z+��RJ)��RJI-��R(��RJ)���ZJ)�RJ)��RJ)%��RJ��RJ)��RJK���J)��RJ)���RJ)�TJ)��RJ))��ZJ)��J)��RZk)��R*��RJ)���Zk-��J)��RJi���RJ)�RJ)��R  Ё @��b�W�#
&�BCV d  ��RI-E�"���B%sPR�(sR��B� �$��1���T2�R�A
!eL)��:Ƙ��j*�c   A  ��	
��@  $H ��"@����  �"�$&TE�t ���� i�e����@AB�( '����p�t�J    � <  $@DD4s !"#$%&'(    �   I
�G��H��I��	J   �           �    OggS  @�             ���e@;<3264/?@?H=7:98DGD9?G�6�0�9��������������������%����!���.�����"� ������g���f���{a��SF�q�<pH4�,( �������6�2^	D��k�9j}��,R	�9���f�\��s|+��@y2�O)q ����D�CEҿ7&�؞�y�n"����ӯ��!tn�x�d�s�c'{�'��/�L�j8�B )��7?�10�x�3���$��:L�k1bdv��ɼ5����.�<��F�6�(�&���Z�Z�Q�̋��1ѡ� >�s�gG �v�a�����v�a�����E� �`b��+f�� ��pE�����G�z����,{�I�I�UY�s6Ֆ�Ň�Q#���8��:
~� �/`�翼� tZe�h�k��N���|m3y0Q
!a�r �`�Jbi��WW-���I�p&q�Hb �>e=7��F�������TL`�8�E��}�+����F�&�ѓV�B��MuC�	A�z�޲Fh�v�ѰX�
�P�!bC$J� C�Q��Bl��#�9��gBEC�����Z�\zo�.c��F%��A�eX=qu�v��˗ a$�k��f���f��e�B ? �x�26�gs�7�SkY-aVS����m9�X -�FB���%�qd� �H( �U! <%1��d�=�SI,?�n�c���mG��9��_�Y�|�ފJU����S�����}}1~P�T�	B�� D%��f��p��^�����֣S�jp8���'�kW��[Bɻ�u�W�����\�1�k�I%捿O/����������)W @��]�_]�?��?����W'w)���F�l%%���N�K���J�	����q ��9ZvX,=�g|(�X�����<I�}��y�`ft%M��8�v%e�S��Y�Ӟ	�ۯ�{����#����'B(2��Y�&��>���^�z���������I��i�vmĜ��c��'�Lx%�g���j�w��-��)oVr��Y���3y������HZ�P�0��w��&@�!V�n��;Â:�H�O�(�|1�װ� �H� ԁ���\���y����K��`��w�'e�#;��>l�&*#ٌEŪj���U�e��#��� D �1 ��}_�ٷs�������l��n��*�9@�O�"����V׉i�]f�V���pH耢*��j ����kt����|=����~��G�`i�&E6}��d*�-����&T�Ec��   $bo�Q_vEfo�Q_�t>�qjN�lD -L�%n�B��3�	e�f���6�{���?°T�%}�=��I����x�vX�SPM^�ٿ!���+S�ʧ�0o����������N)���g���fn�� ��� Z�̆�Z�я���X2k�3�5{#�����n]<~t�291::h�ꮯcT�)^5�ID�b    ��F��w�۽B�f�|<�6�nS%��ӕ�G/��/������_�~�>�����������+��,��#~"�w��Rx��G��-�k�v.-^��2��6�!���?��}�fC���g�y����{w/~3���=��PMs�d���<�Q4M��v�b�(T(�c9۬��*z�1���F|��~_���:�̽� � ����$�  �X���N��زV��|��r�i
�v8�GƁ���� >���|$�aWOUz޹ev Ƙ���ܲX�p�.��Z��`+ΙUI#��    P�7,έ��C	��������a�oo�W�����a���ƨ�(�w�'�ҧ�����:�����9g��`�U�{o f�\�Nf�˟� ��Kp���	x �U�j�R�~�	@&U0C흿���S�l8����}�MS�D���{���>����i�:s����r-��O��*��c0@D�M`2�<�J��UT�Ĩ�zw7��_���5��}NrΆ������3���
�Nx5�;����ȞI������X�`"C�,=�� ��Tɩ��t1�p2�,i�c�̏�9�tXrw�t<T��' (*@e6��k���(   ��$Ru��]=}=v+������������;��^u[rd�fe��j���x�9����|O'�f��}�T~�3M}zw%��d��=�Q�5�������S&�Ȟ='o�r�s�9��������U;��4���\�����{���̰Ϧ�|~���΂YgV]n��ޮ��COO�ٛp6v�A���P	��)��ќS'��. j*�9������뻳{0����s���q ���� ��d��� �lm� �$P��wLO��3wG� �? ��2-��}I6bK.M���\?ƪ��V�����.^7 �ŉ7�"     ��F�f����G.>{�l����e��k-2�^eE�������7�;O�v���=Y޽��K�f���)����~��6�U�ǂ|�姆�kGo-�Zј0�{]f'��f����w��w��Kae- ��M����#����C�����{34t/ч� �`Λv}�{ `>��s�����,�j�a!�M��# -��ND�,�S���e�%�rd�|�naK� ��N ��T�5c~yw�%+��iIޞ�����_ܖ�ƺ<�"�jV���ʕ�*�!E"     ��N{+��]#�7>���������w������3w{u���۟^t]���b�Ez|����|_��VScފ}�}�gS�]xy�)`P '��5���C׷���6z�>Wq�d�L�K|���@�.7=w;��ӣ|�����!��:s}�~晢�:�,   ������������;�+o�'ݖq���!'�0����s��߻��y1(��KQQA�:uoo�qI0�8�̮ ���Ú����#m�toI�n�?n�Ʊb��y���^��]?�
�UU5�(     ���?�%{w#�g�mw���]��8P^�wޜ���̞�j�o�;�*��ķ{�e�=�K$�g�G�������>_�%a
P#�8��������s93g�9��O~�uO'�"a��!��(v�
`�I����|����'sO|���i��H�x�~�3��{�����KWO}e��'G?5k02�j� ��Q8~'�nJ����Ү��׭�Ҟ<]�  >��5��Ԕ� +��Y���\^\�����7(�v�������1�5^��      �To�e����{I���������c����\�K.O�'��s����<����o��}˪_��sY@ɔ�T5A��?��o��s޾�vi�i��s��0�=�0M���s@�uoҪ�0���������?����&�x��'���]$�	���R�� ��}�p�C�ykW-S#�,�uo`g�|5�p�

 ,$td`��-���u|���@��&�@�z ^���^�O��4���e/�6<�6)w/��_�^���تFϦ4      ���+s�9W�sI�uk�,s�w�Z~ҧ���B.ӕ����|~���SԨ}�OKN��1�������j~g�s������@K�X�q���a�:4$���"99ԍ
`����;t*h� 6�dw7���P��Hi ��' 8�4��6�$#�/�a� �x�K�i `)��( �Ǧi;�  �� ww����R��'�K ^��=W�e��j(K"{���R��{As��T(n��V�R1t�       �egL��
WS�Ο�gc�������_���$Glr��l�gy7�aa&�$��������ߪ��@��jT ����u��8:��*�c,�@�s?���]�z��})5��K�)}r���-&k���3��>�  A"�j`��a*3�hܐ4�ż�(VU���N-:�����X � �<��.  p���8�$�O��eh��b ʿ �Eλ ��ʱ.�e*�#�V�箹z8h7j�.���r���JL�p       iؘ�ɯ�,>�#�M��ϛ�7�M�f�|���f���'w_�}�u[ݭǬ_����H��@�CM=�\�5x�5��o��|��rX?��d��uU_���򄊯�i]>���r�6,�m��㿋Cs���YN�?5]J&r;����{�i*_9�U�Օ�ɳ�|er�~���Qu^��*�α��n�3��8 T�lթ� �m�=��]�VB~%K���X@� ��$�#�I�$��aI��f3N(i��Od�����}|q�vn'x?���=h�]S      �b�{�!_���}G50�|6�-n$���4�t}��܅�!�ā,�����y.3�?���#�0>5^��{O2ϯIN rOG9 )	��~��_���̞��Ոa{�`��4	� 	f�{-����ђ	�U��,�U
�����ϻ�Ϯ&�����w
 i���O�tC
��l �p(��kN����{��h�hR6��g���nC���;���NG�r|�@�j�{b*�      fv��Ӂ�G�,�Vj_>6�]S�5���xu\��6���!T������4o���`�&�M&��szz��u���{z 6��:=kiV��w%Ӊrz���Y	���õ&k�u8�3�}�AAO_����Eg���,���*�����)�+�z~M%w�u�^��I�=~7-��mf�Ϭ3��i����& u3I�]�9����>��" �Ƚ��@ ���s]IyJ~fKb�]�I؆�����(�GN�E�3�Y^�{�Jla       0,bп�:Mj�w�{�S����`#��4<��c_��&�kI?�0�Y���>�|�/�y����>՜a�'���m���P�ܙ�� /�i<�Y��/GS��}�.�:�J>����\���ZK�VDK�0_���=�Q� ���$)��|��6:s��5�>�}�& 5]y����%	��o�9��Y�h�9��������G�%dc����8��$�GƼȄ�o(鳒��,/.
���x�O�<5���y~xc͡jߘL%       �����н��]�Փnu>	�4��T��_��q�r�*�Ug���Ś�X�
pl
�W ��ϻB;O� p��/�	&��S�3,�?I���f��eO�;���-��q��05�͐𿅖e=�N8�ӟj%����8φ�\k�G(y:������D-�FGQ�ZP�O�-����������(�$	h% ��$���C��aI�6��h�jw������n�&[���      �;�����'=��=���q��=���1����;��8�[�����G���|������ww���j׆��>wd@Am�]s�UItY���d%O���X���=`�Ͽ7�_�u�@��c�c�����0	�������J_�z��N��-��L�߿�-����#�w\��Os%[�����7rp�|��̑�|%����簶2�g   �~����_nϰ�,��F'��M{���Q�&8������������J�UE   ��ss��ގ,_���׳���S��Ln�_�r��A���ƫ�9�_�*C��Y3ٿ�� ���;N���j�lv&�Ƃz�iz�z�|>��UӅ�^3И.���� 33��6���v[a��ѡRg��<��״�^>��̩�$k��2'��Ց�AM���>����q~���М���o35DL2�!P�]9~2`�ib2	�S��Yp1g>��1`� Ӊ��@̊� ~��g���!�gI�~�f�h��C���<�k��t,!^}��a�\E   �N,ӻ��p6����C�+b�Ӫeѷ�����~ڟ�Uv���r���尘��{	v5�&�CT �S;��z C���Gk���y��?a�+��Hf`�z�&�x�l
���x�pMEK<;�ʹ� �S�?��Ϸ�ţ�'k���Zx  j��$���c�R�ok�ޟ��J�wa �(0
0Ы9��G�����||L��e��	�~�d��-��b�:CX�r�G�5�ii��bWy~����QUl�H*  h�\��_��K����������s����w�)#7�������������:ש|�������T�����o�)@��:�
z��7tB'O�+����:}ej���1�����
�15�a���J���?�_T�S�T� &Fg~�����?�9�߿Gs`�uq�!��&N�U{׭��V�1p���}�*��/  �<��  �6� �ٍ$@2Q.�����`��> �i��@O���#L�� ~�l�}�W.�5Z�dΒ�����Q]mD��*����x? U5����H�DA  ��˛����֟��ϣ���s�>=���;�ː�����~����7��;��g���h1c}U��;��k�l�$�eų�<�ǿ.�9J��?�rSW%���̓P�5}w�^MW6T������z�7��S�P��ޥ"Q��>ɽ��[��T��z���|��=�x'��QUhj̬2����r]��_�:��I5 V,_��~�  S� A1l��Ҁ T��e�U |�!H |qn L����SH�~����=J��#�-޳���<	�*�ڪ��������`/�ֵ�6��TU�   jN�l�r�l:��\��ۿ�?7�?-g�&�Y�O5)L�䬔��}�~@��r��lX�Xh�d�������4A;M�$EnW�'W ��#���+� ���;OX`۷@l���S�8x5���c�q��c������>G�O����X��U��<� �̇�   T��4�i X�;�G��v�0� )&��5i�]0p �sD�\����^= ~�L�sK���2C��}g�H~=�BX��YB�z/�
�w�����T�VdӉ"U�b  ���+��M����/o�p�8]����㿍�������ׇ>m�4gG�~��J��������$�0S��ܹg%#��ӛ���c��7[�a������ɂ��d䝟�9��x�?3f��ɡ�QQ�����M�~o�&�$$���lVh���ܧ���P�sv�b�m9����.��l���X �Ȁ����w�$ڰ��  �0����mi��y��kl�q�6Г��yp�Js� ^����9#�F	!�%#�<=T�l�V�{��M�����k{X��0�HUL�e"Ԡ*B   ���<wIO7#��C^��\�.!bƏW�k�Y�����������t��hvO�4���W=�I V��ə	�	d��tj~��j�z�j�*���pLq�pN'�!_�H����L<Q��� rP�K8cԊe��ֶ��?^��f�ׇ�˙Z�Qs8�g[�h�:  ���`h rg�o��?!b   I�'�w*N*�48�xJ-G%[h�I��V��� N	 �����c�"[[�0yvMKN��7��=��b?{/���'������;5��\��$�TU    �9�����yxe}�O��)x�]{���O�>��]�D�r����̓9�������Ū�xl��)�ߢ��1 C��И�I�+�ӄ`h��!�-��W�&2T�=ݨwפ=d�����y�~#j�)�kDɒk�MO��>�k�A�$��L�ף�?O�r�N�1�����2 3��1 �:��6���H�@/ݾ����f�ȿ�~  `8�B��#p��r�����B*����hd~����rc��:FăD�Z���w<S$�N�b��C>�\`�q����_��W0��8��Ū�*   k�R���m��W^����>���~��\~����#�O7�����g��cz��|���5*�:u ���!�T�09�_�G2'���J`�X�(|������`�>�S�~�L܇>�m�i��/^�a��7�-�>ܘz��������al%�����a �W`w%p~�  �>	���  ��0[��	l=��e�o�$�^4�@h�PJ�A�.�)8ؑ.5���~�L��� �v?k(L�+KF�k'Нzd��V�C��.�i�����J�-�a�V��   �r��;�Ϭ�o��^n��z%�k	��Q��eq�`5������~H7L��u�ܥ�п�)
�*h]�TW�O`t�c��k�s���&�Z� (��,j�a�M�]�t>�t[b��b�%��&��.^?���o�Qd}���$�$Y�*ɩifgܼ���U�Ȇ9�?   ��   ?���9 
ep @� X `��� �\ �;<��L� �#L 2X��_ 4 �����
+���۝�l��V@B���[��/�����*s�e�aYED�  ��S;-G��`=â���͟���c3���N���ս�iec�7$�yܫ�ա�\�"(3P=@����?n���82�EE�ә��_m�?�HT���<�Q���z2Ά�*�6�3_��/���\t���g��n�4PY]�,U�S�N�zי,���� �2`� ��P�D  pf<�����@ @4�)強��`Ps  �/Y���Ҥ��
��`����| V� ���Kb*����
wZrw	�Qd��&�~��U����᫧�/�0*��b�J����  ��_w�"�߬�I�M��'hJ!�����H��7=oj�����a�����w
��`I�ܧ��8�-��fi*6�_��Yk�g��gg�����S�����,�'U�̜�t^W���
c����B�5]�c��׃+���Ҫ��D�c�vz���H7@n �r�a���b�k��b�D	`z�JoDiN b[ ����Iz&�"�*>�#��M���yvj�5�%���5 ~����*i�]"��=K&��)�H�g
#v?�n}kN�����q����$A�*  �J�Q=5L�8�f�����q����2=~���!y:�w��|��O��o��o9L� ���u�a��� ��9�B�7�r|��j���C��R��ᜦsvp
$�͆gГ0�\����8þd�xO7U���"ax��g�:�w����~��Z[Ǘ�c�r��3���������, m����Ƕ ' ��
U���H�
)�l�
���h��i����@\�~���罫"�g�Mqu�%5�s�B���T��l_�X����|ĉoAe��b��D�  @��.ۧ�����ZBKߊ?�9嶓镹_˯���+7S��J�j���� ����.�cXx?�E���g-j��G�B;�*>f|�f���L1�'���:)�yU;�sr��6��ݙ�/�_x��UM#eQ����d���t� �L�l��*b0�\   ~�����4�� �wm?&�FT��� n6P�
���;m.bV��%e"�	W�Ao��~�,���Mus�>goZ��	���[�����)�:�p�N��ຏxRU�-�MI#U   m��Yb�C��ĹM�Ϳ�b�{֟{�]|46�/����Q�ǽ9(�~�w2_�^����PT��*��:}���}��I~�A�>���@V�I��4�����Ɯ���0xy�g�z�?���kaΩ�����E�YZ#������L�&�t��E�d#8�Ƿ�<k ��~A��cm�7s�sq   ��}hr��  L�2��z}���o�# �d����J�#��r�2d�^lj.������Y�@���� �������X�UwX����Ru�R���;=G&�}���?�P���J,�X5��  ���|�f�õ�h%r��
!PV�|�0��;�_j�F�����Xg�??]yLl�4әٸ�U=�4���(��6��Z���I�h�B����#gs\���ܕU�>��53m��x�\�L�Ł];��m�e�bf�����ڼ圦r�!�v0 Y	����jB����U%�$���;�� YV�'.0�,�6�����i�PU݆��Y#C�e`H��Y�� ���@�,��ޅ�z'�gɂ?�&�B}"H�7������[?����ՠ�  �:�MN�O��ۆ���Q�$����ݓ������ܽw*#7o�+��5�9�F��0�p�z��h��3�%��}C6�i ���&�0@w@��PWU������u��wXo�`@y��R�@A�Ҟ�H����zީ�e��a�ίA ���Y�Y�g��!ȉ�t姐�\!�v�������Wצ58{]��	�1�c ���,J��#���N]�J�F4� ~�����L�Ч2�gIC|����L��q�8�����U�� �fmLU�LP�� @���������X��3bf��bw�_������c����_ꍡu��"���U;��_;6{3��]���"��������F��b���I���ƭ۳9�����s����N����|��`�Q+��]����H�C����|����n,�Pܜ��=3U��A	@5OrNsΦ��`-  䏤� ��k   �9�e�z��	���~8�%��4��An����,�:q-bA�p ~����Y��nΰӕ���9��N2�{���a(��&�V���*   �.��	�?�S{��	�Ou�;�i�����n���?�a�^���ï�q]Ӝ^L%�V��{�2�8����Ѵ,�=�ԏ���p�l:��j���&��|rݼF_r�-�ǹh��1�x�=,�]��%���(��x�� 8M�d�s �W�4C�$$/@q
 H��|ۚJ� ���d� �?x� �͙�����Ze��p�R�Y)�"��� ���%\��QMڟP@��4���"��������KQ�)���iާ���Tb%U   �t�꠵:��X���,��n��9;N�=����዗�O���r���E������!g��w����xO��rx{�t~�������L:����}k����e~�dg��|Y��1����/��Y�l`���LǳQ��LY;�QR�ǳ�:�f�����*��s���s����$��ن�ĶW��2x��AՕ�J"�H2��@
��.���:������R�;��H��̽S��.�ӲwnG��ԟ�B���l ޕ,��nE�P��+���wvC`6�o�ӣ7��8�ZkTqR1��
  @��إMt��[��ҝ�ޝpKU�>����dy(�o���5�O�$���Ȝd�z�i�I�N�~W�(��L�J�˯:ʞ�EW����)x�����f���O�k���=���{������1ϼé�=uޙ1�S�
�+g�w �6��@� W2����oԵ��'�n\���Iw^O�O$�_���r �>w��Jn�cr�L�d]}��OM�{��i�兝)-2��K��~��b�i�*�?����&�Q

����k_G�Vp�v%5���� 쉓������FuSL%[���   ����I���.׭�x_Krb���q�E�W�0]>Dn�>�\��b�񧋮s��igr7x�l��PT� �/3���CNJ@Կ�Ije�83�P�}vU�#�[Co��ph��X�9��v3���o��$��cMQuF��]�/ ?��~����&2��,s�} @&�,P���:5��;�T}���TӋ{$��n�z�d�a Y���hb0�Pd �1d6�w�a�.���A��T"z ~�������B-��J�q�?��8�' �6��U�������   H.s�mX¾����Mx�𼹶�Mw����o�ɢ���<=�D������{f�9	s����"� ��$��� Pô�����>i�O�{�}��u��y܏��9�{�<�$��X���}nC�4Tu�MM�;�֛s3�s�}gzv�u�fS ��Oס͇Aް) a��8��}���N%�P���W�+E�����<�]�<�k���8<>�w�Y���Y�
���dГ��$eA�U�c8 ޕ��C��V0Ͱ�����?e@�Ex�O�٪�d�$UU   �2��������o����<a��O�������T���a���u�3��R������=U�Y�wpɆ]24-�-(Ot��:�|�*�ѐY4��������)/m��
I��JIo�Av��4`�6���F��{��>ۏ�h�g��b�&�:3^� )`���##`E�^��ݚ4���G�u`ve����92���t�ŝs�@�ANE�R �^�\�M���u,�����V@��������&SlPU�   @�'w����Q��-���^�'í���{<k��y�o�$8�ݾ��6�=��Y0��w.�=crhU�l�����}{��Y#�@5uΓ�y4�2���55���6}�9&��هZ�]G�Ӕ��L��[ե.N�w�k=qge�\�ʹaܩ��=5�Ξ��1s''�9��m58fB�o�����'@̚��<Ezӟ�η��Cͅ�%�]4�[�ֽ^����`��ހM�R��}�� D����T;u�i�c�3�@>���SҺ�E�
wX����y�TTp�����,<��l�r���X��    A����p��@���fu����{��V�_^�˕�2vܡ��}����ѕ�����=�s��Rm�
 ]vuCҝ�wy��:�dC���Vc��j�U��m��g�o
�دԺӳ�u��ۿ��Ιj� _�MC60�P]��G��T�Gą�ݵ,�;�,�nL��J�TͿ+V%kA�b��� �園�_! }�ɯl�,Y�[>W�T�B�y�,��"�(�|Ee�(T�2iP�'8 OggS T            ܫ��*�� ��#��"�$����
��	������������(�����?�R�	��+����Pi�����Ǉf���a�<�*�LbU�    Y��w|��-�.���Z�zm��f����e<�����E�/��<F:)����#, �n-�|1+9U:�< 1$�P��}�gN&��~K��v7U�5!�)&�d��V�mr����s��g�$j��9�U_��X�a�?��`V�l;� ����Gu�� b���,P��S������`�������FN�R{�6S@���e�/�@>�� 3M�2������CO�!����E�~�\��<~�&4��^��"{�e���TU  �S:�8����Y������I��w��|{��_�qT�����i�C���.�����x,��j�}�5s.|Q�嫣�g�'���.ܵ,�5��Pk~����z�q��O�-EE7���L~���y�U�����BS�����0 �0M�r}����ٱ�?]jc�j�:��@�jT�{N� +��=f�=�NFMl.�޽:)H�����j��Ft���=�-_��+<��wI�����IS�KQ?wj�N;�� ޕ����A����Kx���i��M2��`������&:AUU  �ޏ��u�b�M㮇�r'��93�Z�J���ex�8\����E�)��/d���x:�MQ���i�~�������/jNC��@�Z�}6P��"�?�+�rr*�[����3_�̮�<;= ��5��h֓����]��Z���e������˾=]�����09M] | ��A
�T����q젺t�H_� ��=�"�U�����p��*�cE�I���i�z�q������忺
�����+y�����f������[�|��TŰL�HTU   �R���������/.ŽKH:z7,��wy�acw!{�)�#��姳�6}*=?<�\�=�[U�s��>�����P��th��7 j�rd��L��䮤�>�+5Eբ�}�����] �z3�}� r؜͔������9�:Y/�wt��y���S8�f���4������G�k��������j�����>K�O��)�������K	�ӄ�<O����:��!F�;�t��n�5���<�V�u�A3���\�U�}7ô���(L�q�bS�b�QU    �٣����|�"������I=��O�����j����K�)o�0�O�7�W��8�l����sO����CY=���.،�vu�g�Eyei��>'m�I��e6@��'��3����-��Np����:<��u�rQM�U��8�xOC���L�&i�+U�~F��wO&~��&��n>Py5�ٝ��I};T���3�6� ����|F�oN�l�"��WK�j-]/�D�m(�|v�G���i) 4h�<���va�Lޯ�/��+�jh�>�k�}�����g����eTU   ���8�]�|�5W�7��+�[?�������FH%�+_-^=P��|�j���SAɡ�?�ly�����������]~�:OW�:��:�_�9i�����>F�|���>�u&=�Q?1}U�~��n�-��<�d2gȚF{<{�#`穧rt�J����͞�T<�r`�t�˲���Hg~��c��!��;~v�������m�7y�O�,kۼN��l��_ѱ&!�r���4�p� �<�U�3��������C�Յ'� �"_�8��y��>RUw*�EU   r])���p� �����Z�'O�TX��X�qO�I��ͻ9�r1�G��c�V�+��h?�G�l�oN4����z��X�ہ���� ��a'�����P���{��pN&5���W�?��g��Y�T������YS��׾0�d�O�1�5t��5=h����$<J=��<��L�ݙ4�9������?��c��#����3���l�q4k�۰m,�_���`i\��j��ׂ[+$v��:�g���ʠ������[��U����.Q�}aC��^kk�="��V��T1���  �v�0^���ƙ ����O��������n���*�Y�e�ѝ�IW���顗�&�������R}s$2�(�p-V1y�9�IW�'ʢ��qV����x��d\��m�/�)-����޿��@_ܙ�s���ĺ�@V�R?�y�n�7Q�2==���G��Ao8lWe~��ΙN�yi�7dk ���27Ix�5��O����n�G��U�>j���E֒�����o�6~jn|�S 
 �������i���-�ơ8�ҙ\E�P5R�lb���   a\X}�}�xӫ_�H�=�1�K���ځ =������f�v��}��}U�6Գ,�|%�zFgz�qt3=��t�6I�ݦ�ɾW���95 (r�W��I5|�{b�3�	�g��6g�2g�?V��:����ʥ�V�f��~n_������9��3P��/��1��'��ѵߤ�z�SW�+��q5R
WȎ/��s}*�ܶϷJ���%�`��.˟���|��`���ኡaD+@VB �|�U�Ɠ�E�%�q�p
c.�,=�p<����Jl*FTU�  �E�]��񇇃�q�U ���> s>�>�ݯ7��݌��d���y8LW����r���uQ�����L��T'�����-O�0�3*�M�;w����~5�l r��U��,������_4�����A힙�}�9��A;s�t61�������m�yL���x�w29d<7��4��T���$y�(�^x�m�"!�u�z6���e������h��k��@�	%����^��z���Ţ�C��s�Ŝ�8LP �|,ǷT�/�V���v��*�b����S���V�V1Lb�T    �[����'�n��� �����֡/8y�ʼ8J�;M+�'��>��/?�p�_g��wÙG��M{_t3S0���	��g>�4F5ճ�n�u0��~�>rA���C��y���5W��tμ$	�9i��]�<�	̦�u~}��d�M/|���D$3��[*7y�s?�5e����zF���/c̥���8d�
���e�Oz����(m�����X��`;�����g���a�a�V��|��W�l8�W�Y��q嬊4�T*<�`3[�-�TU   �8��aC��������: �Klf^�W�/��n�ۇw�7_/��Q���wr�����ƿ���<��|����ե�|���v0?�:t��ԩ$����$�<fi�39�-]��nfLl�Iu�T�̏���ޢ9̆j��W�T��U�p�Uy}�x����l�i7�{����N���4W3}g6f���m�a������NT3==C�s!�*'��hz�CQ���+�h���Հ���m~"n�W��?ߑayٓ��U#=��|-��	K~��Vثd���ʟb�ͪb��2IU   �����������v���3��������p�Zs[��K�������׾���z�����Zs�3ҟ~�'�Sy\��4��Ն��fz�Ԥ���u�����ᨿ~��3����T�;ݐ�s�.�O3�l��P �<�k�|��U����g���u�����z*��ܔ��t�[���?��75d�U�����&�,H`~�\Bd�5w|?q��sOx<N�_i.�¹�3��|.秅0Vl ,�1��@8+&��U)U1)E�
     ����CXR}���=�����Gӟ=�6W��\���}�5��۾J�-���=^F3��<]������'/�i�{�CO¤��w����_T�{���,-	�+"|n{�UE7����f��If?5��t��L��a &g�s�֥�Y�5_��'I�X��{u۰���_�L�_���Vr�\�;ߝڭ���k��}�؝2޺`sk�1Dh�F�@���؁�|��U6l ,��˯�2� �����^��*�����   `�l�x��o'ŝ`ǈC�/<����q�#�9|�t_'a�0����S���;rOV.ӧ�S��{���{~�}�nQΗ�� ���X�q��$s���O���tvOR�⚾ON�3E��5����L"��ʄΙ���N�r��䦚_K]W�.�y��s4�@���!44�X~e���c���ҕ�a��h7,I� ;7�&i�v�������e�[�|�� ��\�/&�|��O�pm34����S��jV1�a���   �>&�K�o�l������痏��YG��*�G=ߧ}/���_����H7瞝dW��̿H(��ϛ��ﬓ�t��=3�g�?5�W�.X�s~�Ɂ������*���{�I�I�;/��2��{v&����������}����ư���t6=Ca�}bԪ�� m�׿a��tD(����h�z�dU�&H����Ͼ�JR��6���|[I0�ŵ?6�r��t�|o��� ��8��#�SK>��#J����g�تb��0��   @��7�r��h����� �_�ѓ��Sy����9^곾m�{�ߝt<ɸ8⚕�h�f
�w��=؍��*����3���]5F�l������_�8��!� E��;sNn�y=�S��ȝ�ty�VJ_e�:����o��	����O�g�dz. j��8��K�g�>w���͌�JI���c�s-�PB��y6�n������Bn8�|�ǯ�0.l���ן@�0�pܫRUwJL��     n���΍qn�W/��'G��߽�����g>~��|�;�̞۝����������8�П�9w-m��>=M����߉?�0{ﷺjO���R'�!�I�������K#���C�J`v2���[�IU2�Q52�o��_�:���k��e�`��3�_��������x��f�5*g۪��5͸�Yy�	�C�l�^�s���!�\�*�kZ���dG��K\=� �|\�! �fa��}���g�l�è�     �3|��/y�vI��]a~��KO�v���[����v���G�U�����㖘g�>s����+�����>b{�U�KSU���:�5��W-��t=�옺w�'���t]w��l���CuM�XMm� ��,�@��R�&'	�|�1L��s�p�g"ָp����y�d��۝fI���I�RS��rWg����<��� ��|n�;M �J~��'ʅ�}e��a�QU     L���<f�w�C�˻�G���}���Q?�ޕ��;L�>Vm���M�h��Kq���%I��CV���缝#�F�XP��v��^M����44�k�oz�e|A��u�LD���0S��� 9u�:���B����x��YuT��U����f5�T��b3�k\L�)�^�ַ�ѩ�INR�r�H�'��As�C�bB� ���:��"�6��8��t�����R�0��P     �%AxY|�%-��~���/��0+_�ֽ�+.b��"M��ۗ��j��2,S���k��"�*�WN̔GT������'�Ψ�..��q�N�מ�o.} Mמ�]�`�uf6f}�6���
�S����(ZS$�k������H�� ��N[���(h�a�� ��)|F[~(����5Pa!����4\� }�P�0,�ӧF�6PD�|�G��`�������B�0�a߫[�RbTA     �<.�#�o���J����7�7'��G\Z��zyy�����u������*��>���pJ}���m5U<U����w�L�_�꧘>y�~����N��w����Цޜ����s���9Ke�fv;�ݝ���k���=�晩�S�NX�4K�o��"���T�@͌�^�df���43/��&�tl*�#@��t @���V92��1�N��A��|o׷N�"ڶ���.o��}��T%���      ΪE�ׯ�Ye��^\?�����tNO��Ľ\_3�O?��v:���b�M��}�<.����`�0����y�����;ס�&�I�$�wM9ט���q,&7d~f~c������o��$̮́�'�:7�.�3��Lè���I@v>������k`ts���<���ݿ� �:yq � � =h��� ��|��������+� }_UŤb�"D�    8 q���δy�:��+��é��_m�t���������z�����r�qUރd�[����;�[ T�����RvײZ����:�9f����W����f�&�J2I��ΧOԚ\����_E�VT��g��>��c�:AV&}�ۭ{�\���I�T�J��mr�k����~�� v_���z17 ����eo����u�ȄLd�N;TȎ,���6| 5h� ��|o�7%�	|%?��SBp����*���0V�      ���..t�����K�ǣg}��\��ھ�Id�����x\�>n��w���8���d�|i��yv7�=9]u�����/Hw�Pr����6�5��]]=�|s������>�а���a�'����Y��[����k6E%$�}
ό���X�y���Qj(�@��6Mа _���@���s�` >���(?� n`,��Y�t�   �           , h 

================================================================================
// File: assets/sounds/alert_dismiss.ogg
================================================================================
OggS                 <��vorbis    D�       q     �OggS                 64%�0�����������������vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS �W             J��G�#���w�?D=�cj_t��̮����do�x�A/��Eţ�Hmg�y,�J(� �1�d%���4܏�9Ǩb3�Q��?����O�w;c�
9¯ �e�fIb�-�õ��â�FX&�3�@FFFF�  �Տh�L]�0��I  ���q k�Ѣ� H@���e �P ��P�{ �%G�P����Q2�˝�,��0Pà	�����(��kp�Bi0,"�DIO5'�t�ZI���PЦ�~L*�X���ꬨ��Ӑ�m��b���S6
 ,���4"�.*Br20���p �W�Ċm#�0��;j�� @%Q�Z�7R	
��6Cb�� �4J�4nL�Vҧ�  D��%_�4� �N�=mDH]p���e|s����5�������F	�kB��B   `1fsp c&f1ff& P
 P  $D$�B(   �ۅ���S@x)w��Q�Q˵��᱅�$=�j)��mM�Ȩ�K�YE��H8��xv@f"��!�mV��F���Vƾ��Y�92W�g��	�b��bUF����E�ΏP��&�{��!
�5<�Cr��s����i��4�,8  ����9�9033��L  �(�"��F�U �� ��
   �a���f&]��k��w��C����� �k�!i��u� $��$��M�����#m���V�֯��Z��K��~�ƺ���J�m�#q�-Up~�I����8z��ۃ�.� ��<훴6�����	�-O�&�M�91�yN   fb1b1bfbff�  @�Y  ��UQ�	O_B�P  0t*�zX��cw*����Y�б3[����Zg�q2s�;'�'��+a�oH���gi{a�],'>�86��ֺ|	���n)"~r���_�^�'� P�B� �]û�6�o�2x���]r�귉sZ,D  �Y������   �rM  `X��D��H@J�K@  '��������c��� 	���~��m���@0�W �64S	��>�4�P6=�����5q��gp�ں�&Ι�3�2��
 H `fcfff   @Uc��ƨ�fiI ����8��0�R��{ ���*V��{t=^�&����r��� �Q���B`�yHp�bh3b  �/����˩v���SC]��T;��f��� �bժ`�ZU��uш�(���_����~}���� ,6�����9x���k�5�s�e���<AF��a6��V�j�j�߯�7��TP�E�Ns����E�7�i] �~���瓇�>B��~�����v�z��K�����[lP�nK�$�[2�� 4��!_�S8z���鏀� �������;�n��G@B���~����@���Em=�EY��^����� �0 �	     P�c��VTL�DL������V�Z�jź5�6�h��V���������V`����j�B�b��0��[ ,�*   D�  >�����ޭ��;��_پf���~�w�}����W�/x �YG �   @   L      ����a�V[[C�X �    �F�#)�   ��   Z �W�������������U���bﺿ�=������J�  �1  �  @     5C�����""@6  L$�7Z�      � ��(     � � >�~����=�9�0�~����=�9�@0Ŏ	     0   H ��O�h5Vu�TD���"�bĢe �4F��    �- ��B�
 �����̿-/��8kxc���ߖ��u�5�A��   @ fbbf&�  �  �va�q��    @'�2    @ "?��S6��j�X�Ȳ�=
��	�,g��M۞�V��� 1>����W���5�1����3�z����q8rtL     �3�1��   * p���v�NUk,�-�E    �)*(�     ���]م�L�9dk�sbVc٠�۵���/�Yx�Aʉ���Pd�<�^@�����"6�����Ғ�o ��a��������~s 8o��   �L, ��b��$�  �
  }�dr/b��iX�i+�բ�@����ZT� �    JT������߆�Vv"QkN��{=�6�\Pi"nY~eN��׿��qOt����f��[3���Z�{�.)��:T��
'�e�|��}���M_�ʗ1�����"�7}E+�&pL  ��ňS9333��$ @I ` ,E���-,��Bm��	�ja��L��Ԫ�Z��":E�ht�F���ւ   �0<    ������}A���k_J!��X�H_�/ڂ���K��4KR��X���*/~M���$����6�Pa�:
ݤG���G���@ �5�������"�߆��5�������"�߆�@��3 � F�ȁ������ �ְ   E ѓt��T-�~�^_����鿖Aj�B^H��vy��/5<�>�J�� �Â��U�p�	NG`:8q�"=�f��7��W����n NqO�;��`WJ�ǌFx '�R//�A� �e���ſN/��ov_ơ��_���R���f�A��0.� @@,�H�8�3133�$  V[U  �=!��"h-� ��	]5  J��^���I��h�PI�����h�`W��^�X�ߓ� Ă�u�
���Wq��[�����Ac�r4=A��}8glG}=��f�	�j%b6�����k H  � �e�}�?�?��?��C��e�}�?�?��?��C�,��� b��&fbfc&	  lT   �ƂE� ��K���?^>������������G������b���zcu4lA@5"̹������A�ք�s�'i�H�Q��u������ �u��eu���isd9��u��m,�VQ��o�՟�CRA�������������2؇ �5�>7�X�~p����!�����2��U=;[�;�rp#&fff&� �N�  P8�d�K4Q����"�
�:U 0���I4~]c)���p���\�m�V��j�D����� ;n�#rT9�����Dz[M_׻j�91U;�B<Ұ�"���Ӳ�{5q��kI�f��OV�*I��I�$�ǌ� T�2�5��/�^3���>V_C����5Ï��c� 0	��'1b�T���)���$  �T  ���(""AA@��@QPDш؂*8ug�Q&���{�I�������]e�4�%�0(c�QQ�R��{��xy��;��#���� K�8/p9�L�Z>�A�Q{ax���=�{�Ȓk�� 	Ȫ�jH �e�\�zwTo�I`�x�n��8޶� �C
103 �    ��ϟ?���0[s���nKL�ъ� @+��3 �v��r�|����dr7s�Ĺ`��s��x� 

================================================================================
// File: assets/sounds/alert_money.ogg
================================================================================
OggS                 ��v�vorbis    D�       �     �OggS                 �I�(0����������������<vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV   �"LĀАU    ��7�{Ƚ��{��G{����{�G�z����{{˽��s 4d   �)�r�B���Q*ǽ���0��=��Z�!��B�=�Y   @!�RH!�RH!�RH)��b�)��b�)�s�1� �:褓PB	)�PJ*���RJ-�Zs��s�A� �B!�B!�BBCV    B!dB!�RH!��b�)��АU    �    I�˱�����%Q%�2-�R5S3=UTE�TUWU]]wm�vmՖm�Vm�vm�VmY�m۶m۶m۶m۶m۶m 4d   �#9�#)�")��8���� d   �(��8��H�%i�fy�g�����詞
���        �x��x�gy��x�gy��i��i��i��i��i��i��i��i��i��i��i��i��i��i��i@h�* @ @�q�q�qGr$Y �   @R$�r,Gs4�s<GtD�tLɔTɵ\Y        @,ES<Ǔ<�5��4�MQ4M�4M�4M�4M�4M�4M�4M�4M�4M�4M�4M�4M�4MS�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    ô��rύ�H*G�֒Q�$����Vs4�I�!b
!&1�:���S)sTsl!T�I:�R)-BCV � �$�$K       I� �� ��       @�4��4@�<                                                                    $M4�4�       �� OO      ��<�=�E                                                                    M4�4�       �� O�      @�<�E�E                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 �$A� I�4�dY�4hL Y4��         @�4h4��4�M�(          i4�QH�M��A         �L�Q�i<ӄ(Ba�                      �  � � �@�!+�8 ��X  8�cY  �8�e �eY�  ���"                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y �h@�  � � 4%(4d%  �P��4Q�8��i�ȑ,K�D�ei��&4��L��y�	��<ӄi���Q4M    6hJ,Ph�J  $ ��8��y��y�h���q,��DQMSUU��h�牢(����*��4�EQ4MUU]h�牢(����.<��DQMSU]��y�(�����QE�4MUUU��h������@E�4UUU]��(�������4MUUUו]�i������TUU]�ue���꺮+� �u]וeYຮ�ʲ,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�1�$BJ1�s!�s�9�c�9眔�1�sNJ�s�9'�d�9眓R:�s�I)�t�9礔RB�tRJ)�sB @  6�lN0Th�J   ��8��i�'��iI��y�牦�j��i�'����<��DQMSUy�牢(���r]QE�4MU%ˢh������4M�TUׅi��i���¶UUU]�ua۪������u]�ueȮ뺮,  Op  *�au�����BCV   �1)�R� �BH)��  � � �@�!+�T  �k���Zkc�Zk���笵�Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk���Zk��V  v��N��#���   �A�1�$�RJ�c�IH��+��PJJ���<��RZj-��9� ��Z�1&�BH)��b���B*)��b���Rj-�k�Ũ�JK1�k0���Z�1�Z�1:�K�1�Z���c���"����Z��c�����j͹#��-�Vk� �<8 @%�8�J�Y�hp�!+��  !�c�9�sB�R�9��B��RR�s�9!�PB)���1��B��RJi)e�9!�PJ)���R�sB��RJ)%��9� �PJ)��RJJ-�B(��RJ)���RJ!�PJ)��RJ)���B��RJ)��RRJ)�B)��RJ)���Z+��RJ)��RJI-��R(��RJ)���ZJ)�RJ)��RJ)%��RJ��RJ)��RJK���J)��RJ)���RJ)�TJ)��RJ))��ZJ)��J)��RZk)��R*��RJ)���Zk-��J)��RJi���RJ)�RJ)��R  Ё @��b�W�#
&�BCV d  ��RI-E�"���B%sPR�(sR��B� �$��1���T2�R�A
!eL)��:Ƙ��j*�c   A  ��	
��@  $H ��"@����  �"�$&TE�t ���� i�e����@AB�( '����p�t�J    � <  $@DD4s !"#$%&'(    �   I
�G��H��I��	J   �           �    OggS  @�             b��[MPROR�����_�7�g�e�d�j�G�U�^�n�V�T�K�9�9�9�G�<�:�@�@�6�>�;�D�A�=�:�G�Q�|�v�x�^�k�h�_�m�V�k�r�G�-�k{�g��!����N�����Q(��!�~\���׏����{wA��S��]�����7j�lP�+[A Z�]�P� ���ha-�멆����j�;�d���V��	���$^��/�ך�D*�`�>�NM+5�����a� K;��� L:��ф��cm6SF�}�Й��6�C,l.d�o��� 靏�秞?�2��TGm难k� =��3s��{����Y��Ofc� �)�L۸�i%6Ǧ!���~�/����>b`�q�Ȫ�������ܾH��ܳ�Ӣ������~v�	�ƶ�=V���"��[0:o�����8ݑ�r���>9�_������u��`������f0�p��mĮ{��ko��x5Uzɇ��Y��H�������_�"���1������+4�w��J�L����4#_�z�W�k�ط������������:[:�Y/�xU"���D���� eF�Ï���]���uK�}s%Lu�3�������W~����J�P_iZy � Q4�	ZլY�sZU����j�����p��<��Y,Gqު�ㄜ��}v[�@�.f������W�>O�,`����,1P�g��C����nF\��^�2/F�b�d��I�5�'mă7l��.��E��0�錳���Ȫ� (�O1�[|���ي��4$R��{�qIoY �����~+\O�^ B�X�
ak���a�!���UMD3�A����8o�y`�2 Ȓ�!�KQ2T^u�@TE����������F�LՇ��c]��r�ú|�ճ�*zm�����љ{ ,���ȑ*  �V�,�kQ��Vm��GZ�]���g�~��R� �8�I�-������j!�r# �KM�Ƣ^leO���\p�woo�<��p>�-��Y @�NrXk�$;-��
 `u�-Y���9�b��������'�8ڦ�~��p"pEֲ�OO2�vds�R_��)o��Н�2�j] �����^ �����FR��FCg�۩�p�`�MC(��1�nӌͩ�]� ����'
b�员��1��V-1��;����È��,e�E�$���T8H����hX�o$�%�PQŔ��    ��j ���)��� �,Gf?ֱ�y,���F*����ͳ1���}��~�������W)	����?H������G2�%�� ���k~(�~I�Fh �6 � 2�~5̆�t���V����梚ž����='K�a�@2���D� �N &bQ�����p�Ո�*( �V��3c��1��d�����^�μ�J��l���1�z2bDc��A��0EFrl����Ix2��#I	۠
K�x����\z� �RI��>��" L/��mۦ~Xݍ���b�F\'���DC��P�!��� �m���"��|���C2J�+����䊄"%�l�ӫ�R�ꯃ�7Sc��� L#K;�@�� u ��Ƕz!�����7�Bklc?a �}�t�x�S�n�N  �Ro��;��ax pX@&*�T�.5-0E�R,l�   Ǣ�c*Q~K�� cd$`�K F`��#5�8Ťtb π���` P��W@EuH�j�uYy�s.#sփE�y�����Y�*����l���am����t���a�����"#,9D�1��LڧA&3dD�B�l4J������,y�(
����bz(a�-D�L&�<��R�܀�-
Ce�j�
A5#.᫶z5-���6���6́!�w��X�
����0`E�����ވ���9})Z���ʌ�V���U�d�Xh��ՑC@k,���z#�֞��6AW��	����1��5�Ju2��l�c�8�Nw� ���a2���lK
�ئ	���Jp ���(�fb�L�D�����a X�K�\��.f��� ���C�"�z,���ʺk""���K�9�*�6K�E��4���w[#kR1��d��v;�	Ֆ%"]�٤�c����#Q0���p�7+��I�~��:~�F�wr�^�y��ez�Y��M��	�l�<�e>Ci���U�\T��.�o@#�$	���G�V�<�V� ��x��O�f�e1�3z
t��؀�r�X 2Fꍱ��ް�`���&r�����V*�O�z?�w��Kj�C_� Ј�j���1�c����ٸ�ʤ�!�R:
z�7�!�5}�:֦�
�y����+퓸HD���uQ+�J�B����7Yi���>bi�Z�t�:�� ���� ���c�Oz��%;�:)�=%-�
C��$7EgoEC���z��m{��3��q^�*�s�xL�r�Ks푞�^px�>�a74M�p
�JA�_�<��䋡k99�~~��RՓ����^hW3V� �1h��9rP?uU�c����XQ,�u39���Jv� ���L9�4�Ѯ�z�X@]�� b1g�B�ם���4��D�,cO�1� )Һ*�5���YsKm�(�}��]�<���\�� ��޽{A�3l��1���aha_Z Q!t�5=�*���N�#q�:���#`cK�B ~z���lYv�"��N�z��K偪D-�F���E �X*�G�5������� �L �+�KkΗoO����z�
(��^@�K��+`Tɥ�[���#ߑ{p���Κ������>=�DX��wܜ���y3\G¶C��2!��9U���Գ����/;�����&��]E�{��h].똔��M�_�~��+J��$�1� YC
Ib������[4��� u��XX����&����Z��EF NԸ�xe�  �JFHH�!H���oB� =	 ȩ��T��+�gr��@��O�`�D�8e6� ���_v�[����*{��w�MuB�ϕǐ�n� �D-�m�B9FF �)%���/rϔS���#�������T�Σޏ�U�*��H�2Z��r  �!�Ǵ���S-���ǁۦ��7�ed�bm4�� j���� A   .�kztO�f8�IN&��E�c1���a��fx:ʾ��n(��sy��r{]څ����&3[��?O��G�c*��kr��O�բ����G�	I9'�F�*c ��Ҕ�J	 g�B�tZ���a@�ؑŊ:�7b��
#! X2��(@�"�5�����E��  �~HnB�2�_LĚS�O�5[S������7�	߹�տM�p"���*����N�Zn��C����XH��Dd��;  �i����!��E���
����~a�~�����zo��UI$�0z �� ඳ�7�ӥlZ�>^�Ż�de�M�s����� �`��) �d+YZW�¨dؗA�Y	���B�ȶ��U�6~�?�3���,���-�U�<=U��r2u)�k&N��V�n'�ua�����U���U������<{��������>mB� AU�Ժ�33 0	TiM 0�bJC<��
A �ڀ, a�5H�2����b*ˍn��	=��gB�\A�T�MӥO2u�I��9f��T�m�6�����<h�pPC1Q�y�Q����Q����� 9%7�G�D->tNi�`d�]��kj��r/P�Z��Dy1<^ �s j@I�* ��ѵ����ޮΪ�1U�_LԺ�wq?e��xT}D�
"����G}�O]������g�2�����"5̀#�Ӕ8|moO3 ��p6G:��c��F���]d3U�냟�j�+��݅��Y=�ËtO�$��v:�j�o�4�!�j�TP#�Ҵٮ�.���c�K&n��H9t
� j?]y}�jz8�
�~	�
xA�tq�n� @Z�dp���N-�?��=&�z��^�*iCN��@f�HO"ɖ���f1uQ�r��[�\�$�n	��E�6�N
�"�� ~	����x=���"�#�|��2�|���G{�\UU#qg������x  �����n�s��������V�:���<��o����϶�/���dM��xi\�7=\ٮ��j��Ycy��z�2�+g��Y2����t�H*���ٜ[����f咝��̦��/��@�R�+'o� ǣ�{��lN��;�I�+����%��;��� g�IZ�H�������L��C��@U.��3 1 �;  Ċ ̛ ��(j!)�&	��*� $I@HǄ`܇(]7�L��Ժw�JSk ������b����S�JjHJ1�̄N�ȝ�?�˷�y9�g4'0~! �DZ�ǀ쐛t�'m�O"Y�n�}�r���(��Z��0�s�   h�1D�G��/}�;�����?�*�e��oV��t��������𸗟K,��,���$	������t�����g?��М�Q����5�P���(�����G=�<���Y �\�q���4��'+�Q֚̾�]D$�Y�m7k�M ����K�>C��2O@-@8$d3��^9�AX�|���`�!Q��$h���zȼ�JW"@13)��#a�gN\�(ɚLL�|Ⱓ�@���; Y 4�����I����0t� �:vS��^��x��W����H޳������1�!�!��>   �/6/`VĴ� @�X ����w&Ѣ��L�fA�d<�A�^��v豛!���ר��V1l��-��.  B���0�������]�#k�QNw�����͕9�vX����X,_zqq�q1G>��JÜ��~�=%r����k�o��W<W��e2��7�s�_�\R����=�i�����$J�&�F�\gMk
�NC�%f�'���L�l- ��j gv��پ0�-Q�>��_~�a.z�'��6�F�@�k2U �.!`�T W"l@�-@�MG��}�c��}��˦��(\Ѱ������� �	 �vWt D,��@z��m;i?��0F��CN�LϐV��;����W   y�I�Ao�P�UY�[yS:��.�+G�ʣ�����@�HP��
 ��=����x�xq��79NC�p�Êb��n%O���ayj��Ϗ�������l����ޓX�n'��a?��*s1+<�T�w��h՟Q�!�.�8'sF\/'��d������i�53��1o�h��>C�bc$�b ���U����mγ͛��=2���j����C�tM&�Z���K@  ����@�Xv�	�.�L(Ȅ�sgaг,TWn�( &��Y!0 U�p�ƭ�����9! ���!*��
���v`�ݑ	 hq5���u����|\�e>�3�� �-C�$ >9�ނ�`@�Z8��Y�:��$��7I���^��J���� 	��N� \�5�����_����7������U�r�VO�?W�}����Δ?,Cb��c���(ͅ���N��9q�=;;i��73�$)�9�!�a���3�+��/w�l2������xօ��▗T{�k�d��ɫ���]���!����N�;%O6�4 ��`w�8�2L��v7��$��gI@������DM�B��"��RQ�upP 	>m	�ۋe!�bX�i��Mx�����pk����4���A�L?`�m�����������Ζm����k���S,
�t�P�Ht�� ^i^�0���,�(u �XL���}Ut�z|����VUIxA[��U �h|i���m��r�����x����~}�ts�������p�"�Łw6�ۥ�#.5���Sb�~�IE�%G�q3=5T�i񾊵�Wܬ��� �C.G+.�p�f�Ґ69�7 ��S�a}EY��wm�&^�z��l� ��1����jc�.�a-x���j�����+噈餑0�b��(lc�0�&��--�t��8gVg��x�;N-��@__5+�D`bH0I�N�/�W'KWE�"B�)�b��,;�2:~i�^��4,�g!3��^���e	5Guj���!< ��{���p��s��XP��T��j��������͜<x��`�*v�t9�#��[�Y����,r�a���,�D���h��mj�Zu��~����\^6�_�>�u�۱Rb]�VjV�*�.�ꨊ;��P���Q[��m����x�%lE�N��2-n�e
�iz���:S��nJ˖�,�Y*j���w��t��2�u�(]��C�=���s�qMC؈���A�̯|۹�����s��!���3cJ���<�J��'�~q�/�~H�B�
��2*�pTt��㥪���1 �Q�Rj�EWL�)42  ��g�#���s�kϫ��5�H�g���=����K�۶r{�μ�ԛ��C��Y��e�:F�+��a�Y�[Y�����r5L�=65���tr�n1�̈́]�x(;���}��-E!fF{��J�ӈʄ"�K��ZT�E�1"��I�"��N4���ڜD��^��u�ͥec&0N2JJi���99� ��J:@	�	ǡ�Hb�6g���x�ҦN��"1?����i�xW�0;`�i'ƿ~)���¸ҫ���66���X}��G_Gk�%p{��}P�8�� зF���`����� �Zs��-I^�<�  a󾯌h�B�����ɕ�����هu�8?ʈi���_��_��~��'&��2�˛��B��o)��/޳�r��!�eH���gOeLe3]+�q��y�h����M��
&���*K��d�Q�x��<�ڬu�������0�;�=1Ef�&�5>��C�x��|j)V��#<��f1^�d�� $q��m�:�PxD7%�AH D�6B �DfL�
)�E����+$��˞INRD�!
0�$>1�9���2�0�׫Ї."���䥚�TX`�H'i%����yI�o��HtZ� ���bL*�@?ܨ>���^�d{j�Z�n�р�6p��j��Z����#�K���M�	�M�#���o��!�u� k}�?	��F��qD&:|[0��Ւ�D�g̝K��.B�0S0�!)�eru�'���6.n9Q8���؂n)��b�u��1�xxU;,Z�M��#��d�	v�dE���s���<hr�� ��U fFק��Q�ݪCs+}�̀ꅤ՜��;��t;B��9�����g��I �3m��}_`!��C��'�=;�,Pa�a$��y%�:��E���"lCk���IJ�b8}@w˛
 ވ�^d ���b5!Y ��D�]>=>?��'�l`�j�D����U �4�4��|��q�o�Zq��m~�+�_�e��6�?��'�Ȏ�S�lv3���?�z��Y�`�鳗�r��2Oiv�;�E�]�T�/{��8�=�+�9���M�fݻ�h�UvY�|�5�]�\�F
6R�	�D��J���q���%�1Mm ��Fe��"�2- ��K�H��,.����B��X��s�	jV��1rǳ�Fj�j��T��*��)��#;�$lvr�
s��&BA ��K<+�y�k����}�< �X,�Fnp ���b�@!�"���1<���<� �<*Uw��Bx�@T  ����\��ׄ�'�<6ae*Ҧ� ?ݳr�{[����7:K��ԏO_8 ë3�ۃ��i�9�O�X�销�&Q��\���Xy�;qNjf�����`�;s�ju�
�TO��&h����5�h�HD�2BY��� -xxʪ�T:�H�<��r5�d�� [&[LO5Y�$V�ӵIHw�m�>s(�괎}��ף��������	<�}NB�:X�e ��0��G���0���'�.Iy��ص����YW}x���q���IS|� Y�Nh����Ѐڙ��kj��� ���	��*����B��  ��C�n}�ټrs:v�/n���PSk�Y����O����+�#���r�-�=�p���u�f�����W���.�,W�(�&ɻc��f��������C2*���vrg��܃�t��5B���n��!ך�W��o󙞚���)�Pg�=��}�u�a��d�`	Ih`w�(C1,S5!���i���jB�z0HM�S�H���zs mx�8�#&�0���J�u@�m�:���k��9O��1ZW�"3�<k7`��e�ܨ����)��i������H�~XtZp �¢�
H�߮�RX>���5�	RjP1 �73�wϗ����ˏ�ɭOlǹ
����ɔX�x�{zr�����O�>Y�IO�OJW=n�y:�U��1R�����<H�g�KH�8�T��h��W���)f�(�t�4���d�6�!c���@6�F���ܕ�̀� ��%md�����~��d@��jI Y�r��0B���]��'T����"`��".��1�����h���l�lq1�3����h�Շ�lˍa�?��n֧�&)"��J�1����1D���s\�@6A݃ >X�Z 賱�#�1^�(���ۥj�~4�X+�Y�I1�(!�/ �*uzu�����~T�J���������d�ߌ��\���S���nU�p�H�k�U~�w�?�G�����v�.�� 9��s�t�b1��3�f*J��5���3�3�Yi��֯An�v�Jw�,R7^����f�K4���ҪX�.�F!EQqR�$;��jh�rt��l%A�,,:�"C͆#�]�f�x�H�� ��:W�z϶����D��i�Ԏ���K�d��?ZVgcX������ӎ�ӱX8p���ڸ6�>�w�o����T���/�  ��X�Np �Ecu`
 ��:v�|^@���ɤ�X^��iIP� ����_�Y���彮��_��C<Z�a��秮�oml�������gY�l���T�/�ܳ$��eJА��h9������˓3bԔ�v�МMs�e�g���[3�T;�ǂ����ۚH��M1F�q��TV,՗�H<�=��)�<5�(��}:. dL�4�� J[��ˏ�]\4A0�ǫ�c�� =��33*rD�sv[+�֌4�"�APEDD��W���@�`	`헡@����D/6f�7����D�E�M�5�1�効�_�mCp�M��^X�R�Ё�a�X�V6����V�;آf��! <}��;r�_������_?r���o�~xO�/�e�������Y1��<t�\���vS�\�j��*N��Vw��i�4�(E#X��o晞�Y�m͔��*MN�Z��7,;SGr{��]ʶ�XͶ=�<:m�	�iO�zS��<��/z�D{ ���^C�hP!V�EfA�H7`�L�P�Fn�ax<�} �bw��m��&��6s!��\���Y�l��,dn�	�cs�»��N�+��!��9�Ɉ�Wځ�^�lm"ѿ��`�I�<�؁,   $: i� ����p  �q? p� ���2���SU� p � �y񍏡��?ioy���|�f�<���͙{7ңw}�l����iﾱ�����i��-�7�Q�+�m�p"�t"?(�?uVՠzr`��x��<�&���Ι��=K�h]'s��A��k���O��\����F.D��r<�]k)N�(�Y���-`.�~��k�y^��a)[#�f�X	��&��L�!I$؄��e)�|��o'��E�>@��Ef���7PQQ E�K��K2�$k�=na@�"�a�Wڰ�g�{�3/{2ը�����a�WG/������FS �hl��c��i �J���e	�ʕ����خ9RU /��㝟2Ҫ`���{��|���_R=������g��娯V.Ng)�>3�y+o�p7�X������un��g}�,��1��u�t��|p\#(*�i5X���K�L�(���l�UD�,	�� @ =��)�"�jp}"H��"��e�Z���@Ȃu�`�=`�E
	��d�D�!03P�LT  �ېƽ:eU���K#)0�d����A U�#㿮�	���חe# ,��  ��*��d���^�Gr��z����{���s$���( ^h�B.:N}>{E ��������Q�ݜ\�m�Cx|��I4(��:�;�E��j�92�7`� ��2�S���޴O����l��y��w_z�2���+�j�6�9�8Z�g�vRI�i��?�6$��n� KL�0J�w��5�'�r�Y��Ba4&. 6em-���yC3�(�HFT�n�x�Q�Ʉ���6	�M��x���x�$JT���͢�N�8 ��׳�Ix\O� �R�Vܼ����"+ ���}'c�ot�	BF�ײd	�g���d��t�ΈP�HB �!T3D���9&E  @4 �XL �@�L;XL��B�z97"�죚y��&"|��V����i���D�Ί�F����~`�q縵���N�����BW����D��u �Z������xI�U�Ԑt7EFT�SC�s�D�͙s]4gG��Qr����u����%��I���U���fF�C�S,I�a �o������$'���M��t3� HϏ�&#+5"��}Mw"N�I��vF
��X��F�\�K��g��#D(������� ���*���� ��-� ����=�5�_q�@�$C;�g")aOɄ�m�Kp�>��ws �,�� >h��@�B���@L ���˯�u�<j���N���5ƆJ����d�'>��?]������Ͼ���8u��������bzv{�|���0�Q�U�����	<JKie&y��ɂ��j?�]CiZ�Fw5�N��SlFR���}�a��Oc��T���X��j�sTI�L��n��P�U	�'�PZ������=]'�Mg�  �#lN��=���UD�^���;6ʢ_@x� H�Ei�,�0������)�"��~AP����������c|�_>��>�x6�-@�i���-�-&E��ڈ�oȨ���$ ��rm�  #Ъ��dBxo2� �X�3�K�(�"�4F�n2����j�'P����_� XS��7�j!r�v��@���X81 L�]����Λۏ�n?�>�L��__�[qHLH��
����
��2��	P��"���~֚���{C@t�pVQ @eD?j�E�8Y!���.JI�����x�������Z���j����b����&6�|Y}q[LC��n��6I�(��n/^�9% �%U���)��nhfj�b1G������٧#�hg�h �&��9�U�*�E�DS���c֕rf�����Z&�Kwa3�_ U~EEܓ���g����zxJ Q}�ӂ��B/t�a�[�fh�.(��~/* �?�
�j�#�%�7�  $#= + X,��I�d�ݠ�D�� �[�p9��{w��y�\��Z�*fcr��<ڪ���8� g� ������~��z�jW'��-m�㑡/�^<����z�PK��c�J�S~F�  �(�#�;�3 � �������  a��u���r ����1���,:5F̧s]8rˏ��2o�ۉ���6G O���������č��o}�[�rTwuP˱0b|�j|�B���qn13oc���K�+!��Ռ!�yq��m�|(f2�G� s��|�������3x��ߌ~�V�j��d$I�* ��C?r.A@0GT  �H��64��g `E��b� �M� �D#�`�� ��}�04�    ~�	�o����\hl�/�B���w_ߪ=<)�\6�|\Q��[��\�t����h'������ʦ�q�x����Ǚޯ���9��in��+�N�T�W]��ּ��B P�o�   ��<������ӫ{�
�؏.���9sFd\�p��ɮ�򩹀��V�UC��z��m{�Y��P��I�Xw�|��c��R�Cn��`�P�=d�"��dr_�+鲪���K��� �q�T�Nd|��b�*�q�H}xot` �=�Լ�l�mwf���tT�l?) ��{	  ����ڶ:PT�UxX_6�@�p�/ ��Qp@ ���w �0���� ~%  ߗ ��-	���6  1�  ��  � ��"D$?�˝y�cĐ�H=sB�_��Fo�5o4%�`?A���f�)�* �� C ����F'��O?�F����ɰ�M5G)�kC��Z-P T,+���Q ,F~�V�ԩ��L+ۧ�ш��o��E9�����+�X*���6�K�ٶG��ɛ� +�Gdi��1�9EO�}��;��j��^cez��2���Ekm�k�c��菅\O\��͓���vȤ
�;�R�K�j�d�Oy5����# ���_ϟ/`��$ 0tj��Y��" ��d<�  ��\~�  @7o+lD@��O?���U@y�1����  �d�W�,p� `�`�7W#  v!^X�,��?hl���}���%�}�� ,@s���YMv���V$"/]�aEm �M�m����$M�|�r��ڰY��~v �b�3�DO8\CEY>÷鍓?Q������UO�;���gN�f=U���b:�2s�#z��vmp\5��3��ZEs�((��W�<���j�C[t�΃z����Ϗ'�P*���Ȩ�'E�,CM��9?>x��w(�GjP�-�45�$ˏ��㹦	��K��zq�	P+|h8�~��@h��X���gϯ�'b�.A����[  �����g  l^J ����UA�;��ﾹ'�  ��@�  n|������  .���g�`�?� ���D`Ӎ��Hr���a��X� p�cT3u��������U ��ߍ�˻�G�/���O�K(�)WP������M-�s���׾n��ґ��2�n��D��푺Λ��v���?l�5� �s��Z���\�s2���HX�y__��渞C�Q��E���-�
�TT1��:bw�~���y.	��&���u;D��o&�4�c��T��=o�t?H�Pw6�Do �ï"�f�:�ļ�Up��G�=l`>Z1   ����E�	u ��]�	C�cn� @���T  TQ}c�  ��X��ME���   �6 ������S*��l�* Є,,  �� �F��8'b� �gLB��hv�qJ rV	���x�"�ZcmV7��|��{s �����Hl-� �����]}d�x}vale�����*��G���;�~��ϖ'��t ������C���7�3�G$�����v7�z4�rڣT&�?{vW �L�wP���2�>]Y��}�;g�j��͙��ח�����&s����3:Uݽ͎����ړ���̢F>�z�?���|�!U���L%TQ��/�wSMw?����dXʬ.V�� x���KĦ�Pvk^� k�_��h
��/   �G��X?X�1  ��Ǘ�   P�?��  �E��  y�F��-�ou
�ά� ��  �M  ���d^h���'����)x+T��Y_��_��	*T�Q+�|o�_ig��b���b]`  q?�{WG��~o�g��}�>L��}¸�s#U �V�� �@QQ���.9���'�o���aDƚ�X��9)�yY���&��z�Q�ר��+����ٙ ��A�b;����*�z���K�s:�O�πs2-����CV��>)�~_�<3�����F� ����E�&��sK.'�ih�<  `��V� (��z� ��w�  @}?��^>@�{�"T���ǒ@2 ����z�   ����Qc  l�'�G @TTT����Ί z���< 0,�(  �Z  @���? l�  �~ ��}u   & >hl���E�dO�g�B�C��%a���X�,Ԕ�	~�ȃM�'wvig�0�X)�   �N�.��������揨7����?tϜ/'9阱�!���B�Y��-�_PQ `|5��Zn/Nv�b����䶋�c7��r��wt�z��sZ�Q�L����Lߟ`�z᪹��'���rȇ�p.������]^I��2����p���8=ʻ �K���3�9~��=�}=�_��=�������*27 0Mt�H�.� @5�6��� ���ף���i
 ��>����R  d�?ߧ!��$  p� �<�*  ƺ�  � �vK��  �8}0�  �gl')P�j�s�I�)Y"��[���N���ĨQ��9y�>���Ŷ�]  @�Z�;'�^~��Ԛ�6����<Y��~�(�.i�' 9|��?�����l��#GóNߵs*�Le�п�?Go�J�Mr��c3�M�y2��ǝ5L����w5�	0�n�|u��P��.��_?�4���˕��z b衋�E�6��}�NNoL�n��(89���_�aFhj ���U `N��d ��Y��f���^}�g(*�"b��	y�n�@ AU�"  ��y�  ��8|YT PT^����   6  ���K/U �Z��(�) �<o  �G T࣡� `k `�o  ���KE@�O� h�8�B�����FPIY�k�n��_��1��!�V�&��9y�`FHʋ�u�m�  Ѕ���������^���[\.'	��է�r��&]ϩ�N���B��Ϸ(|��퟽Z�r��?�=:zU��pj�0����Z��\�ԯ�4�S�e6���9�
��Ѻ���4��)�Éz���}�u{��W���I忯<Hf�&+�[�P5�{ߚ���<8��ī�d5k������uh`X�� s���CWB��ɢ�a��������d��%��!n	 ��k�  �&  H�� ��oĆ���+     ��	   �Q�_Q ��  � �* ET^]�
 ���7 �o{ �����   � @|$ OggS K            ���+�i�k�V�I�Z�L�N�?�>�@�C�7�/�)�-�!!���g�N � ��G��qP[�F���OS�īp0^�� NpF)���/�HD*�E��=y�
  ����so���ͷwMq�b�wi�6�_~�r���^�~���\>x(!��Ů�B8͟	�����]h�5,Cކ�f@DE��$AQ�������l�<ՌiE�C��=���kh-X3N�(]�2kZ����V���z���[��µ�ߥ�u��;g�hq*�%�$$T'�+�1�@�Y�� �ޏ̃�8Er=����n�� @�������6���u�L�l��˞o 8 @�X�   	    y �����O��m 0�.   ��� ������
 ��6o  nm ु�H�� ���	C�g�L�@.L�j��;����)�R����k�X9�)�u��5p���k����"�n� ����  �wұ����y���xd����Ұږ�x�k��������g�Wrn  U�F�n~o,��b��Ƽ�� �s�l��IտD���&sSU�{��Ņ6�ZwOs��u4�:�C��FC�SdU�������79b;��0	 'W��]|��#-��T*��  �� `�7�g@�i�?�P��q�:�&i��P�z�����[������
 ��_� PY��nN   Я|�l@��������#�   V P�   �w ��_ �TAUU�x������� �:� **�"�c�+ �w�b5�+�ꝱJ��b�E�|��X~�Z�/��N�s_� �G�������n7.3{��Bi���Y�����o:e�k��aɳ�y���P��y�M��9��ų�}q�U3d��~�{���_>kD�~���t,	���M�}��a��ҙr�S>=\�T}�R�q�u�$]LjH���u79��3<Mu9�os|��V@f~��H�`� ���7 �{����h��i"�t��]�Lg5�W?   9n,  ���,  @�G� d�  ��?	  h�)p��U0M��	�?~�  d�'BUs��*W�CTTT��A�B���` � �f,Rw@�6��hHJY�A¾�s�Y6��]+�+;YY�*Xh^r|4� ����^葉�ܯ���/w��*��e�C�t�� Ec���D�g?�u��C֟[��������wW�����.�k_ ����J����J��Я3U�f��7h�Y	r߻��Ὣ�N��(�a�$�R5d�!s.����'�[�M�f���xZ�I��( �ah��2��U��N��v~�8���v�����vu�r|������ɕL�c���t�OI ����@ �   ~%   �5>th�    �� ���8� ��ϓ���/��(� � �� px �V���q��e�	d, ��PP�o���5j�#���HniH�fj�P5t!  >���П�}�`�ޏg۴ݽ�m���7����L�z���}PDe�ӏ*�j�*����ޡ 2���7��������~�ކ�� �����J��t9w��IL�u�d�P�O%QM��a�'U�s�)��ݲ�+U�NT�I�s�[5��}����\��i�rnw������U�U��"G����u��)�N���:�5y*jf ����7s��7��H���f��:MML�����3��vMM� ���/ �   �   |�Jz  ��nl�& �?���__ |J��2��V���  �<h6 ^f,B`��H���pq�հ "���b������ּV���h@j�L�HF��YA   ��p�m��vzq���X���sW%������>�AqC��l�� ޿0����A����3{OJ�3��3;��nP�Tw��?=�O'���@Ω.e�</t�����g�<�:N]�.��mi�͗�d�$�����drå��o� Oi�ɯ�k��.�d`1�F�,��)��J�oB��~���
�K/��ĕ��y}��SC�|r�����a���/�b�'&�QL%��&W� ��;�@  @�!�  �� `�J @ �
�.����  կ   g����Ը�6�d6-Vup9�Pc�`�\�Y����Lk����n�K    ��ze��w�)�ί�	!�P�J.�n	��+�`w�s  ���i���<�w�Y<��bTr�����C�����6E�<���9�5P0��p��3�0M峽�9��uyg����t0�Aj�YH����N�p�`��d�ٰie_;s���Ƚ�t�_k��c;?^�>'T�}��[	_��9���D^V^��{  �z�W�W!�K����_��N 1��s� ���     n,��  ��-�  DQ]�� `�Izv   @�~   ޗ �x   ��@��X  �f\�L&M+�A2����&EG�Ȅ��}[km�Z�m��"�c_   ��4v҇���7?h��Y>1,/���;����G��xf���a���9��7����%6�E#�����eW 
��`��@��N*ҝ�!���	:z8�L�k��ߵ�ɳ@��=-*�8	����{�{��/}��<�T�5��J������3�TO�����U; ��V=�L��s��� 9����v��9  _��͡O X����  ��1 `�p[B 0��c�@�  	�k |������� p��w ���  ���  @�;�  *��f  @ >���$�t��Kn�K�\ |;Ăb`�`�kU���- V�Z�օ 0]ޛ�l�M�{�U:?웆~�OW��6�c�q�܆�������x ����M��Ŝ[��e�E�K�1��{�MQtA��L����1�s)N���v�y���h���-�N�(1d^���n�Һ���� �Ԏ�'sjN}���L��=`Xv~Ά>�͡#�$�J^���+�(�3����< CB��_� ��V57  P3ZKj[  
h8 ȶ��7�mY�
�f1���k#<  ��ʯ�  8�;  ۏ  ��	�2�  �f܍���n�c�I�H!�<�*_w���_.4 ����ɜ�E�>.#@���N'�%q��o��-����s	œ�<����ga��h����js�_�$�@��g����?L���x�\�"���|=U��w�	�oUs�bP��Wz�<��,@O�����w���x��M�n����o�@(��ϗς�7�@���b?=y3�@?��$����v~f u�~��-�kԜ��  �� ��o}��  P   �_  �$d�W!�]�OF�( ����r"?Zm0���G5V�� %FY�  Di뷅�  ^v\�	a [��2��#伌�,��򐁫��R*�r\h��[����-�
��(@ �Ɖ��9���f�Z����^������b�y��dz��F�����	�P9�	��oTTv�N��Ϟ��[���w��(~��Q�sU��=�+_��
@ph�N�[ �끜d����Μ��z�hR[|}B-YWi�N���>�0Emhj��yVHv������w� ���.�h	u��I��M�����W� :�,3= @��X  �,�%  ���l'���phȷ��  ��*�)*  �$�7� ��  ���  ݡ��    >��;�A[,��P�2��'�N�����R�a��q���:�i�q�n�Z�#��  ���~�=繟������b75?���	���R����3�J>gB������ޱ��ͭ����O����	*���6�C�9������!�rg�0Ŷ�s�YyKΫ;Ve��Mvu�&rB�U.3 �qv�	`�9��bt5�S ���P\�ϓ}1�H ��{z� ��� (�~ 0�� 4'Q	���s   ��5��	  ��~�� ��-�J
��  D�@�A  @L��[ ���  ?   � �G �p >�<k�(Y/#�C�rK�T�\���>�Kg��Zkp�J/"��. �A ��X9=��GK�.gO��W?he���d.�>=}�֍���O�_����^%C���h(f��R��S�*h�MA~@��.����r��0��M��M�d|���y��!�U0 5IVs�L�d�O_PC�+5څ��is����ah'�G;�*}�i^  �����* &`�W�  =�3 �,C�� ( E�d  �  XB�t% @
� �g  ���P�  ����  � � �m(0 �e<K��>ΐ�j:%�g�{O����:#���!E�����tsD���Q�1 �{]r��?��=�i'��o���b�2?7>�f��_�t~���$Gh����b[ F�z��l�IТ��{1M�0K|��SC�5 ;I�D\�^�h �I�{�.2{O����;��.`7s�zZ^ȆZ�f��.a�Tv޴e΂|M>�������ϟ�*��;} @͟���  (�I~7 �Ϝ =��A��,� ��U�0�	P ��7�Q x1`	 �n �U 0H( �P ���?� 0 �����hM�Ƞ����m�[���E�E���hV���2�h��(�/ �p4����ڽ?��n�#o����tw������~���w�l�.^ő3�j;���	f�g^�Vǁl��=g�:͜�M�����{rH��s�n9nV�C�����i���κO��0uUR܆O=Е陓]�L�wh���2ɜ�}Cޔ��\ߨ��9(M5@;��CP��ߵg.��Φ�;' �I��  j�*�x� �	$,��*`� p����{h���§� �` �W  ����   ��|��{e܆&����J~l�;!�I��M6����,QU   �jc�8�����G�~�q�Ӿx��_�6o������,z�ݣw� (WA�sA^���W}��?3�:�/�]=Cxm�vW=�0y2��'{������Zԥ`���a���ߓ�wԕn��d��bA�,ή+��y�=��4@�J�ő�,���n|_0uUOԧ���|u���a �f��?�M�(�
H`���m�^��� ��}V�^�ף��h]wJO*oq|��2+�0Ћ7�m�~�\ P�gYS`R 0>���,_� n`,��3}i�              >��百4��X��8               >����o�"�`,���o�A$�	��-6U�LP��b  0��*�2�\���J���:����QC1$U�%X�t73Q��3:���&��C����L.M��,R:tKZ$P�d)\��HZ�:�B�9�`�}i���(�#1H��d"�d�aI�!s�p
�CJe"��T�{�C��$}G+�!���ge��f�\������ՖU1��s�� �{�'���T��D}``>>����_�xǒ���K& �H`sS,w�Q%j  �����cmj�8++�������ׇBq<����,m��Ӗ��++-i�A2X8
�P0���A��� Haa
�i�QY�A�2䆴,/�&�?X�(n,�n*qnp'�@A6�M��d~~����7o�2{�,�m�ۆf��ye����f���m�w&;��Ǜ�2���	�

================================================================================
// File: assets/sounds/alert_neutral.ogg
================================================================================
OggS                 <��vorbis    D�       q     �OggS                 64%�0�����������������vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS 6             ϥ�*aXT��HLOKFH]`��������UW_RSTfg�����E�8�3�
��iĐ2o"~H	�T%M���E�$Ţ��ȬXJ]����+x��;�M-�bY�{�t�`P��K (�V�����vE;���2Z�ql��1��tQQ,v�z��m&���Eޠ�8>@M@�
�XZ�`AaA�j[��֞�{�ժ.AD�U�V�ժ���(�(��p5�_� a�ah�
���vnG�������ʎ�>7��6��Q��b�M0ƈzi�R��W��O��PŢ�1�j�r�!�*��@TŢ�se3�H
l���2Z%D�J�q�p�yUI����`���\S�I{�9��(��  O5EDDD ��~�������+F̴+��.�	������+V\ �nϿwc�#}��Qq�6a@�%�aC�9�5�����c&�8B�Y�|bruD���|�,�ڣ�qX��Z�E�y.���EC��$$��u�)��� �\쩬�v�ڭN�g�jU���\c%.��QW���ʶ�p5�ƞ�q�c�M��N�G+qj(�m�`B#f��j$�aQ&�5,Q�tl�k������`|4XH �*IA	�6=��Y��j�mYѤ]6C:4H�n�Ԓ6`�@Dز��P���ș��;��O�I;f?!`�%#$�UXld䠚8/��,du�� !-d٪%~��H`IH�Z;g�j��[(�N�.�z1pA:�S�&'��K8F�X����"�,F*̰6W�=�*@��wԯ;�(�0j�υC ȱ�B�ǳ��IL�oJ5:����M1&<����jGt���z�V'���WQMw�Kڢ�)`ь͕���ǟ�{�+n |jQ�٩�@H(��K< !%Fϝ���� �MX���G+���ۑ���@EV�D^�"�Ǣ��4^�x��X��O\>i1���@��:�����$������(��b0"n�ы/w��ey��A����[��Pk�\S���y���|j	�9m 6��Jx,�=M?T1	G��o:(��d����^��~��]�g�&{�	���YV�ʒ~j,�k�t:1z1�x��O�oe҈-�M?�L[�:�ԋ�m����6��V(X����._E���ZU�'Kx� l>N잶R�&T�Dק�@��ۆm�kN��!����_=�����7�R��g��E��N��y�C�lCu�W�T��X�5��b�fqdX%�Q,L9�W\JN|^F#��Rjd�s�Q�4��C[�@j���Ys��
z�79���Z	�yo��q��T&���Ge���Q���܆QxZ��!X��P�so�e��cA� �7E��+�����M���?�O
�������Kl��W�{^{��E9Q�ԞR �% ���~�s��E-*MVb����sMwj�	��H �@貳�6������0��O�����a9\_��5k5Ze���"��Gc�M�U�e�j���������Z
����@1��N�I��2�� I&�Ҭw��u
�P���r��^/�N����<o5�b����T��5�љ��={�Gɯ�[8�~������s?��|tN�네^�������˜뗺���1��4uw�2v�nl���c����C�����<��	8ww��,��W��^oT�֜�LA����MO]�`Rk;��2��!Le�٬����l|PH <��#�T���6�`�� d��œ�.q�pJ Vi���_o���?1`,���3R50�V�	 �a ��D��U;�z�U��]Y�r�P^m=
V��QA�~��/ �TZ��u�l�j����$�{�=��PgS,�1�xh��z����m�ě�Ĳ >il삯r[� ]����2@hLiFﯧ ���3E�x��P��EA*D����t�R��N�~A=W*����^���S4��C;��tRf��W~��3ɝD.|��e52m���]zL���z8(�"����C�1�7�6�/R(���������:�v��;b�-[��=�9��D���J� ���R�߬333�������7x�����`�90@�56��ə*�����aƊ`�`�E�����9��Uw��a}_��g���eV��k0<� �T�N]] `�)�C�� �8$�#K2����Q�
6B�;���D�p�Ba�� �~� ^���4��)�6����*���W���   | p,a�
���0S�jU-(׌%�l �
 �x� e�����ַ��nv����ɽ�\NE/�r=����L���z�����2�6���I�XOW���K�8�䐓����&��]P�K;��;	���=-��K�ůQ�3T�5����b�9���t`�����pz��t�/�%��+#�S5P��{3�6+Շ�Hc ��9�Z]T����?U��t�o�|�|޹���-����ӥ	���^zf�E���guS�!����K�{��ζ�*�S�3�U���O��  g�Z9��0��:�����ٷ�,[׾��S���an.�]˯���(���擐J�4[�=0 (�|  � �"  Hm0�0(|)�}$c  �2�z���0���Ȍ�2��� �y��xZX)���<����x���`�)�:4 ��#���/�.�EZ��H�Y�q�   �K �1F;�*ܚ�Y+lU5�;�����g k��� <Ys�����xΜ����/��M���з�?V�5���>�ףʾpն[*
��?��U����k��o1Rl�O*/�����1����}_�w�������l����-.���c��W���}`W������]��y��[]�L�<��ks�SCOUL��v�3�E�@�-{� �O�ם����y^O!r<]!�y�����ɽc�O����9KUV-��W�ܱ�*�?՝��=��vs�c�������뾻�x^���*����p!�`   v�=�ʢ�Z��4�R�0��L������4/3��b|���!�\���${���� �����e��
���+���  0�����1 `	 ���]�������o����  ƶc�b��YaH{��sX;y�/ (�� RL��$�m��+�X� t��u�����3��Ũ?R������lbpJ�P;s_�r���>˸U6uy��˶>Ϻ��h���m}��];k0�zyK,=��| t�<��2��GCׯ@�7�8� �cP���<�����e�������ߛ�|\h;ϧ��:�����Ői�����Rp�7�7<y�`�+ d�
=A��]
\A�o��^ϙvŐ;? �*�rw̃���/��v���:s���B�����q�\������l�-�̑�7=o�.��̿����7��,,� ���8eB��6f,p�>��z,gsIL���L���=�k�g��&�=d�&�[���~7�ٜ�������&���&��'� |Q�F;08�tvHl��9c%��F��	\v�_kņ{��Y����_�����,�l��W�9�
E=9�R#$�(�d`�n��i>�ǳ���R��xӽ�|����ko_���{7�[��t�I����qHﻺ��]g�1����L^�|;���Z��P!��P���(:!	��r��ry�gf�J�G��Y�}��/��k���몏�'�JwVz)[�:!���z�����	<Wm��cp$�����r?8�� �	��ݐ�R �0�Q��yj�� [�L@����[��DGg�3P��]��茬��w]���������V��;��;]���
��+A�/G���g�����ח)@ږ� 6h=�}����8��<�i��?��������ׯ\���fM�= � �o�j'Г6�[��t�RS�Is�����' pY� ���ی�w�H
������65�Ԭb���^�t�=C�22:�e�XZ���V�աD���cqܪ�>�Ey(���Q%С,))�Ś,�4R��
 <�^-J!-�%gRg�۔�-K�>X����# ]_��L��Ns�J7�TV��6Ȍ4���΂� l��>do}�{��wvfe���<�@�����5�\'����/W��c?z�jWv���) ���6����kO�c�ǃ�����=�O2=�R]z��cv q��O�},vc:+�]����a7C�\�jS��Ƚ)��$y�� #Y�9( �CwfBF �]�`�C�  �xڑ���VY� 0 �5���+�6H��)((�	C��(MK7p�1Pp.#JZ���$�N ����J1����sz#����b�(o4_�~��ͩv�d� �� �4	�|%�KQVU�l�!�$	 ��9�vdk3�56�L �D� ���m�X
��ĳn�wЕ\<���٭,qMr�yѫ�ğ�)m�:��*�A��d5] �N�V(�5� K�V�vOO���󽼼Ͽ��a��r��ٕ	d�m�Ϗ�w����/�\]�#+f�w��]�i�������6l����>�SEo|J�	� cjm�8�����guݗ{N���y_5�<��`��0�+��9�7 ������i z�R|�n��i*k������ٻ��M���
��gڪͻ�SX�+�ǲ
�� �����	   ����� �
)���s���곿�d��r�J)�?�o����6P*� u}�1�&��:
N�k'�e��E�����;�f�u���H��@
Ϗ��q~�<�%] �K ��� �Ut��W�TPt�h    D>�h� ���j������]�[K���;JW|���<������߽ys�e��U0tx��)��B��7����(P	���ue|ro�N�q��D�����#1��Lsz�M�s���|���~��=�j�6]~h&r���?Ti���s�6! ���_�x��.H�af}���P�u-�?r��o�g��}5� =m�   �&0��Bp����;  �z��3q  �֒����I��Mi{	� 
  @1r� ��$�@  ��ed�C 61���>��>��e��K�����~�P���qG�/ ��ͷ�|�IK�NFG��Kw$�	   ���w���^�sg� ·9'L.9����U'�~�+=�5H���o:Ɠ�3������L����~z�OQ?�4�t�WL��iSs�͔3sI`��i����}>3;������~Ώ�{�����}��?C�O1�n�K�@φ�����}�|� 
�كcV��QG��u�˱m�|xs8�}3"��w&, �q �3��|��ׄπ  ��� p�i+��5
2�� � ���ͮ}H � �e��S 6(���id�ޯa7O��V�O��0Nt<

� | kWQ&�� ��:    
�1���zQW5 ��<: б�p�uh�M�n7��%:.k������C�@t�{��)����yȉD7�_�I�w�-��8N���q�r�r��"�����"3(������.�0�@Ω}:��}��歿>Q���U���a`� �>AL�3�!Lg#}�����.����j�u���kc�o��<-&�� L���3�|"�� �  �j/��@��� �ljW�?�xޟ-��2X    p�>� �e��S ,�_��]=�2�����~�-Ӫ���  ^�R�{�;F_~�j��*ABN�       �W?�(�jq�T��qBc�%l� @S:���}��?�ڍh5�]����0��?>[~|s,7���k��*��o	����?��0��W{Ȝ�)v��?oB��iMCuEO察ӣ�ĢkH`�E�y�s�p~L]��o�ڝp>�y�-cv:��^��j��i O�CVµ���5� � X@�z�L ��Ao��d:<  �e|\�o��O�n�,to���>y����M����������/O�}�Y��!�        ��s���ql��pj�8N�.O�ow!�$ �����/������|�����
�yz���Z�ٖ����C]g �|�  �����y����y���LO{> ���敯�S90=

================================================================================
// File: assets/sounds/boost_start.ogg
================================================================================
OggS                 <��vorbis    D�       q     �OggS                 64%�0�����������������vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS @�             j�M�8H�S����,��%yyt��u��z���������$�9�B�7�<�F�N�L�D�D�I�禀5&�����*/z���P ����du�Eeԭk��>��NJ�g{������NU�^���#Z,��5|o�p 8�-O����>��P�n��   ��ѶB�_ ��UM�R%�    �������3z�
 �YA�p�?t�J�~h˳�<8�h�kn��x��a.|A��j�7twW�0��/�_��������t��2�� g��?�L���ڜ�*�p��R���*���O����,p�Wy�t���s�����9���<@ ��oLCw.y�pǻ�a�/�f�a���O�?��(��j��"]U@g=<�rf�i�܇6���Y�>h����|�c��|��Sx������Ǿk<Wg1����ᰟ�o� \ P���ق���DH��F"ݙ	 
,j �e�`U�"B���YWk��e�>�u��(� ��5 ��6�Id&(��.	��$    xR���/��
�  J����C:�v����i�a�#���ͥ����憁��r�z��fxyf�ᥛ�釆�y���  `�迿�3 <0L��t��|���74��4����W^�>�@��L��t��0��4Pq�O.������<�7���ץ����{���|0 �� gڽ�����x����p��s<�'��{���w8�����wi��/�
�� x��e\�'�o_�S΅_��?q�vWO�q<l�W����4�|  �1�B� ĝa��.#	 ����ϡ�d�O?�������9� @�6��r��G���<� ��z��׻��M���4 }i������iޙ醞n��w����fx��w��� �/��< �    �?�p���<8�]��`���q��
w�<���(&}w�  < p   ��� �s  >7����~�:	�'�1�ߧ��y��}��n�����y, ����T�� ��	.U��H  �o�h�7y�
 �z�   ��W�{�u�����\_V�t4�K�$H�x�w��G�2�G"H[�l��f�5��0[���e뗭_�~a�����L�ʫ��e�5�:�r'w"�)�ڴ���/[�wa�f���T��   @=�    ���]�    8�� � �੹��w(   ��H>�]s�Ե'7ƻ_`���	ʆ�[��N#O�ӎG��. �٬��� Ba���QAABA   ��}�����i��ϼn �rot�/�	  ��������k){�_� ��n��#�5���v�핷W����p�8��qs�\EW�U��	�T&$�v.� �TV%uPPpsPP����"���J.Hn�2I
n �L`k[    p| �w� �4XX �p ��I���-�������k�u'$�`-��J ���&c�$������5L��  �   z ��  ~���s��λ]b��'�/�-��f��$�>� p���D~��K��R��  ��g~ů2�?�> �o2���@m���>n^0�|ڤw�q��ܲ'���ŏ���gC  L�); �̼�� �,��!����k��5up2!� �ʵ̰�b�
����;�$�����(
���N��Ϊ$�N�ʛ�LH
� � g�w;�tX��9�5؜��HH��ʻ�)kX�5`��̄��"��H��Z,�L� ��-�Xf��a���e�`��,    @�އ�6y��3=RV���c��en:{H;R�e�{���B  C����tij�T%�   �>�q����#��z��Ͼ4�;����\g����<���6Ώ��/[�}�������6��L=�>ܕ�pǿ�s�]  �ȫ�rh ��>�\�w|�h�i�i���;�}pŇ��fzDNuL�����]�ue>����8�)Wo�HH�.(�MXf���y���M?�BW�� �a  
 ���
 0X0  UqU��. �  ̰�������k�s1`����/�z$hH   �]F ����$�v�������"��/Q;�)�+|�)  ���0&8�0A�#    ��6�  ������́a��S
  "6
V        ��,    @�z     �
/  @$p   ��Mַ�^���{��)&���oɥ������u�q  ���J qA�	#H     Q[�	  P�a  �T����YiR", �*  �( �e]    �2��  PK>  ��  ~��ʇ$W	u�{?���mWޒ\%����p  ��#a �p*a a��1     Q�T  �X�  �TDςP�$�R"�"�	�  � �lg   ��:m   4�  &� ��    ^)�ħU-ќ�)��R��O)�\���S>��    �� ���é�	� ��     @���X�O���]i"�   :u$   �    Dz-    @    �Q�  �AN��ȝ��7��{�*$rg�)ō������&( �p*�J��!�	�AA     �ڈ  �*(��\B�|	)>   k�XS    XY	    �z�{    ���R   ��*� L   �� ����@C}V����9|JFJ8�s{X @F�Dq'L&	     ��h  �!j1  Q�D��j�OP0���ǘ6Z �Q   `km   �T`�h�   P�L�    �Q�hm    P�< ������׬�����q��w&_R@���<����q��  ,�@	r8�0�0�0B�      �]  @0Q �0C��%\��_�KQ�/  L   �a,    4�  �K�  z(- 0 ^�ݭ�T��e�w�fw�!խ�wYx��� �w8� 	�J8D$�     �T @ ôj�% �r�q�%��p  ��6Y
)+  `   0�u+�    L��  $ �, D�   ^ p0   0 �g�×�%j�.��>�d����(�{��i  �p*H�	%�R���     @�%4  ���aX��-τy>3�)�   ���S  �� � $ A`�E^ P�� 8 `�,� w,˰��v  X ��Ui�   x  `]]�  ,` ,�ȝ��G����������IyKq$���s>���D  �;#�H �	�AA	     �F3|���\!IA   j�
�      � �:�   ��Z    �H"   8�  �W����&$�f彟��r�^��o)MHT��{$p   � ��IHXC$(�PI     @�  `��"\h8Z*3�VX��  �6���e   D�[ �X V��B   � � �  3�   d]� <� �+  �� @q8 Xp �	b�� ^'×�^U����G?����KJ/��Q�g��[  ���0&�\C���.    Y[�� ��z�`(%,�	��q  b�`!`  �(:��;,  � S�m�h�h���g���X�Wc��0�/\Oγw  �$���z`� ���q��6	C ��3�Mw\=�9�KK�e���2x7d�b ���ԗd��D�o�<b������F×���G��#�)  �� 	N%H�;a
*!A$     Zd  C  �b�P���|� �Pdj   � 
  /=t   �F�    h�x  �!  �+`�� �0 �����>5�g���}����[j����~�G��   �p*��5��j�$    �Q  h`�rY�� #%�p�d�,  @F�%�E    ���M��p0�$��ZѸ7 ����A���g�3XL] �� P�1 ٓ +��p 8����0��	E!�y�����W0�u�޺���<�Ww��XR�`� ���D1>�\r�Y���y����s�%�4��Q�����4  ��`�ujM-�$�    Yk �(��Z�� @MK'?�4  `��K,� D0PX���/�O��}@4MtlN��2	�$=D������0�;��8I �,	I&�f2=u_D�CN�?H���ͷl`a-;me��I�PL%U$W�I (��Zyu�������w����&ܚ�Ov�Q�U�
�7v�g����F�` @��x@ �7����@"��}�'��w��~Jv)Q}6��~�	N  �]Щ����4T	H     ��  0RjaA���0_X�rX  �`�: ��     �h  ���4gb˂p� >�޷u씅���Ѯ�;!�B�Yf �  �р�{,<w�� Z�0�`X,� :CT�i��o�����Ĉs\�� ��\r7�4�Ȟ��q�1��C���9���  	�"D�aVUSsI   �,mZ� �:X5l��  b\��|R   X��   0��n=a�Z�p��c�f�����*HeM�U�HP�l�����k��0�6�r���Hdm�����q�]����/��p���)����&I� �2�1�v\�`M"5=�L ��2:Oan����G����8��g�o�=��a��@��H���Ih��ʠɅ�`�� �V�����۫4]}��������4��^�yX��)|��S8.  B�C�m�j2$3I   ��f&  Б�QYCb �j��	H� �  ���>4�D�����<K�j�$ �U����}��.)�x�"Y��J�h��5�oO�q�쟝S���;0p�6����W�s�"�N��(�'���5��TU�5颡f2�N��T� ��4W	ǂ��9��aV�{6C�w?���w����-��U���.4�X�)r���PL��o�,��gF��h�Hu��E��3` ڒ ���t��f1�������s��S�7_�T����rB�  �D*�!R�F�d    P	  @ "n),����6z�b!X�    ܂��@CD�Ѫ5�� ��]�b=3�m�v��bpo��50�᭻_��"����)G�$�����pkb0AC��z�x��n��o�͘M��ްcښ�AM��j#�9��gu�Йs��V \��u��8�$!i`���Znc�-�����*��c������K6�Hui%��@ -�e��gi�"JU��_�[�K���:|N $tX�E;�U)%+3   �   M��� �ڕV��� �/D(�  @g ��a�o<[������f758,�̪���=Os�o��F�ɛoբ��֪�[�t�*h��m	�l_�m�5MCP��YL��u���-�9/C7L[d/$��=7��Ld��I��'�+��q=B�"�Ѩ��Y�w�����؊A�I�`V�p~,�k��Z+��H^����ڊefq��v��]e��Ph�9��u�@	K �d,�a/�' �e|YU�Њ�:��G��e|Y]� »N቏� � �����aj��$3	   �� ��T'�ł�0�f���:\(  �W�@��  �V[ �g����T�+z�)HM�j�tW��%����6㠓��I�i�m�4�K0ouRU-2sj3t��%��P5��r�DQ�������BVw&}h=�SUSr�,��h��2y�c�LD��i�캦Jyj-2�;3�����VB�>� _�94M�S݇BL�`�h�o�|f�Ԭ�{�;������.� p݀�j=)-��.%!�����6,��CBM�H6 �e�Y�Tz��z}*�e�Y�TZD�Ub�?q
  _Θc�h��J���   ��� &V�1T9P��A�P�`p��:c� 4{� @@"][XQ�r��l4������x̷�̨����{Vy�����Q���s�����{������7ꁆ�G�J6�d{���Nd����>�G���ϙ|�9�:���$�T��|�������SS�0�Of*�����*4`�O��(�.I��k���>�����(��gܕ���ko?�.M���0�m�.1��}��a�`܍�`  K���i�V�����)tҼ�9��p����d �e|�]Jy�$��/��wu�R�!Š��N �շֶQU�R23   d-� Ks�L���B��� �^\p�Y�)U�r��� �6�  �����޻yK5�ا)��u�m�oFU6������$�ӕ�p�iU�Lĝ%�;�6�E���P��ޕdt��n��rw����c8\0���5I-&5��|R�&o�V����C��J�_���s*�!�1�,;�_�>uU��Ҍ��{����{G��]�n���W�0r�k�f.�����X��r`�%�h,zH�-����M�YR|�
 �e����c2�*���@��+R�[��}|!"�)˄K�6ڪ�BY�d �R p��(��������{iR�U�|��M��@�����q�af���'��I�ܾ�-�m�õ�R�����ȗ��>����Z��I1+q�Y�r�+3���]�]ҿr��Օ���v
�r:�㚗�觫�hW.��/���7S'3w��ɤ�s�t�&c�DFOՐc���f��f�c����m�v����f�=� pS�
z�\��1�R���0x�q���}���ioi�NHĥ搦RIU�ihG��ȗ$���0
�e|�M����/xwi�e� ��e<�n=���@t  ��2k�[�Z�S   @P����)8P"(0▒^��n;H�9��.EӒx��TB�dhD��5K ��b�'���z{>W>7D=��7+�a�D�x��j�_zP==z� zj�i��ʹM��=|��e��;�Q���%d��e�X=ts2����wMא����͎��!�N�9���z��]1�X��x�i��zZ`�������Q�]��N�t�}�F��Pd�(���*=]*����r_6A.�5�r?�ą�T��]�@�-�ba�m2�S�~�'Pi�l�R�/�D� �e|�Q���+�<|�rixg�ΰ���ֆo�V�TU23  ��v�>1 ��E�Q�@����w��*O��gqG�gn��(Q�t.�":�]
�OԠq� �JYU!#����2����G3e��c����ؼ*:��[���1/@Ð5���p���`�+��{���,I�������ڤ'����b�v3y��<K���?���d�T.�5g���s�(�eW����5��
(&y���4f�=ڐd15�Y���������1oM���n�����t�CLѿW�=\=��a}��7L�ʋTn[��6�BC���ܴ�Po8r	�1�H� �5|]ǯb p�2~�� 8���h�m����d�	  H�
����Z,i�S ���S���y��v2h�����E>���g����c!�iL�k�������k�[[�1�پO�d�󌥸Ɣ7�NA�@�ߪ����.��
����|{��i����ɇ�y㡪z�WGp�'�rO�ͯ���0g�4]���n�3�Q]��\�i���+��`*{3I��w���Uu14US�f ��34qb���)L?����>3�\��j٧̰X8��>g�y1��O�3�ww��w�q��ft���ܹ�Hݫg�(��a\��rK�K�|@F lJ�	�V$v5���5|��^ ���zG:(
`s����hR2�   d|��Y��h&���q������%13���~��ZO瞈�,�����a&�q�H�8K������9�oֆ������>탎�82�m���������M�@q��g���q�y���)`C�d��*_�z�� �e�c�r2�v3.�L��ɮ����L���k�g�s&��1LB��qqfh�5S"���Os�C�WM?Y�gB�ݓ�RC�6�j�E�5F�y�?{no~�O�ݧf]��Q������@ST�2�" �!�h�QE1> �Am(�� �e���/ �e�<�7p ��1۶�6TU)e�$   �?�s�(3�e�Xn\9�l�>No�wHz{�{?����-��e��i�R�sn�;��r����_��#�$y���-�G�����d��z)���kk�fwuׇ��y��g���}�Y�֨�?�&��d�Y�>�ݥ� �y�����$��+r�qf;cm����'g�~�Z�w��kN>?�Ca����O֙!d<9�'�x��-�@�|o��3���c:��e�j���o�0��?��ױ���y�⎍��=�_o�gd꺃�c���v��� 6� �Ȟ <f- ��5��-_�����{۾H$p%��g�mk��TS    �����M�4�&��y*Kܻr�=�S翸�{��{Ӿ�'��鲘����Ns�7/o=.=��������H��q��}ɤ����S���_ܗ�yvi a�Wa�Y]�c�{_�,q_Փ?o����?�uU�U$���zr
8d��E���8�{2���_�J
�/jT�T����3�m�J�TV:{�����zWo���S}���ng�۰�wu8��&����=�������i�!!�3�ݛ&*�,�������x๩Y��.-�����MaHвŝ� ��at*�� 

================================================================================
// File: assets/sounds/boost_stop.ogg
================================================================================
OggS                 <��vorbis    D�       q     �OggS                 64%�0�����������������vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS @V             ˔-&M�c�E�%�T�i�a�R�����ǝ�6��(�L�A�O�T�G���z�~\R�sI�S.���"�s��G�R�0���[����]}m;6g���;��k�|cs�u��u(�����3�e��	�e�_��� �L��.q���`M-��< �]^|�j��.Fg�/ d՘�_����jQ�T)�"  uK�o��j��f�S�9����=n�O �sl�,r.>U�1�M�tvX�P�mr���a޾\.�/z ���9.�i``�� fz��f�ǁ���Kx\����c���I&��Ű���U�)r�eVO7���M����O��>����; ԓ=�~�� ��VC/��f�4����Y�<>���t��:��� �l�}�U4�N�	l�[z!6-���j� }�i��^�=ؠ� �����m_�F �`Y$,؆���r��	$� �Q$!�a��H �V�׶������ �e|_�_�A��(���j?~�4{�ض����" @�*�4L�B5ťYP  ~���,����K�� �ᾜ���ê��0�{r��>3�h�����;�c���恞���yߡ������}`�n��y���a�a`���M?���\fz`x�nh�����iއ������@34pu�9W��q��p �a��������x��gz�K�>8���׌�p�@���1h+���o���%������Z� 40����p�|\�gn���������
 �
d���^�``V��-}����x� ��8�� �U��w� �����h|�׶_��?_ۨ���(�'�1 �j��� ]8�O�	-�KIf��! �|��|5��w]r>|x{; ��7��R�L����Tc ��p��w�UO��������-�x�O./�=�秇Kǃs��|��\t33�����tt/��;3333�� 3<O3�0�ͼ���4����/� �������F��e �� �U��y�t��=I���䳐 �hf�5C�)��	���հ �Ȱ��Ӷ]��
����-� `���Oa���b �~'����ה�Q�����mU�YK��0#��n��]�x+��/ ��6R��7t z�B�8�qRfv�I  ��x����~�?�|��k�۷�7̍��j�ø�Y��A�>�� �"���c4<x�?p�]�~u�����nMBU��W�]yQE���l��fk��al���˚5��;�Yn�%fA�m�mdVzf�V��gv�$�(^ަi��K>.�ch.���`v�cف��EB��
�l���?_&*)S�x[� [Fd$c�m�F��i+-8� ��$�D�6,\@ �6d�+a��P0�d�F2� �#��U�'����|�W�0��|�D ��$�V$ /^�-׭����k0�
��_�ђ�L�g��JJf}���/ aSs=�3հ�ef�  k�!�o�>=x]��@���|���Wm��`�Ο�O?�c?�=�����7~[���'Ī����8�q�<d]Uuq'�Y	u�d�TR�E��\�l�5�0��(��sˌ��)�m�٬�ڢ�J*+뢒����vȌ������)�� X�� �`2>�?���w� < ���f
�*(���;��aצ18�#ga� �Ĩ�k��Ȍ���2l97 �W)C Sn�@¬`s����܌, ŢT�b��P�  (�b �e� ��X �@��/ak.�5'��@�f.�l�^c� 0 ��-�A�H?�fX�Y����b�R쑯��Z�o�ӿ �  ��Z=쇟\�3ff���  @��' �'7@���y!@ �HS7�|�����8'c�N��9F��9���;q��E��Y�?������23��JH �=�<#b`�����<��2�� ��!� ���.2�� �:�C �cƩ�Ȥ J�E�����a�86�8v�	dt%��,���E}=k��z����* �z�`dD�� �ZX�T9����8v8�Mű$�@~�;�8�MI�JBH(
$`�*�H  @��y��gIZʞ�z
2P(���ql�$IV,    � �  �W�a�T��VR�����Ws^�l	OeX �8p����ro/��`�!�'��jT)N�:033�   n��@���?9C2���mb�K�ln>���i �����g������?��-�Q��5��C^^��=o3���>C��>ܕ��}p�߇jx�>r�{NRn'�Q(�� *Y��"N��%,$�-z�MP��P`@�� !��$XSD%cS�1T��� $P�EU
*J ��Ab�U�
�~
��!��^�E��n^V��PZ@`���������8�@(�,�RX@��5��C�hѶ�Q+����5�gkc�O������O�i-� �ȝ�]�lZH�G�z�:�ȝ�]2-B��$��3N  �0@R�H�R@!(1!�]�,�L  @;�   ��1   J+(e�Ӈ��g `s�  � @�`,�Ӵ@.P|�Z�ZUŊ*X�6�%�ҕ����H��~��+� Fjɾ.`�sQ�	eY%D��V���@%ˀB�	M��( �Pe50X�,����̼�ɝw&_`߂\���3�Y`�����F�W��$�MV�=��Na�ڦ+��, @��@�Ď�!6!��r fc  �h  (V;[C UC-��,�P.�a(+,"��&%�%�  ��.���84 -�Xq�HR��@ 8�`�&���t� �{"`�V���{H�u�E�
�V kpa(�� �A�Bî��"I� tTU���T�d�L� �����ؐ �ߟ7������C��"I?F��Y�Z#q��`�p+-�{�p8�	��I���l]�H�N�D������Up $hA�ى��:q)b&ff  @K�
   �6{  UD�aF˂ DH��<*���&&BЁ� ��β=F4�ɦ��������	����c��Y�1���_L�t�4�oO`Kh��p��7�9�'�3I4��h,�CBJ���^Me2<Rf�.�3�w��<}a����h޶��k�
? ����TWC�녯��<[w���Em+z��Ut; ����$,�ppB,��K��   �v5[  �-kT��p)0|��D    k�F�C'��6�h5  b� �8��� � #/a��2�����в@�� r�Z?��u�uB��D0�="_�(��
h!�Qyj�  ^V�X��>}^�  ��l ���2����BVF��d'>7�R�zP����E�T���y�8
H  ǰp`h
a�(�7T�ef&    �1\@�h  �XEaX�e(�#.B���`��
  ` � �   ��	i- �-�0��#Q)V�Cp�0�5c���/����^QS�򔅐��SV�=�@(h@� � P�$8�0�2�Xqv��S���J�w[!�3PP��B�] �1�p�v'+�Ӣ-G+�ᘄc%1
?���O����d�zD��僅;;q�B5��s�,  ,�@	�h&RS�L   @j9   ��   �j�&�R�	J�
 �WMQ�� ,K� �4 �ʶ�ҽ	5� �UAL7�]� �w�@�X4�%tY��PP����3����˛
]Gф� ����0�I��R�pS�&_(�
�t� �gݭ�T��T齏އ>�Ϻ[�n5|��w�}�  q�S	��"���     �l- �TaIb X��  �b�D+   ��   �&��U�)� �`X<K� �: �ŀ (�� >?  ��`H   � � o8@< � �W >��dv����$�<��%��]*a~����i  �Z8Чc�7ߚ�T�2  ��R�   �3�t( E]�CAU���!<a��B�   `a����2C��n@����LsM����/�s��eh��qoLfn7�����w��������Y�Ȕ�|]��7SwY�4	���nо���b�A�t�?&�*gr��8QU���0gf�y;����.Z�����o�i�́���|Ԯ� [�7�b�l"
3
��5{Fй�����i�a�K��?i'nY����� ��o@�ݍ�H�� \0������4o����)_��l�i��G������n�  t&"�1,�BU��    ��   �MG   �ʵ�!����8��  D!   X��x���i�p�Q����[W���Iy���C_Li� �1�4}:���J�hw;���^25��;�F9E_H��Z���M��a���Qr��7���1~��6�0I�|]�(X� ��$�^ �D�xꂄk�|�����\�ƣjZ%�6l���dzZ$��:� QW�``�e���4����S>�*�e��4���:��|�Ud!  :&��ֶ���L	J  ��   ��� �[�3f���PJ��q�	� 3  �����N7?R� �Ԩ�А 4�#whxO&��'Y&%�X:�>�ks��A�8E.��8�:O�N��
��So�K0"�:A�uR���q�L(�+'(�6g�⬙TvL�/�ZJ�&S�`�I�Hjv��?�V���L�2>w�[|��SE1)��K�
�������Wh�R 0�s� K` H
��L�@�*4�� @%� �5|U��_�
>Z��o�I�	��Q�[�e�u�j%md��m-�,$S�b  �hG�D��b  ��B�L`��1W��Ӈ�_��l�C��.��谚h�I�Z��b�~O9���s�����Yw�b�.e�5����:��+g8�+�6��R�Ԍ��$J�EM9ͼ�HvoN�o� �0��7q]g�����?����h?M�;GD==�S�*V�C�9=����燲@��\�U��'S�d.��3�ث���������[W���fφ6 }���y��J] }���6�4	9
Z.��w�5ɥ�;��S�TM6p�*a�k� ��hy��
lF\ �5|��?���p�2�b��&݀`H�v[>F֨�Y����$  �Bb�9�x��j@X��J��Y�\zE=�zֆ�>i�F,�[������ܥ*�����[ɹi�2�R�$N�YWs����{�ɧ��&�oȏ� +k{�.ڙ5kN�Q���&U�0���/_���A�Pm�?+�΢�7�'X�n�������Fٺ}|��i�tV���Ȭ�q�g���Qw@���}�w����5Of^����h���NS���Ma`V����`�"��0L�rBA�L�孯U�{��~m��4�}9��P^�J�(��Im�4
��!o1��`T�;�� �e�8�=p@ ���v ��|G۶������  @��0�h������U��>F�=&��%&�8�������g��Q�\5{�}6��x���!��x֟M�t�w�9���磪�?L����I<Ų�.�9���d�Zu�kU����n�8���Y{��s�L����;�Z������M_�{�C��;;I��ꐯ�8���{N�z����O��>U���P3�u��nh�9�J�V�����+�1{߻u�f�>�A��w���z�;I1�����c�����q�U�>rw��ϭ�[<�u�G����|gu�GHE���ո�nX���t@ ��  �e|oۧp@�����$p�Q�m��PUf  �c�(��)"��a��dގl���_^�{��������<���볯�澘��Nj���A?��$9p�9��؞�l���dg@m&��sg�T��}���C�lMx�w�49])͔��U��?=�u��=�'���y�^ �oh-�4��LA2׿p�ݬ�4Y��yj��x���$�� �z����e����y:)��>�L���_���׼d'u8�����M�8��3ש��q>�?M>=L��u��9=	���rޛ �)���}��;�����(|������0N�FuN�ڤi���.�/�"��D�o(�	 �e���_�8o���Q@����Q��P�%  �a�r�
���o��:ó����y��4h�ȑ�79f��߿��Y/і��;�������q����'��#��<���/*+-��CmΛ�}����ߜ�Oe}N}Ni��g]��<�3�+����¨&����������#��ɳ���Y$sv����M%P��]9��@BN�Q�"kd�.s���?��J��3�s&S����<*��"�kw�ÔL=��u���� �L�>�ϐ%�8W�P0*����G�7���.p��n�	��6v>h__Ț��>�R�U���*o��A�Q�`�!��U� . 

================================================================================
// File: assets/sounds/button_down.ogg
================================================================================
OggS          *      �_�vorbis    D�       q     �OggS           *     ��m�����������������vorbis4   Xiph.Org libVorbis I 20200704 (Reducing Environment)   %   Software=LMMS (libsndfile-1.0.26pre5)vorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS �       *     ��hlhhU���q��:�����������v��4\j�+�o��Yo�9d@2ǩ�����8��?c��믏y��׵<'._v�~�7��cخ��E�?���,�y���E����Q[k+բ��+�T�ؙ)���(��В�a�G��g5 Ĺ[A�N��/��״%͋p2����&�ܴ	|�`7k,�������k�h���k�]y�>u��C��M9�����reБ]=��ݞ��O<g§~ZY�xI��� �����b�l0�������f|�]y���ӊY|�O��Z<_�޾_^6�^ΓN�OuaQkg�����)�v���v[2����C��~�[�bõ�B�|�a�04t ����ܷ�w*s���'�4�õ��y��G�K�z�����p��Q������oLxu��מmG��Y������� �n݃�{L�ݏ�~Pd�`�4 ���	�7�ݷ1	��f����s��RS9~�G���ẓ��Ie%�:�7��F%�P]�u��0 ���ʾ�~D[���ݨ���o�Q��ة�sTO��������V� ���gTf*�
2  �����H^�o����v���(��s�_��>4������%���o�������������|������7Lc�wwv�aY������~��~vO;+���߿~�?��+k�}��?�Ld��>��}m{�����\s53���ן9��>����$��e����>Mr�g��?z��a�'a�C�� u��tL�M&S���MW=�0E�T_��T>�l�s��a}�����r����eW�~����0��(�j�T����箖v�x���|ַ�X�t� >��]P��Zgw'uv�������xn�u�$�f-F�=�EAg뚭�k��؜_�������,��&$Q.)h�x�l�@~f�1��7�
��Pq����Ƙ�Ϣ��   �s��Ua�I   �k��N� ���sݺ�ʾ�q�5��'7㴸{�������x9��zz������:>���E>˟�6�s�s�m�r�υ�������Kl�ߙ��l Ɠj��sR]P���v���מ�x���u�ݼh��I׺���}���M��~��l���ÿ�d`�fg���\�����I-�_���ʹG�N�����3'�L���A�]���􆛤׳���A���Z��a�J�E�Meu��94$u�.������7��Փ��*������G�qu�*�  tǿ~�����.�������I�=�<0JE`��?���5 	��~ ��  �e��(�6�e��(�D�5       P������ٷ�/��EY����������(�ܽeT� ��uY5d�Q|�Y��k��>CVV4P��>�,��Q�ʂ�ʺ*�������(7�����Y-���������u�d�==�++k�������  8W 

================================================================================
// File: assets/sounds/button_down_alt.ogg
================================================================================
OggS         8*      ��J�vorbis    D�       q     �OggS          8*     {��m�����������������vorbis4   Xiph.Org libVorbis I 20200704 (Reducing Environment)   %   Software=LMMS (libsndfile-1.0.26pre5)vorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS �      8*     �9�2jqik^���f��Vu��)N�/ͧil���گ���~���/�8��G*�� ��1�_�F�ŋ6��y�ȣϯkyN�>h	>����~a,۵�(��a[ԕ: o�}�p����~}TU�^ᢌ�u���y�^,�2���%L�ٜ��bֱf-�Zf~��}Q��;���zH[�N��/���fI�"��5����<7m�Y��Uy���m���+��)�������lnJYl��p�bm��v��Г�׭Km
�/W��/@�E	Y�����h@|�^�j�gu��}��`������H��¨����?�7G��$c|���}��l򽰨L3W�����f;� s�J�U~�����gZ��4�����,��ah� ��� �?��o5�kɹ���*ſ��0�'���i�]������G���(���t��7&��Z�k϶#l��M�r�,� tV�%/����t��yu�2��/H`�q
R[�ޗ	fV��fPق�v�Wv��ϔ�Wq�I]��;��bQY��"���;�Qm=]����&��:x\�o�W���3@�섽����GQ��DS|h'�� �x����w�?|�?eQ���E���VUU%   ��|���c>e���q�3!^=�7�<D�m�rk��e�o�2�6*{wg������^{����}����7����r�7?��p�p<O������U<��?�}���ye���ʦ�-˲TT47�-�dX���?}����<�\/�<�>E��d�;�O�S���V]~k�y��wf.�Jo������6^�E�~N7^X��]�_�Нf�8S�<����j�Uyӕ�>3e���;�����W3@3ېL%��V�M���޷����k����p[x�����z . h�fN6S]��	�9�o�7�ŏ+�
�3٨5� �44�%.l\V(tJ[  @��( >f��Lm�R�2����6���K�E.| �����m�F����    d�1�M�{�a�i��� �\12ݳ������X��ÿ�5�·m���\y�E��=�ĳ�������3 t{�J�}�P3G-%/�H��Uy����ޝ������Sd9��H����~Z���q�^T1WW횮xg]���z(i�)�S��>��0m�'C�hO69���r��'�0�3�cprj7FW�^��po�T��:{�CQ��Q�^jY�T�WI|ms�q� �fJ������W��W�cMC��L���w�T�gS5��tⳡ��ӯ�3�e���o?.��ދ�k�[n~9������·��e�kՐȈZ%�kn�v  �e��(o����������         0u���5 �������]�e]ޟ��g�]/�����G�r:��ig}~����}�gz��e�,�y�*ϻ������]�"}�y�I��ՕSSS���+Ce��\]]]]� ��  �[�   

================================================================================
// File: assets/sounds/button_up.ogg
================================================================================
OggS         !*      u>�Rvorbis    D�       q     �OggS          !*     ڊ]m�����������������vorbis4   Xiph.Org libVorbis I 20200704 (Reducing Environment)   %   Software=LMMS (libsndfile-1.0.26pre5)vorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS �      !*     /^�-F`ijjfP���T �à,��?�*�h�e�g�ڌ! ^�e�g~$6K��/Q���|��Ɠ����}����s�6�����?A�Ͷ T��fCx�:a�����ŝ��7�����6}�vU�i{�[��{~��p����������?<���/Eܧ���Y�����]����O�^�[??-��^��a�i�4�
�Fn�O��uo���#s֍��}>�غ�m���ݐ�D?�]���ۅ���qe���-f}�l��ϗMW�ϗ�GI|��C��8=�ϵ���|m���V'fd�����Ե�h�إJh�y�~�ŝ�:���Д\� p{tL�k����ߕ�^S���������w�7��远��j|N�+۫G'�1�����g�z=H�[J�Js�y�V�PdЫ�[8�VBS���?�5]Y����d ������Bx���o%U�˃z�ߨ1<�lJJ����><���ɏ���Oo��v����� �Gw�3[��><��~��hR+�9O����-�����?߱c$D ��.��������^gY>w�V?�1��(�z{{-e������jr�x}�����]�����*���g�,T:?^����=��������
�� ��  3�g�u��V:S������r�[g�֟�O^�ǌ�Ժ����N]�ڕ�b���Ih���q�=�Tp����ʏ���h�l�� �x��W����?��ӏ?�/_\�|������j�Z�F�תR�  ��%#@7����U8�C�C�C�C�C�C��_���v����w߿{��T�9��1�����x8Q���Q/�".�����|�����~����~O���WV��a���:ۯ���/�j1{��I�Y ��b�h�ᛕ}u6E���3ߋD ���͏�G��ĕ�z�M��������[ �hs4�) ;�!��_jZ"{׽:��@��\�ö����m��޵��a�kڸ�7t��a �����̐Yfd�c�kǢ>����:�P�\T7�E�;g���,��ً횺�����0���v#�w�6BJ����Iټ�k�`@�e�\�1g�)��?u�OĐ�h�^������?0FG[����   �6��l�v�����(�ja�����ݵ��NFa�kF�����y���������Q���q�睬�;��&���ρ3��!�Ck3JM���5=�qt��L���s�{3r���G����z����1]���g"7Y�w��Y�E��Ug�!M�W%���XU��t�4s��;+�F�U0]���]X���w���1cj��,*�UC�)_A>����9�́N�i�g��Izzm�*�{`mr#+��gd�빚z�p������9(Y^�g��	� �'ﬄ3m���+��l��50b �D n���Qޔ             

================================================================================
// File: assets/sounds/button_up_alt.ogg
================================================================================
OggS         U*      �7vorbis    D�       q     �OggS          U*     ".�Em�����������������vorbis4   Xiph.Org libVorbis I 20200704 (Reducing Environment)   %   Software=LMMS (libsndfile-1.0.26pre5)vorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS -      U*     �/+�H`imgjO���f� ��5�L@����|r��L���8Qь1 @�m��^^t��>�&�^�SϹ=�Yo������o����?]n�֯!E� $
��~I�ӕ�b��Y������������Vv �OXW��K�yØ˛G\�����/`�����y]��=���Y���x�}n��{����(�b�a+Nv	%4իU?ۙ#�D-�Q�)W~���D��^'  �s6+��f��E��|{����T���x�����`Χ'���u��3�(x�Ͽ?��˳_���/J�y�u�! �j�F�W�L	Ou����Uv����\�X��i�9͒��|�B�/W
[�n��5�_�.�f�m�uN���������s�;�ɢq�:T�|w��v,�X�N _ǿ>�,�V�f�����ܱW�([2o��%���N��;F�:Hg!=�  ͨ��������۬'���f]LY�ޘ�͔l���7������ų��#=�r���>X��(�o��z4��Z�Y�y� �YwN��nz�R�[d�/@k�D >�:Vr*�yT�o�g�3�]�%�T�����կ���ߺ�4!J���h�l�SEY.��������3���7�ę�F�V�?vϷ���O��������>��G�:��X  �N�EWJw���{�AE��߿ܲś�ح˝phb���?_�Zx|�NE��~W���Z���_b��{E��2<�  o���������yY�E{����U�P�.  ��[��Wޞ��y-��ue������~A�A�5�D�.i���3�5���--,-,�Zfea?�.���b�൶���}��g����qGqG�u��||�77���i�>�?|��/���vq����w�}��'+�azz���ӻ9�>�}'s�_�|����4�^I��_����ꬷ+��r���r�K�w�^Ȏ�:'�����g�M���ʤ���b؇���u<I�jמ��gg%�Y�$w����p�_,[l/dK�g��B	j8��Pəo���~5fܘaP���*��,��{�] օ>���B�T\�KƳϯA�GJ�!���H˶�¿v��Йɶ��Έ�C �e�<�F
��qzcƯ�\�K�]1j���W ��m�Q33Ue   ȨPr5��/��G(`�R�����Î>�V�b9~�f~g��d�x̘���y>�<�~=WM�����Nrhm2ρy&������c�~*:Lr#z���$�l��DwѽSe.��e3�8���n���,x?��u��&�nLs��@�ߵ�g�yy� �b(��r�S�[�n�r��'�5�~����+���]B����]����Ь��k7v�su��<�J�M���gvצ�J��W���U�r��ӧ��=�]=(*{�l�J*��i������71O���4�f>�g�)]a��uS��(��O��C�-S ��O ( �e�{�7M �2�w�7(`c�f�*        ��?vR,���?�ߟ����>���o�cQ�}�|y�^�'��y���� ?�3�>�ϯ�����|>߫�v�{ K��>�3�������S�u�Wee坕SWW�����9��z�i���{ TVO����67?>>   ����|�s c
 

================================================================================
// File: assets/sounds/error_1.ogg
================================================================================
OggS         I      
��%vorbis    D�       q     �OggS          I     P��������������������vorbis+   Xiph.Org libVorbis I 20120203 (Omnipresent)      ARTIST=KenneyG   COMMENTS=Sound generated by GameSynth from Tsugi (www.tsugi-studio.com)vorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS  �)      I     �@�84368<JKJO;C<=@HFE>5LNIM@@=8=IKJ�:AHQNB<>JM�-�	���<	�dP!�>	�dP!�~ ��(@@��jP��8��X�"�3��*��D��I6�	R�ds� %� �cZ�
s8\�!�,6�Z�?�]U�+R�R$� Tߌ�[�0�AU�͘�5C+��c�I�<.�0��7y�h+-�m�F��T�𵯞�E$��r��W��"��cHI
sXJ��h������^Bv�+u0�
:wc8D:0й���!ґ���C>�00R��ðX�Z�)v��fZ�`kUE��{#��ϛ�;���b��!ÿ+ ���
 ���
 ���L0ANN�,*�iggo�aE-�UEt��F�؊z�n5�VD�"V���������_9����7��5ڣ	��R��фB��J=DĖ �A
P*�.
Zt(*VEѪZQѨ����!X�Q�`{Ǳ���^W�|�ޖ �VK��*q�WZ-�F��^��H,1���V쬋�i`��"֢�w���Fk�hE�Z�F����j5V��k�����ƈm�Z�����j-�6 W����H��C`$�VEĖX�+,� "���[�O��s%��N�����%0uZ��d�D,��TR�����@F0��j5��U���{Ģl4b��8|4��nSx0�N��RX0:�K��`"tթ$e��a��1ĈN#**N�;TwFk �?���r��\��7�F��ߊA��"c����@�U'R�	C�����(hPm>��N�[��c9��^��m]�X�Ql>�'{��

hl>�'{��

h�Q����d00�� bM�(�&*��2���wU?�JF7 |*K�R|d��SYZ��#��J*�����Ձ��(F�*
VEE����XQ�F�U�J��_��<��C�9j��Z�>��n����N�=
o���
2�	�!`�VE#Zt��h���ݥ�i���*�^G����*����d>~ڏ�q�f>~ڏ�q��7��!C��i�!����UTkDk��XcU4EЪ������e�*:������ \6���0v����Y����� eL������boE+6�B_�P]�l
&j5:�T��|d2�?{�J&��Ӱܠ$��"'�)` ԰3�N��%�)���"X�������]\>{Pm����g�o��W"�d� *�2d���TEc���,5*��(�`QЈV1� Z��CT� l��3�.%��gT-\Jp֭�L6�0ȑ�(j�@MS�(�Z�EP�ZՈ(�F��(���Q�s"
l�"���������K�=�	!t\�L(��;�#�C�A�v�Պ�b`���"��*
֩
�FcQ��"/~� G�֥��j�U�tN�8�;��槺%��VR�1j�nڀ���XA4֪�	ZEc[ŗ�O�Qۖyj(�F+��OD���T�3|N�#6�d��9-�����n�AA2Rk�la��]4���b,�ժ�ߝ\Fy�z����B�a��BhC��e�!��z3)� �#�����@Ր���N�_AӊÂ��[}�\X^mO^��Bˤ6�!
-�6�h�@��L��A��#D�b�fk*����O�����ؼ��a֩Ȩ�8tJw8;8�tJw8;8���f��9�����-�`�� V�B��ꈛ�1%�[�OB��|J�'{�C�~J�'{�C����2LK�1ƪ�(�10U,FF�� �Zo�R#��ΕW���|F��}c��)��-j��mH���[s	&0��AlM6Z+��וa����U�J�vh#�HU�����e�.:� �6��6Hi~H#1��_�AJ�C�AdM�$���@�X�jkw�С�k������*��x�W��B����j(k�O��N}?�=`�!C�������7k*�lb@��Q+��bE�ZѢ��Z�*
߶� ��E�Q�PѢEP0��բU� R�(���FSܽ�.�Q�Oy��<�{��   �	D�(#�#1Gb��L��,�$   �E�d�H���*ր1V�Ay|q	1ieD$�b�RR|*B$��f*�a�X�0E���u" hET1 ���]�ns�B�;A��.����-�����*� ׸J}�t�����v����P5�Y�JU� �Aś����r�n���ؤ'ĥj�Urש���N�z����m��I����N3ď����S/t��VOMΐ/��f뵩��&fai�̦Q�[�,FK>=v���r��hɧ�N�sQ�}@�2"S��c�@�`����ʿz��ʉ�����ϕ��W�lFu_��1{3���l�����dm099@ը�jw{ﲻb� �bр�4q����#��f}<fK�'$/D ���R�	�H�e]!	rr2�������FQE��()�777��M���})��������-+~��K�V%aI�Pq)׊�$,	tFԅ�29RQ5F�°j�b*Z�TQUE�u��ƪТ* ����Dtz7�Z���M��;��3�n�� ����"b $l�l�ka�!�)6jkk�ЩC�V��Q@ATkEUE�V�"�jX�1lF5EZQ��qe���t
�>K1P!,]П>K1P!,]�'w�� F�j���V���C�*&X� UE� ":������#��BKD2��N��
"�Y�۲0a`��ig�*6�5�b�J�G,9�ˈ�Ӵ�����N�\FwI ���.� `ջ��0P�Cm�bSl�iH�9"�b� hEŪhU��Fk A���.���F�Ԅ<,���hA������6�	���[ô5L�S�A�EA�pW���QQTD��NkU��S�ʩ���}S�t:�c��Ҹ�Ng�b,�4]Bٟd###���ִQ�P-��bE��*ZEDkT�b�����'��]];ww'\9+.���d��A6�]3LbJkn�z� ��&1�   ^����,I�T�X,�"Nacfbcff���m/�)k�	VD���U� ��/ ,$*"�GTG�������a8�K���aiE��&��j��1 "�X��fL ۶E-w��"V�h �mPĪ+j�w������u�����X ��Nr�����i|����X,KK����;}��8�b[�U�X,��8@�_�)0���dgB�N�$�-T�P��F*�h���}�łO�d�\io������h��?;�G�0�!�ݠ	uq ����ͳQ�M�c27�F�7��-B�J�{*1bG�L��,F���� ��δ�5�00�V����`�k��C-m�DM��0�Tk6���jE�V��č���m�X2_���:�l��M�f])/���S��ͷ���u_��T��q�]\��V� Vr./W²J�N�� x<�Ϳ����.���uR�rz;��롻�I/&ٗg��2���=���_#�y��&rc`��B/xd��V~OB7�^on��ܽ_}1$~x���l;K7_L��т_��,�|1�u����r N������ف��Y�ŘI P���Vc���l0L��aE��Һa�i3*�b�kbiZ�NV�"��QQTQ1�����/2�]���{+y��/}�,��Xc�U���B@L�#k�AT���Rsz��Ԑ�'�-�'\����h�f�B����$NU��;_k�q�'���l�q�J�,�E�%�6��H����?�n�6n������9�dow���N|>p�X�@%��d��x��H >G̨T^��p�4G̨T^��p�� `�L��������L2� @ID��2 aŉ�O[�M����0UKm�ѴɊu+&�Z�&�a�a՚U�TE��h5�jm�hE����Y��5�̮�	y�])�u�&����.�ς�dC6�x�/�&�$�]���I��,�+R��S�}�J$��Xw�L�f�wk�Y������p����	��#�d�:>d?�������P��v�EW{��l?��/_�Uӎ�����	UM���eHv�@ ^W�w6w��	����P0� �J	5u�gL[�T�����b��$  �Ȁ1��AFl0LӴ`1�(@@�Xq�QT+ZE�0���
V���Rl#b�C����M�6`X�QU�Ffi��|�o�^�Gͪ?[T]��ei�Ԭ�􎪋v�\]��Z���Z��e���U��Z���թ���鏚����H��Q-�����XHw������U·.��{�.��y�����`3��]ϣHS�Ĥ�}��֤�Lwd{�$ OggS �[      I     ������9F@?������� ��� ^gt�{l>Ep������|�*�`�7 �����L� � ���#1ff1ffvc  Y�b��� ���cgU[����(�("��(R GL��r�QUD�jA��������#��= ��F  �Zth����m5ƈ`[�^ԭ]Z�Y�jm�+��IO��x�dG�u�uݥ�AE�A�p���m�t�fc��.�|�co�8� �q� 0�;��^���=rɢ���z�7�6��r��D�V	�"::`�6f��/�L'�0I3���X�i��| �m/q�ބTb��bb���LL,� �QHlL{;lm5�D����)j�ژXĨ ���b����4)k-Q�â`EcѨ r�T�A�v���O�ZhX/%ď��Z:B���ʐ�����_eO����`��m�K�������d�H�upF�G��p�1+�FXk�^��#8����q�L�H#�,Y��Z���#�XK��i�����|�)�o�o.�
����sS!�{@�l���THhr�:����,�1F��&�s'�t�wXՊ*�%�#� �	���Vh&ٯ�ϟ��L��� �&HN���"�Ec��+��A�`��(�UŨ�8�f@+e��BQ���	����%��MH�Ƈ.���M����L��Q5��Q]�E_�J+���Jw��n������9_��	�ó�	.�oB���i�쭉2D"'''���X�X��X#��?��P�Q�W�"�V�r��\4�y{��SF$���+g�aA�_:����   �����R9�9888�13313	 Ed Pj� HJ�I����<.<@��
	P�eX����Қ5�nZ����ia��XX� ��)�;
�kw�|C�ċ��䅴��������)s/�����]��+�V#blU�h߄��#��\f�C�8����R�ŗ܆W�w�4�A��C�{5R6\�2��}�j���{eC<��׶�,pE�:�� ;��kM�Ļ�gIt�ߕW��$��]�憐�;!��k V��-�$�_�'V��-�$�_�'�'@��,jj˄��������;���133��3	@Ā  �#EAը���X��(j�Ҋu,1
�ȷ��|���9��̶Z���}۪��k"���r���I#��  ZĂ�y �:�@��ڂn��=��V�I�kZ�v�Yt w��m.�Z�!{��Ĭ�I��;��m��= ��.�� _���.��smhx��T�D�v�9Yz6ŋ��@ V��/m��؄>aaE����i�M��� I�j%���C*1&NE�@���L��  �"X�j�U�ִ��Z�UVA��a�ʂ!¢����U0"6jai]L  �b�:tZ���! DUDU��&5��N����Η�?gY�j�8�ҒX���!���S�{z���$h#���f���I*X��ֈ!	^>���OF;"���k$����Z��p�hx������,�"�o�g����&�ݶny�/G��4rԐ���'��8{��*�P�u�#�WF�ĩ YG�?"eDO�
�   xA�ڀ��888����133�,F�L( � �X�
���`����D  1� (�`����(˲\!
�(%��0Դf]  ��b��
 �ӢC+  l�@54�>U[�)�"ΡlN�j��y��n�`�W,��s���tȁ�-5�	�W����u�M>!MZ�Ǫ/����������@d���]��:�,tx��kǑ9����ԁtm�ϯ��ڴhЅu6��
� F��~�����!����/�Mû� 
��J8C�q$���� �� ������L�L   Q�c��v�El-������aT0U�Z����D���hT�b ����R�FPnjLb/�:O�t�W�eA�H.^��BH)4���F+"��L��l��4����Q�>FePfk|ϕ�2�)�i�g���?�s��"�� ��w��E_�p�&��&�H"���&� ţox����W�
V�˲���b4�0����yG��"L�z2 �z[�����;���13333�$ #� �ư��[m��m���bk�&�EC���ht*�XD�F�+�F�����#{�����ȇ�Ԏ|xUr*��Ԗ#����Ӏ�9�9:k7��B�K-,����i:��|��H�
�ت���F�7��N_m�o��X�ǆL�յ�����ò�@G_> �����{9�j�^��gq�.�T,��9ϲ>����Ks F��}�:2)Z��)�x��udR�fӻ� *��R�J��� �bL,F����L�L0bP����L1l�޴�ۘ�-M���i՚)`c�jAU�X�*�� ���j@�-�*S- Ơ�E�����R�H
�*k���	m�s�����xB�g�j;��4�\^J��-��@���z)ֽ�4dDR�U^��ݖqUϛ��=�G�XS��Q��F�"��Xn^��>o��8!}���q�n��/�m }3 )
�U�L�H@����x�摀�	�W �s��Tbbb��,&&�@������ ��7;{;Pl0-�


�/%�jiaaaiXA +�F� Xl�` ��:�"$Q�2���S ڵ!��O����2��
���9~YՒ�D�%�p&��Ȑ潐('�O��|y۬�c�'T����dA��%�^����:����w����Hdi[��Q�!�����J��}	�r�����\$�E<�i�A��13l�i�i�p�?  	���#bN�b���L���L�� P $P��`�Z����È0, KP��  jMP�: �n��0��zI��3ʍ9Q�!w�c_�
R"aT������-c��5p�J���{�0#"�I�]�kL$�.{���Q-g,�&���i�_���t BZX��`�[�|�'24��}��RM��L���6_O>C� ����ޒY��@�E��kh4Y�˼�A��+H!!�ڛC*b1f&s���,�b PkĨ�����L�i������bc���B��j�*�U�b���]�.�t���#F�
y�?q}?i��h@�#��K�����~��W�Մ�]Mmu6�,��'�L*]�L�!������u���wǺ*�rPk��Ε-��*  X�}��ss�����֚�Kz�ކ`���)|mP�t� .C�n���a�>M%y��LP �e��(oJ �2�{�7%��          �� 

================================================================================
// File: assets/sounds/error_2.ogg
================================================================================
OggS         I      '�]vorbis    D�       w     �OggS          I     R�{j����������������vorbis+   Xiph.Org libVorbis I 20120203 (Omnipresent)      ARTIST=KenneyG   COMMENTS=Sound generated by GameSynth from Tsugi (www.tsugi-studio.com)vorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    #A��r�Bn=X1�$�9����39"t�A'=��9���R(DL��%7� ¦\I�8BCV Q  �1�1�r�IɠD�1	���9'���I)-�3)%�c㜣�Iɤ�K���c��  �  � �А@  bR
)��R�)�R�1�RJ9��S�9��1��)�S�)���A圃�A(   �  �B(4dE ' �p$ϓ4K%KE�e�Mו4�45QTU�U�TU�MU�%MMM�TUEUUӖMU�m�4e�TU�Uնe�~W�u�3MYU��MU�uז}_�m]�4�45QTUMU�TU�6U׶5QtUQUeYTUYveY�UW�}KU�SM�UU�U��mU�}�tU]We��UY~[ׅ��}�U��M��uU�}a�ea�u�(i�ij����(�����m���[�誢�ʲg���ʲ���l�(�����,��,�����,붨���ʲ�������,�p��������,뺭��q�0|�)˦�꺩��n�q̶m���*�°ʲ��/�u!QUuݔ]�WeY�m_w�[���m;����q���9�o��m�n�����+?a8��g��m�������n+ì�BQU}]�e�7]Yn�7�[׍���*˾�ʲ1��o�0]�6�[ם��}c��	�k��q�:��u��	Ǐ  � � �@�!+�8 !�S*� tR� �T1!sNJ��PJj!��*� T�IȜ�Jh)��R��PJk���Rk���b� �Ji-��Zj���Z�c2�d�I	��Ji-sNJ砤BJ��KJ-V�Iɠ��AH��SI��PJk��KJ1�[n1�Ji-�[I)�Sm-ƚ#� d�Iɜ�Ji-��Z嘔BJ���JJ���R̜��AH���JI)��JL���JJ��RZl1֜Rl5��ZI)ƒJl-�Z[L�uZ��Ji��Vkj��PJk%�KJ��kn1�Ji��[I��[�-ƚSk5��jn1�[m=֚sJ���R�-ƚcm�՚{� �Ji-��bj-��b����J*���Zl1��Z�9��bI�ŒR�-ƚ[l���jl1�R����sl5��Z�-ƚSK��Zs���V  �� @�	e�А� @  A�R�Iir�9*	B�9'�rLB))U�A%��9))��9%�K*-�Vk))�k-  ��  �M��
Y	 D  � ������c"�sNJ�c�I�sB*c�A()�PJ*)�JI%�  
  lДX�А@  `b1� tT2*�LJ'��Z�u�Rk���Zj���@���2K%��Zf�ĘZ+  �� ��B(4d% � @�c�9gb�9�41��*Ɯ�Bc�A!��9!�B��B��B���A!�RJ� �B)�tB��R
  *p  �Qds���BCV y  �1J9��F)� ��R�cJI�rB))�V9���Z� ��Zl5vJi-�ZCJ��Xk�!��b�5��Z���kJ-�Zk͹  � �E6'	*4d% � � �c�1�b�1�C)Řs�)�s�9�b�9�s�1�s�9Ƙs�9�s�9�s�9�s�9�s�9�s�9�s�	  *p  �Qds���BCV �   Vb�1�1�c�1Fb�1�cl1�c�1Ƙb�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�[k���Zk���Zk���Zk� @�
 �VG8),4d%   Øs�9��)褄B�CJ9(%�PJ))sNJJ���ZJ�sRR*%��R� ��ZJ-��Z%��Rj���:���Zk���AH)��Z�-�PJJ���b�5�RRj���b�1��Rl-�c����Zk1�k-)��b���ZkI���b�5�Z �np �H�q�������BCV ! B�9�sB!R�1砃B!DJ1�tB!��1砃B!��1�tB!�:��B��RJ�tB!�PB� �B��RJ)�B(��RJ)%�B	��RJ)��B��J)��B��RJ)��B!�RJ)��RB��PJ)��RJ!�RJ)��RJ	!�PJ)��RJ)!�J)��RJ)�  � � #�$��"l4��Ph�J �  q�j�)�� Ŝ��K��rb.R�9G�eH�Ք1�SRk�b�QO�cJ1ì�VJ(���r��v�    0!3�@� ��) ����1\�2

Ǆs�i ����X���b: X\`�������2�]�u � !�����nx�O��	:E�        � ""�9�������     �� �$���f����$Dd����%                 OggS $V      I     ��@ 0102/2-/....341454/0.-0)111%'(451-/0/.1/0.4ػ�����cp� �Ӯb9 �e��(_J �	     0wzfN�t[[��j�� ���c�T�  \�5�  ���c�T�  \�5�  ���c�T�  \�5�P �>� ,� ܹ���;��}0��&7��\�7��W�s��{{{�� �R�� w^p�rg�E��v�K~�:?z��9����[z��ԡ/�Gìn� /��pg|��؜�*U��v�Nl����+�ȷ۽���ޮ�� �V��n3D�c?�\gN/���L~�����8��th����K��}��C*�G ��T�>X����#n3�V��_<v_n�J�Y/��w���8�(�cfl��;�u��_jr}M���o�KX#���!�X'�;KQˑk[_� ̒� 7����az���3e�����t˿��oOS�1�c����� �zI:7 wVg��=j�eojtckUd�VOX��:V\?��ӻg+	�f]���W��<�̆2���-u���?X�Z����s��g�*�1�; �6�1 0SLw,̝#�\_���{�>�SEu�K��������O������,��P3Q�s�-�L�6�'���������j�")�C��į�H� ܊� �eaX�l��J��f��9_�֤����|�Z���>�(Z���]�f�,M�X�;@�`߭�������뵗�^��Fy�N���˘z�ڬ
�� ����T�������I	�Y�[\\\�UE���u�����Q���ґu�����. ���P�����\n_&��d��b��{��A�b��h�7����������3�V�$l���̽ w졷?��f��>��������o�������'*�%>{��L��^M2�v�6�4؄ �jV�����������Ţ��n�X<i�}���������ի ���ܞq�� ���6O�����??ѿ��볳�Ȗ���5WRb�������.���83d��(g�;�=9�t��"�Ӊ���y�Nc�-��K�ԾsN �v�	�,�nHg%���\�����J�c[.y�xL6/���_��N-��?;u] ��� ?8���h��*�n�[�<�<Ѿ���|+ogE���w+�����/������M�l�鸁t���,���.�g�t�O�wt������� $Rc�07�fH��ǿ8�Y�*Ym����<��6���-}��g�R7� �vo��2�C{�@D�� Lc��2�Q4�%Yߵ�h�f���ew��o�r�>��@������:�����*S�6ط-1���Zgu܊͏�� ���?%�5󂁒͔�N�W���G�ֽ��2X̶O� ����
d���� ]AB�����G�8��g�7��=�s򗹉�:҂���?��e��?/&�%J�ĥ 0�@�;8���YQ:R����= �z��
��c�w�		��z�B1��Z���v�?}sZ�Y��V��~�\)��>�*�(�n�$e��+=�<� ��bQ���bq.����������e2��b�X,�_>���N�������$O���� ��τ:g.��t@so�X��`6�-k�D���?~��l�=۳��l�^�&X\\<���:� 3Op#.z��=�4xb*<����v+<����v+\�O2:}�v�?=�>��
�|j��3�z]e2���Z�����&)������9D?�fJ��2����j���?|ݘ6W*z�O������񗬾��y§S��&� ��>�c���YKn�p3�mP�ŭ���^���;ƾ�c|��\�} T.U:L;@Z>λmc:SQ����0�������X��	-3J �� ޼���Un-�W5s�hy���Ϩ���.w^3s��/Ɏ� D�2 P�_q ����|3���t��P����j[?��*�����ھ��= d�
����+�S3�|�0�}��gT���y��l����uN�Y \�� ;O �X�ݬ���~k��k�C��.�a�C^����.�C���m���A�˸���;�4;Zٓ#N�S���	ϱu���w���͓>��E$��&���O ����n��Y��^�����Ǐ?~��,F%>��W���ſ��"Wt��� p��6�L"�N�����M������<�2&S�Q�����Ϭ����W.-�$i��b���y�ZU�d���Y���&�KBF	�c��A���{b�j�}��K����!�Dq�>�(��*�v }'PC ��a�d�+�O�/b4c� +FCC�D;�y;D��P�F(���`�<>AR
�|�4�1��9�R6����S ��:UϘM#�Gle�� �φ����c�u]�<ϳP�#~�t���WZ<���ЃӜ��,
�Â� ベ]1��G4r1p��N���;�<j$�	�	�	Z�xrdF	�;�c�w#��Ȑ�� �o�� ���!	����@��tjRa�*dO���Pᙻ�E��[�	4��'���4�`��q��I�Bh$�f�� �}(���*��I
��S�O\�6�]�	�M�o��WH2I�����-�wC�1M~E��̽5��Q���H����M�'$E��
�Ծؖ�S�[H���(��Ej24{?߶��(<�,$Ζ'k��׌X8��jvՂ�zN�J�Ʊvz_3��X�[�i�t�e��m@X�!� ��\�V  ���z������ׯ}a֯������W+�p_�ٳ�y����d�+��B-��MM�뙦��gw�����a��z�a
��45�g�05u?��Ĵ<!K�r1�����K���,����Y����Ex���ݘ�����4�������q� �e��|)��      �U    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �g     �P    �e��,_J �
    �/A�[����F�3 �e�w/oJ �     � 

================================================================================
// File: assets/sounds/error_3.ogg
================================================================================
OggS         �/      }�,�vorbis    D�      0�     �OggS          �/     4(h�����������������vorbis+   Xiph.Org libVorbis I 20120203 (Omnipresent)   G   COMMENTS=Sound generated by GameSynth from Tsugi (www.tsugi-studio.com)vorbis+BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    ��!����Z�W�9(5�^1f��{��A�r�bJ9(���1���\[+�"�a:UN)�A��I-BCV Q   B�1�b�A� D�1��1!��A%��2!��R���A� ��BI��RH�  �  � �А@�  ��s�1c:�tR���9'%sJ(%�JJc2�$d�I	%�JI���R(��PJj)�SJ-vR
��Ji)�[J-Ɗ1�sR2礄RZ
���9'���R���Rk���2�t�I� �RRi���Z(%��Rk%��Zk1��b��Ji���bj)��Z�c2�d�I	��JI-sNJ!��A)%��JI�e�I� ��A(���ZI��PJK%��B)���bL��JI���ZI���Z���;)�RZ
���Z�1�c(���Rk%��Zk���b��TRi���Zj���Z���Sk1��j�1�c�9�cj)��Z�-�c�5wR
��JI-�cj-�PJj%��JI-��jL��Ji���ZI���Z���SJ1��jL��c̵�sj-��Z���c�5�k-  `�  ��2Ph�J  
  1!Ɯ3)��� ��)Řs"�sBƘsJ�sB)�JI��J))  P�  `���� ��� B ��b�9� ��R��R�9��RR�R�1眃PJJ�RL1��RRj�RJ1Ɯ�PJJ�e�1��JI���1Ɯ�B))��9�tJI���:眃J)%��Z��JI���b뜃B)%��Z�!�RJI%��b�1�RJ)%��Z�1�TRJ���b���RJJ)��Z�1ƚRj���b���ZSJ���Z�1�Zk    F�IF�E�h�А@  `b1��s2�sB!r�I�dRBi!�LJH%�9�tR2)��PR&%�TZ)  �� ��B(4d% �  !�c�1��R�1�CJ)�c�)�c�1�R�1Ƙs�1�s�9�c�9�c�1�s�1Ɯs�9�s�9�c�9�s�	  *p  �Qds���BCV �  �1J1��R�s�9�4H1�sJ�s�9��R1�sJ)%s�9!��R�sB(%��9!�RJJ�sB(���B��RRJ��J)��TZ*���RJ��VJ)%��Zj�  � �VG8),4d% � ���A!cB!�B	  p  0�� H  R�1��)ŘsJI)R�1� ��RŘsJI���1� ��Rk�sJI��;� ��Rk1�JI��c!��Rk1�ZJI��k̵��Rk1�ZkJ��k�5�Zk1�Zs�  48 �ذ:�I�X`�!+�<  H)�c�1�c�1ƘR�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�9�c�9�c�1ƜsN  P� @��"���   �a�9� ��J��sB(%�V���B))��9'%�RRj-��9))��Rk-vRj-��b����Rk��c��RZ�-�s� ��Zk1�Zk(���b��֚C)��c�5�\Rj-�Zk͵�Rk1�Zk����b���\s�=�c���{� �<8 @%�8�J�Y�hp�!+��  F)ƜsB!�B�R�9��B!�*�s�9!�B!d�9�tB!�B�s�9!�B!��9��B!�PB)�s�9!�B!�PJ��B!�J(���9!�B��RJ)!�B!�J)��R:!�B��RJ)��B!�J)��RJ	!�B!�RJ)��B!�J)��RJ)%�B��RJ)��RJ!�RJ)��RJ)��B(!�RJ)��RJ)!�J(��RJ)��RB%�RJ)��RJ)��B(��RJ)��RJ	!�RJ)��RJ)��R  Ё @��b�W�#
&�BCV �   !�RJ)��Rj$��RJ)��R#%��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ)��RJ��RJ)��RJ)��RJ)��RJ)� ����	gXI:+.4d% �  Øc�A'���Zk��PB褤�Jl�5JA!�RRJ���2訔�JJ��c���RR*%��b���BJ-�[���Zk���Z�-�Zk����Jk��c�9��A()��b�5�Z{��c���\k�9�RR�1�s�5��KJ�Śk�5�s���j�5�{:��Z���t�A�tJ��Zk�=!|�Xk�5�ރ:�j�5�\k�=���n1�\s��!|�A�k�9��:� ȍp @\0��:˰҈O���
 �  �A!��RJ)��b�)�c�1�c�1�c�1�  &8  X���Ҫ��N�����!�R1�A��P��`�Vp����� �  ���Zs���b��TJ9j��!����K�ANZk-d�('1�2���Z�R�b��t�1I�ŖJ�    �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�       �  � "������� 	!)19AIQ	       �  HV��hf�8:<>@BDFHJLNPRT        ���     @   ��OggS  �      �/     �6c!yw��������g��U��g��X��n����M�	��cOw�{�{��۝��o������o���μK�;��oT�/wϭ���;�0�&nM��P�)�\��M����{u?��!��?}�����>ιD|�n{�J�>�������j�+���(�z޸��f��r�>��!~���;���U;uw%)����w��wf��,��[��������vJ΅��U��J�<ֆQG�C���ƛ������8�U�������e���9���j��
�6�Yn�nԐ�z8��g1M  ˅8r�.�y?=�  X�ힶ�%�(S֫m x=}^k����qUV��b|ܼ��d�§�������m�ώ���1-��������d0!i�mw�E�~	���^{�rc�^���6II�4��1!ʤr��U���s��7��A��@�}�e��2�����-:j����*�&5R$�������j���J�ú�wih�ħY$�!�ji��
��v{L����ʓ��ʮ��f�pJK!@#���k�1�,��3�����V
�=���I�Ǿe��I޺߂�������,�ȱl����� n��DY�����`�8����;�G��:�[�)	&q��i�����g��[��<���Y�8�&z:[�4syYa�>=Z���F3�&xI����3ӒOsV�N~t�u]�BLqֱ[կ@�,>J�I�,���(G�~����*�����c�k���2]L/��z�qQSA�\�'��|�
�T�����3�>�_��'�k��=����2#;�E�����p9����1�Y�e�mB|���{�b�n|��������v�h,��0�n(��қ����,���}����Pw?���c�i���R�.9�|A����1)_�>���|�:��>�l��שB�x9g��N���yw]�Em�ݪ�Y5���n��wm�"�/��WV��a�:Ϫ\k�:'M�~��n~����,�o7�����"Tٰ>{����<�X��vTs�
\	� ˩��,�(n  ��#M/�g��� `��4�[�-��:�
 �5?-�A��j����t⽆=�����l2C!�=⾌lwdR�-��'�e]F���W����Aj![�]@�.H�I�v�3��i ���JT�k��!%�A���F
F��Qu� -�h�
ȟ;��L��
� ��^��#�$JDq�dJCS��ۍ���Y��xY���ث�ˑA#
F�	���<��H����1 ��p�ſq���~K�,���/7�q�7�A�g�-&���ws���آ��������-?W����Z�^��zr����"2���=����� �ɴo��e��CZ&�DD��5z��͚�=��.����/���Ӿ'��4�W]r�	7��M��,? �J�ሪX�X��R�t-ڑ��b����h�HJ��	�aJ��WN��H��җh��#�)��y��s�l���*�&S9������^e��m��6�=�����jڛGš��ԫpX���4jy�]�S����5����F��5Z����ˏ�}���Ҡ�Mc4y����S4�ɿ����cH�0�Ҙ���Z�/*��U`Y�5���%r���Ȃ�@ö�� 9�Y�_�lmP���;s����^K:ϖ���f�� ���  b�\�R�h��f��)��	�u���`=ԅ��>9�Y��:�굄~H�,�� �uÖ7�ϵ���^2�)����i�|h[�n,vɨ�>��<��7��'�2A+��y��Vg5U5}�*t�41�@�iH��񳣙�i�׶:�4GE��J]���u�^
�9.#�jhh���_D{cp��]x{��RȍS�,">ܛ��nhO&�B8%���ڽ�LU/rU�_�`S7��kZU[p��}E}SD]޻Ř�:M���=�y��u��B������M���0zlm�x���&;����Z�{-�~��nɜHJ�úW�\+�N��$���]�(��xD2�o}jqo�ppK���L��{Y�˓�G^T�\,&��'gl|�ho��ń��w�eN���8]��RN�:����>�dVZ#4��V��,<��
$;w"�}�����i�`�b~j'�=N���23qд.زJ��;�cԆ �R����d�6�{��6���b�0�0k��s�;�w8ID��B�2$�F�T�uC�VH]���n�%l�4�g��+����]����5�MD��VExK^N7Ē 0�F��6����q�5��ɏ��6��4H���!�-���Y;  �>�$��%[�8�G6��dz۴~�k�k�نX+D�I5mZs%F��;�Q��Jf�����jM5U��!� UO���ĈA�T�^�@�CVQ��Cg��|��(cID�P�)Jя�Q�s�LF���b��Ph'���:N�R�� �� ���Aa�0�h�^��#��f�[4I/��uy3GP�j+T��]����� ���e����s+/���d۸������7���,�=M����>��	$����X���M����K���I����7cW	��T,�3�LpIt[�Q�(���.>;�����Z���:�l�{�XC�9�Q�����~��MM�U�w��ċ1�Ͱ�6L1�X���G�q�a5�-���)�OI7�P�a��h�xrO�;��-�[�:��ݷ������UQ�!�@�/�tR��x��䴝ݿ��*�)�յW���'Qlbqu�UX��H���hy'9�v� \�|q��C�"
l �O�s}���J5B��.�G�x����)�^X`�2H�S���F�A#�E�5@�
\k�!Z�Ya��#U1���Pd���jE>׀Q�y���S��h�4:����y�>)�%P ~�tv�/f���{���D���U��8#���N���擃t��o;��lT�w�X�*`��#�#~��dUj=L�}����CP�(�P�3Y��$_tiF��Y7�A.�4�Jr��,J^���=�I��J#R�n�)u
P;0�|���讠ua����3T �/QJ�l�xxs؉u�a` �a�:pM�����j?�:"Q�J|"�y�z��Bu�ߩ�U�`��t��h���ދ׌�Uӭ��'�4����~���#$bV�����X�Se��g�(b��o�)���)��B���?��whH����l�)ْ�X�#�ׂ��*ͦ�ac^����Yӄ���m��ʺ���^M��Wݭ"�;T�ι���7r������;s��ZW��JE��Khr>I[���<�<s}��yl�v~S����Z%K$�Է6.@k��E�O���C�5�!�����5�J���V��P���d�GL�{S�W�\F�E=��j�s�J���c���LQB^��#�T���}K@D�P���W�,����h1d��e�PtD�@�Ho�O��$�� �-�l\��	�������rN����\��*�A��j��3W�,k�K��70�D�+��ՋdI���)j�Į W��1o>F�3�]cyD7=��0�z��?�D�%��Q7M�vL�~�ҴN~j\���;�M޶Y�5D}�K��ή꭪�9��¡�7WIˠjT'݀����d\!�Z(%��5p�}v�gx �0�SB����<���~o��R���^���1��)ZT��L���K�����1�6�o5ͪ<�d{t��0��7y�g˗%�^��t�z"���M�o�2`��)+�R0KK��;���i�,{%h��lK@����٥6��0*^T�<��K��iĸ��x�|�ͷ��8����Б?r�w�o��25Cڼe�C(>�M�'��/f�l��:�V�cV�\�-W1�\�?���+d�F��B5I�L�u����r���[u����k&�X#Fk��1�Z��ؙ��$w���c��*Ԅ<q�'e��6YZ���l ��s.�^|
��4l���9h�`al5\�ǼF0Ad��V�$ƝHQ�u����.��<�l<�L��5(_<S�V��,�Hb9_"^GW��c��$N�b�W�Yf"�ߨ	��؉�#��עԓ��$�uą .WJvkZ i1i�;�   x����M|��z��Q�u����9���P.��L�%��-�\R�+ @��̐ ��џ�'�d���ų�Z7�5#�z�x4W4��twP�,���Z$W�m 4����4E�\���{�a�x8%�%��b
 ~aje&�@��5Q�3��j�-�`n��{��$ LU�g�� ��3������m�T��hݟ�גdQH���Z^���e��{0l�H)�w?ζoM������K���5U�'r窞0���k6))���j'�3I>�eN�j*2���ӳ���zp�h�5r���o�X�6��E���x�p�Z�rf_ܿS,�8o�Za�	�S��f�:����e�H�=зvW��V���U��z{��x;�J��8�ֵ��q�e��ߔ��T�b�h�Һ�d�i@F�2#X.旭��s����=�| hs|��l�y�y�zֳ�;��������>�����������"�3+^|�~3������mZ~�2%B�(I����sG줋	
5�=��.�63a���g�s��p�&�C:|<g�]�țٶ��O}��z���YU�/��
���#SR����As�bJ�0�1��_$�B�]OggS !      �/     ��
icffeggtl�4ޔR�$Á���ǜEvwF^����lw�1�i��Nۺ���A0�iz����`X��'KQ����������I(Z�_�83�9d'j5:ϊ���ui%�VD۵^�9z��W�հ����� �����t��Ln9�)�A���x�V޿I��c�f����Ғ�~��pܖ>��>P;%���k�Y�ت��.q�K鵇E��h�g�V���}ř�ո�1��S������<��d?����B�[�V�֣V3�d��D0O[��<��y��E����V1d�����K?	wk⾵��?�:�Ld}��ٖ7�5nh�d�ڬ-��I���G��蓶}�Ou�~ӈ�"���\Yb9:6��Od��i �/���nx_�lj�g�����#|R�_�������d�|��.箢��݋���F}ָ�_g��K?��u�5��l�8�s�f�ށ�U,̅}�ʇa�h*�b��G�&?;��� ��e(��5&.&'U�q������N^�60��o��_�N�u�̀Y ��_X��4e��+1M�eꮇ�����v�;�$����0on�xwy��o����<������u/*S�4v�H�#e���r[���>��������W��}�t�� ������W�C��7�/ݦ��Qe?bi��k�!:�[4G�T�W9����i����p�����x~<�b;l��vI�{�N�u����ɩ�}o]χ'}�O��>ĵ"U���� ��<���]}Xo���c7O��P8�
yzi��J����;7�+�}T��M(��wG?Ud�q��2�*�6*kY�e>��DL�eC;~���o�m���|Zf�]K��s�����.�"���a��3��82�j�vp��������Q��n������$�=��������4i��5�R��E�����T7J,���Y]���x�1�]�����Ga9[m �T��[9��QBI���x����7���;nLu�M�Ͽȗ�����_~��_>�������w��u�~��>��v���M��	H �i�(����~��6������nʅ��!+��oMH����<�85X0q0ͨ���vtf���!�" p�M�S?�����拎�O `lYϗN?�̙+���_�u;   8����ݻw�N��s� ���_���n�N�޽{�����t���va�������� 8< 

================================================================================
// File: assets/sounds/navigate.ogg
================================================================================
OggS                 <��vorbis    D�       q     �OggS                 64%�0�����������������vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS �             ��y/UK�4fK~���O��3Vc��A�����M=cu�9,d��h���f�iݪ�a���(�j�*�HK���m���(�:u��(
�Vk � $R}_=��<~4�3W"�������G=s��SB# bc��X+:T���*��:!.U���nYT�*&��ը�¦�e����_���XuĖў�G-�o�c���P�ԭ������T���@F���b�T�bbb`bf�   �"`1FQA���b��"V;[ô��6�6b��j�bE�QUQU������������2�u�֭9眯|{[��s�9_������j���*��*�R�ͪ������-sη�����������3_���u�ֻ����Z�w�U���Z��ջ��Z��g2�3��/`��sη�VrGO �nݚ��t�z+�V�e��,_� �e��,_�             

================================================================================
// File: assets/sounds/start_game.ogg
================================================================================
OggS                 <��vorbis    D�       q     �OggS                 64%�0�����������������vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS @r             �sB#20�w�4;MN?=OI����|sx����4�J�H�R�H�4�M�7�B�M�-�����A��U:�F�� v�*�`#���@  Ċ5�6ZU���m>o�/��: ����d�;������^]Ð���̣��]Z��ݫ��YԆH"EM�6 �� `&#cffff   @A���v�� (j% ���8ႀ �d�&   ��7 ����E��c�4����k��Vr�o�gGD�b��On�n��Q����T���6ˈ�Z�>wݶ��9Z��S55��|c�������z%�� ^Ge��D=��]F�է:�QGe��D=��]F�է:� �W ��/��  �$	     D�h9 ؈U   T�4k6�$"��,�RJ����8��R
 �   �� �F   v  	@1H և�֧dQ���E�bK2}�h}J���]�-�$��Q�JM ��  �,L           �b�� �FV ��!"" �؈�  ��KJ				�8҄@��|.eY�eY���kUնm۶����M�?�ɿ��S�Ob�/�G���BMdd`��k��m�_���ġ�-�{��ߑ�]�-�{��ߑ�]�g� 9 ����b�C+��Z����T����p��+42��3����eBu�X�!�]��'��p�&-Cy�R���h�@ġU�ՊjΛ�[��6�������F$���j	��f���_����?���'�
�wy˺!��F �/�*���*^U��d������^�W@իrG��vjV����
on�f�6r�MU�+����woR���u��-�  �$k,"S,���Z� ��b�bU�4����P����f���qݥT3V�+7�ώs52C]]u��$  6���U��
t��5T4*��$������n�O;�v���@ �b��� �xD��ެ_���mZ��?v01�J]U��W*�h֬iԥ�П��j��Z��(���J5 ������:����%?H6��-�|������	�\~'C�%�	�mDYZ�
X����Ģ`%6�� eZ�&:�͐���w;��3�X�f���d���#��v��   � 0 �=�
p��ӗN���1A��      2 �����(	 �-Yr�ʢ�"U������R��  ATL{����)****Jo��o�0m��2k�F���/W:,���>?�/�h>���3,�2,SE�za  �۲,+�b�uSTT  r�,m���(   ��ԥ  �u 0����Zf����� ��i �)   �U�l�����V�Z�� �����i�,}�s��P�
4���F�GbG���wM�H�?�    ��k �  ,lpj�  ��H�0�          �  bh  ���6  @�Ê  �  i
    �j����U<   @�P d.@ ��U��-�|�����@�?�#P��o�<I\?�K?߆b<@d� � X��d ,L �:          ����   �\  S��  �b��   ciR   l��    h��Y  ���  ��   ��%���vj]��}y�?��{Y~�?	۫^�wڧ�F�o��   � �_  �� �A�  a@         ��% h* ��x  h�6   <�&    ��?8�z�s�   X����     � ��   ~�E��H�Wt�8f�۟��������%'�������   �+ ��	 ,�@         �в
 , t   �f�    �L	�^&���F   pw��    �V	  �3    ~�ř������˶σ���w�7�:o�xuv�9��}3   ���> $`aZ q         @� ��- ����x  3��    d(P*~�7�   �x
laa    �>�U��#P��}5�?�_�=+��i�����;�s�����3 �� � (��T   @�      x�Z����h �X p=   g��   $���:+   @iM[�  h5     �gE�R�+��������x�IQ�?i��cq�s����   � wq B�TB�*     �f �5    ��2!�I�I',   ��K�C	   �r  ���P  0�     `Y���  PX  � oa  Xְ ~7M�oU�.�$������{�܏�V�Z����   ��  �.� �����+     �h �K    �fn��C   W��Ϲ    D�  ��κ   eS    ,`Y ���Z`�X���f �b��[����Z�,``km.�,؁���6��kYǀ�7``La��?�lk0V�Π�n@ �X  ���/����X��N5�-S�G����|({�>ϩ�  -�� `a�T��jhDh�T     �a�  t��� H�      � Z�9߲    ��   �k   ` ����,�2����$�4��Y��Mf�����B�$@�dR��eM����TUJ'U�oǀ�\�!�$	2����n����;c�1�Z��8�]Ȳӳp�wE����`
��k�>8�Y#�I�T �����m��_������czJ��\_).�#r�   ��  �`��a��V5�    5 �FV �2  @ �������   ��y    �� �5�   0�`�f˚)ꍵd�ed@@�U�d�W�@�	@QpdRWQ  �p���\0�ݚ2��s��J�~�o���t'~9�7�e��1�
�l;�Ʒ;��~l~�V�����]����y]09�0{(����d�V�	��+�(�,3�@� ���|X޴l,������a���3}i?�vv�99��#���"B�IE1vR��� ;@  ^v�O������1�w�q�I��]�_���@ƴ  _ ,<ˎ�o�0�p)�$    �x� �& `[  �ZC   ��s��    N  �KZ � ��a7��U�M��s�BP�;1���高1P*Άÿ����P%r���]��vf���=C�:;�2�)�;��a߀��e�@2b�Vz�F��T����gϝo�8e��[��]M���	7��:�x��骬�5nyș=��<�b��i�[���=���$���[��4��q�e�I��Tc�_�q1�3 T]���.��rF�aұ Ѕ+�e\«q�e}y"S�.�=%�1��ÖNɅjp} b
 ��  N���U}T��(f  �  ��� �� @��   �|l�ý    �  �   �)	 �t YT�$Ϝ���lF?Y�$���5�;P���|���ŷ��4�+=U��,��;ljr ~ѿw(��Qm�̻3s�ޞj���ys;5ب����Sy:�*��������3ti�-9)�d�]ծ��`��z8o�ϧ���Y�y�2��΀�쯳��vw�����'�,����z�L �00�^��̨����΢���B�  &�2�%k��_� ,�P�x�u`@ f����h��-(×񑛥�n��Ҥ����? ��c ��/ d�zQ�ZhCJ�R$    \̕ @�S      x��Ɓ    �   d�    k�}�bv\�ɁGweva���R��ݵ�b��]A=0�*4Y}��{vv�'��gȩ���'k��WO���)`����:��M|NG7���������ē_d�gR=�)\Yt}��!��:�)�T��~���8�{�M�4u`�����z'�淜����+��̤���d!��m����;��%�c�Й�깫_ p�ɮ���Y��󵂟�;�o�n~7h"7��)���7 �yP`$�e|Z�S=l�X���~]�c�OP� �<q: pt�D 8r�V�UUUf  �   ��N  d��   �1W�   1   e�2E��
�Cv�Z��0}�6�jߧ#��b ��3��s�������{֘������&�oR��Z�p��b),~��L��>g���:9��v��<���Y��ygQ�o�L�|R����AՐLu_мC�,.jN>���؞﬩�i7c\��1�w��3�ym��0�0$O�@�(���VU��U����K����m���n���Bv��;���!v�e�_�--� �A8�I�>��B�ࡔ�x��5��T�S>��×��*Rί�
 8�� ��Uۡ��J�X�$  ���e  P  @͸t�   ��K `�� 22o�"d�����pJ)ω��l2��K�>ˀ�2g(�K��7��p2Kqg��J�D�d�0���Uܕ}����'S�׭z�5���2)������ԟn���m���S/�RT_d�"ɞH@^�`� �$���ԛ�;�mٟ:n��p�k�&�����)`��2��\�z0�9���P  
�i����]Ce|(X�w��M�>pk�Rj4�vy�����)�Q��
� �e�&�d��_=B����(��g�v�bه�� ��Ӌ �o��#"L�J��$  @ ��{} �.S   ��%    pC �c, �k��2�����\���<̰?#����'5�t�S�r6�����;�,�S���Ix�����TTc
:�x���F�Ou:����������"��f����t��]=@�y�;�O93�I��;A�NfU�����E��d!��ồ;��uߛO7�]�pwWQT���;�\�؏��ߜ�*�D��s�����?c��$�ʓ�4���z;on��%�u�HE�M�K��F��� ib�#�H�$ i7@ �e��䦮�֑J]V?�_�o2I>⯊�C�n���.׎v�2�4TMR�I     �p-  �8<v�   ÂE�V���iKu�sV(ㇹϚz��3u7��I���}�� �9�f�'n���\��z��ه8��P��~������bz|6�~8���"�j{�Mծ&\��h7;� 9�9}��\��G%��
fS�ђ���k�s	���f��`3��e���$����{p~��Ὡ���fN�̼� �v��-���Xw��c[c��e�L�;������ۗ��[� �L֠��>R��
��R)� �5�bEbW�!8�cB��?�I^ƕWEYg�� ��/ ���-�Ef�jʒ"   
  �+ �Ӟ  P+��iu   � @S sA���vh�Ü53�!}Ϯ�S�O6d��9-7I���������U6I��dĿ'�M�ܹ������V��1�<��'�`^;;#������'���IR�LCe�>���w_�G��j�L���P��g'��o;U�����J��P�N�����>�1�%�a�̶a݌]x{��m�΂dWU�U@��?\^؀EQ9p��,�ƥ���0������͠��-���@H��\2X9�"pV`��h@1h� ` �e��IB�]Sj\���|���.H#�� �g �Q�ٰF�U5�$  P  �`1 �
  �#    �J�ˌU3�V/��o�!��t^?]�B�\�����G�>r��ӵa���'J��Cu���q�I4�IGa�:���-6��?����k��J���t�v'a��l��=3�/�Nr4)ȤN^ �*��)qu�)
��f�����Xb��6���u��C�L3�*�.� 4��Ɇ�HH6dTWs�p���ߧ������oo�������㻻�������l.v���%��:�r�n��F�v6t�d/E����6�|���ɯ�<xņ��  f�=	���Z	|����?@�YHJ�N��3 ��C��Ҳ��:FIA� �1�  ��7&�
 �g0  4��0�=���$����i�q-v���t�Ώޖ�M�3q5L�M��9��N�������ԲΉ(�fސ\x�3�'�o�_�m��&�ǒ���h^?�v�0l�3�)0d'�(�Se����� ^�pu!�f����ǡ2v 
�5����]�0��pt� $@�4��O)3/�yj���[|࠯�tRu�'��xW��¾:�Y7�03$� �4�� Tc�� H �e���_k~vI��E��2>�����pz�2R>� ����̖�i:F�   �H���&�6gA���<�fv��*'�غ�V���A"d��;g���On�8���Կ��* HA3E��(3���?ظL30!M�ӓ�$  ��C�|��_�g@�I��������i[�6P+'~������za���1���ײַR���t� (��= �  gP䙐gΐ� ` `l�^��6�R��e6 D*0� '� �e�_�:T�g��z�k� \���ۮ'�c{��q��D �S :b�L��c��JH�I��    S�����/���C
dkjL�{-�!{��0 �]���߉��g�F���!PSm� �>6���j
�)`�wk Lq<� ��i�
=0 g0� ��ʗ�5����
 ��  �>��pz  �C�`�<އ��\ �9�
� ( �e���_B��6�e|��/%��c�4��9q;,EC:����2H   �Z3�����ک ��V�FlH�hK[--m2S�4��
ňJ��e4��	�.߆A��0�R�.Z�[vv3�F2�U,��FT�Y<	P�
(]��9!VZFFV�֮�*��x�>�����J�1 �  ��7|!/adA � �KJZR�C��ML�eif �  �t�� �e��(_J �2�w�/%�            

================================================================================
// File: assets/sounds/whoosh.ogg
================================================================================
OggS                 <��vorbis    D�       q     �OggS                 64%�0�����������������vorbis   ffmpeg      encoder=Lavc libvorbisvorbis)BCV    1L ŀАU    `$)�fI)���(y��HI)���0�����c�1�c�1�c� 4d   �(	���Ij�9g'�r�9iN8� �Q�9	��&cn���kn�)%Y   @H!�RH!�b�!�b�!�r�!��r
*���
2� �L2餓N:騣�:�(��B-��JL1�Vc��]|s�9�s�9�s�	BCV    BdB!�R�)��r
2ȀАU    �    G�I�˱��$O�,Q5�3ESTMUUUUu]Wve�vu�v}Y��[�}Y��[؅]��a�a�a�a�}��}��} 4d   �#9��)�"��9���� d    	�")��I�fj�i��h��m˲,˲���        �i��i��i��i��i��i��i�fY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY�eY@h�* @ @�q�q$ER$�r,Y �   @R,�r4Gs4�s<�s<GtDɔL��LY        @1�q��$OR-�r5Ws=�sM�u]WUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�АU    !�f�j�3�a 4d �   �CY    ��� �К��9�堩����T�'����s�9�l��s�)ʙŠ�Кs�I����Кs�y���Қs���a�s�iҚ��X�s�YК樹�sΉ��'��T�s�9�s�9�sΩ^���9�sΉڛk�	]�s��d���	�s�9�s�9�s�	BCV @  a�Ɲ� }�b!�!�t���1�)���FJ��PR'�t�АU     �RH!�RH!�RH!�b�!��r
*����*�(��2�,��2ˬ��:��C1��J,5�Vc���s�9Hk���Z+��RJ)� 4d   @ d�A�RH!��r�)���
Y      �$�������Q%Q%�2-S3=UTUWvmY�u۷�]�u��}�׍_�eY�eY�eY�eY�eY�e	BCV     B!�RH!��b�1ǜ�NB	�АU    �    GqǑɑ$K�$M�,��4O�4�EQ4MS]�u�eS6]�5e�Ue�veٶe[�}Y�}��}��}��}��}��u 4d   �#9�")�"9��H���� d   �(��8�#I�$Y�&y�g�����驢
���        �h�������爎(��i�����lʮ뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮뺮�@h�* @ @Gr$Gr$ER$Er$Y �   �1CR$ǲ,M�4O�4�=�3=UtEY        ��K���$QR-�R5�R-UT=UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU�4M�4�А�    䤦�zb�9�AhI��\:霣\���#FI�!S����I���ZjsT���dHA-��R!�BCV � �MK       I� M�      ��4@=@E                                                                    M4Q4Q       M�T�4      @E�3E@4U                                                                    M4Q4Q       MQ5O4      @E@4M@TM                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           B�!+�8 ��@� I�4�cY�<xL�X<��         @�4x<�	�4�σi          y<��H�σ��4         �L�	фj<ӄi�4a�                      �  � � �@�!+�8 ��H  8�dY  �H�e �eY�  �ey                                                                �  � � �@�!+�(  ��Xp��cY@�,`Y Mx@�  � � 4%(4d%  �p��4Q�8��i��q,K�D�ei���"4K�D��y�	��<ӄ(��iQ4M    6hJ,Ph�J  $ ��8��y�(��i���q,��DQMSU]��X�牢(����.��4�EQ4MUu]h�牢(����.4MM�4UUU]�扦i������E�4MUu]��h������@M�4U�u]��h�������4MUU]וe�i�����,TUU]וe���꺮+� �u]ٕeYຮ+˲,  ��  �:ɨ�M�� �" �  �aJ1�cB
�aLBH!dRR*)�
B*%�RAH��R2J-��R!��J� �RR) �8 �X��� �  c�b�9�$BJ1�s!�s�9�c�9眔�1�sNJɘs�9'�d�9眓R:�sJ)�t�9礔RB�sRJ)�s�9 @  6�lN0Th�J   ��8��i�'��iI��y�'��ij��i�'��i�<��DQMSUy�牢(���r]QM�4MU%ˢ(�����
�4M�TUU�i��i���¶UUU]�ua۪�����u]�ue��뺮,  Op  *�au�����BCV   �1)�R!�BH)��  � � �@�!+�p  ��1�c�16�a�1�c�1q
c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1�c�1��Zk��V ΅@Y��3�$��� 	  �A�1�$��JJB�9(%��Z��B�1���Zl1�9���Z�)��9礤�Z�1�Z\!��Z�-��l!��Rk1�Zc3J��Z�1�k,J��Rk��k�E(�[k1�Zk�5)�sK��Zc��&���1�Zk���"�R2�S��֚�0��c�1�Z���S-��ZkRJ)#d���ZsNJ	e��-Քs� @=8 @%A'Ua�	�BCV � BJ1Ƙs�9�sR�s�9� �B!�1Ƙs�A!�BHc�9� �B���Rʘs�A!�RJ)%��9� �B(��RJJ�s�A!�RJ)���R!�B��RJ))��B!�J)��RRJ)�B��RJ)���R
!�J)��RJI)�B	��RJ)���RJ)�J)��RJ)%��RJ��RJ)��RJJ)��J)��RJ)���RJ)�RJ)��RJ))��RJ��RJ)��RRJ)��R)��RJ)���RJ)�RJ)��RJI)��RJ��RJ)���RJ)��R*��RJ)�  � � #*-�N3�<G2L@��� �  ���Z��r�II�CF栤�I!�XKe A�IJ��)���*����B˘Rb+1t�1G9�TB�   �  2@�� 8@H� 
�E@@.!���pL8'�6  A����� 1�(*����| ���H���.\��]BB�X@	88�'�����ST�@      �  � ""������ 	!)19A     ; �  HR���h�8:<>@BDFHJLNP      @         OggS @>             �87,2������������в�G��a1%��qz����_��8ɱ �# �M1���?�v�"����m���mY:f��m�Vh�a�����=��X�7 ���s����R����Y���	�I   B�!��4L��bkg� Xa�<���V�VŪV�N�ZUUm�V5���(�`��թS�ժ*"�����$�7���o=�h�$�͍�2��DĪV�.W��I�������HB:S!�Z��.x=��i�n��m�Z�������7n��kSw���v����͐�~�:<QZX�~����_
������.�Z"��B~����I�uM�[��ˤϺ&�	�@;Zl�b�� ��YL�S���   5Q��*�ة��0M�5���0mV�Y�&KK50Ĉ��T-�Ol��bZ�9n��v��Ǣ�cN=폧�8S��陖e���~��AЙ��v�3�Q�?��T��C�|}�(A 7���<�������/��� ��p��y�?#��Z� �(��|������_3G�<-��]I�V�D���hL���[?T� ^H�����dL@!o�rγ�1��!�C��#1bb#vp�)��  ؊��j���1���= ��6ZK��j�V�XZ5�XU5L��� �����*���UQω1�kӡ0|,�UU`1""�|�H�}�<�o��Zc��J�����D<$�Yˠ�"�"X����S���y=��i�����c�����1;oL��#�q��3I�"[k-�B:H �# a�A?���8����(� >�B���S�Z�f�
�`~GU7�X��
pGU7�X��
pЎ��A���8� �1�90�9�1 ����V���0��T+�VlaUk��m2M�����)��"hEĶ*��_~,q'^Jߖ��R������F�VY�:�5~��-Ų�Z ��$�>����*�غ�� F����K�d��uF�	��Ʌ���c�t� ���+�}s��	t!�#������${�|��	$���|�Ʋ5@�̑��g�Ib�'o�v
~'Eïw��G"5����u_�� �Q�Uu�$���sp#fb1bff �  k�Q(j�ja6�iZ�QT�BԊ��VS�h�X�)V�o��]u��e�pd���[ 1"hłVAl1vn���K�ne����y'��J�̅��֓ݩk,k���]c�s;��� �m���Ƃ�v��!n�v�N��J�	r]|5�B��9�@ASR��Ċ}����̸�7"�z�K'k�Ӡ�$ 
��$ ~�D9���+aΐh#��z%L�̨�S�)@�&����3;03�13   ��F�*V�jT����5Vm�%�-�TK,T1L1E���b�F���e,�HmԻDy����AĪ�b�b���"������ؕ�}]��|�O�;G]d�e�K_������MrP���"�t�*�e�V���97i����=�:	��y���p�<�fuR�
�}�Bf�O��+P �:J�>Fp ^f�î���8�2�v�}��� ���RDY�$kwKE�@� F��,F�b��L    �bD�5jT��,vU5m�l��lŴ*"V,MK�f]0�A=R"+�]��^t�����b��
��+d��$�a"8��\�e��F�ċv ��7��]|���*��Z�|"�f.Y;[�\����+'QUZ��d5�K�~�G�+GGeCL�b0����Ncp�.�nz��$^t�tO�f��{�Dp3��Q�=\"��ʨ-Cl���Ĉ��X��ŘI   T����"F���00���bXĪMX�jX������V0"b4Z+Z�"�"���I���u��uMd�q��S����.Ǐ�L&V+|���00���)K�g̡���<�K"��Q^y��렱iB3f��ʝ���q�Cn�ӯ����_���c��Lj�P��7hW��3�G�����_ڨ�R`�` �e��m�n�	���=����:!�� #Ujk��&��#1fb&c1fcf  Q���EL{� �����aʹ�f��X��j��Z��(*Z�bD,�*Z ��m�F5�m<�k��'��6a"���&��DUTED+bU܉(�m�eR[,lLI����٥�#jع\�l8�ߧ��|���"1��F,���v7y��^�BK��b^�\dS�z͈��]�-��3�����dA�Cq >f��v���I�B�1���o�N��0���l��Ĉ�ĘY���d&  @@��5C�NՊ=X�İS,1�b5źi�Z�"Q�"�W�p�ˑ��/��Z��xRixη�^�!9�췼��9¢�`@P��I�~�E�?.�@^�w�>h�x��)�X� �h��3��Y������"��!����?Or�@zo�[�?L���� 
xR8f��}k����k����-Ӄ�/ ��T��J�����Y����$    k�X���lE-K+�a�Z�0�*T:u���UDը������
��T�F��'w��}!,���s�[g�XnI>�t[F�u��)�ֵ��)�Rnr-K)��/�+�r,w��⩡�Fj����i���v�?V�~�umي�dKF�ټ�b�u7��m�`��(^m�ﯹ�F�3KVu��1/ � >f�,Ӧ�z#Bxǌ�e��U�bD�Ӗ������CJ*111cfff   ��)v�ic�ukX��5�BL1��ha���jZ���F�SlQP0Z�H����"cg��[tA��k�?#�����E�3j�g@�)t���)>�TDs-�����ؖ*V�"�bl*�L���o憴����$j?!����ok�3�H���	U5����Z��#��|�SO�1a��Q>������+�v���s����.$ >f���{C%|�ƌ��to(��� ��2��1���1��13�1�    Uc��V��0Mkbia�F�V��i���US��֠갨O�>ш���1�'�|�,����?!"����r����A�/ؘܷ�{�>�-�	��/k� $@�Q�� 1�2M^b�I�������8k���{A�A���a�*�'�0�ʆ<R�%� �e�<�o��|?��0`豧r`b1ff1f1f&     P���X(jaa��5�-�Z��XLS,�4�Q� ����*��IT~��'����Wx:�]Z/���pr^mU&��u�7�V�5���A�t��52�z�>�]�t8��3qe��O���2.���f�� ~�� �e������tm�/0`�6�����If&   �h���tX��.�!�V�4E�T����i��+X��
*Z���h5bA,�X��EŪ��I�:G��]kϻ���oqn�/�`Ҍ+���5�C
g(8q�>�hb A��Y@p�J �e�|/wJ �2n��;%�0333       ���~+��p����/a�����3lu6߻ϰu���~�V���
d

================================================================================
// File: default.project.json
================================================================================
{
	"name": "slither",
	"globIgnorePaths": ["**/package.json", "**/tsconfig.json"],
	"tree": {
		"$className": "DataModel",
		"ServerScriptService": {
			"$className": "ServerScriptService",
			"TS": {
				"$path": "out/server"
			}
		},
		"ReplicatedStorage": {
			"$className": "ReplicatedStorage",
			"rbxts_include": {
				"$path": "include",
				"node_modules": {
					"$className": "Folder",
					"@rbxts": {
						"$path": "node_modules/@rbxts"
					},
					"@rbxts-js": {
						"$path": "node_modules/@rbxts-js"
					}
				}
			},
			"TS": {
				"$path": "out/shared"
			}
		},
		"StarterPlayer": {
			"$className": "StarterPlayer",
			"$properties": {
				"CameraMinZoomDistance": 10,
				"DevTouchMovementMode": {
					"Enum": 6
				},
				"EnableMouseLockOption": false,
				"AutoJumpEnabled": false
			},
			"StarterPlayerScripts": {
				"$className": "StarterPlayerScripts",
				"TS": {
					"$path": "out/client"
				}
			}
		},
		"StarterGui": {
			"$className": "StarterGui",
			"$properties": {
				"ScreenOrientation": {
					"Enum": 4
				},
				"VirtualCursorMode": {
					"Enum": 2
				}
			}
		},
		"Lighting": {
			"$className": "Lighting",
			"$path": "assets/lighting",
			"$properties": {
				"Technology": {
					"Enum": 2
				},
				"GlobalShadows": false
			}
		},
		"Workspace": {
			"$className": "Workspace",
			"$properties": {
				"SignalBehavior2": {
					"Enum": 2
				}
			}
		},
		"TextChatService": {
			"$className": "TextChatService",
			"$properties": {
				"ChatVersion": {
					"Enum": 1
				}
			}
		},
		"TestService": {
			"$className": "TestService",
			"$properties": {
				"ExecuteWithStudioRun": true
			},
			"TS": {
				"$path": "scripts/run-tests.server.lua"
			}
		}
	}
}

================================================================================
// File: mantle.yml
================================================================================
owner:
  group: 4918739
payments: group
state:
  remote:
    region: us-west-1
    bucket: slither-mantle-state
    key: slither

environments:
  - label: canary
    targetNamePrefix: environmentLabel
    targetAccess: public
    targetOverrides:
      icon: assets/marketing/game_icon_canary.png
      thumbnails: [assets/marketing/game_thumbnail_canary.png]
      places:
        start:
          configuration:
            name: Slither DEV 🚧
            description: |
              This is a development build of Slither. Your feedback is appreciated ❤️

              🚧  Proceed with caution: You may encounter bugs, data resets, and instability.
              🔥  Take a look at upcoming features before they're shipped to production.
              🤝  Send your feedback to the group wall or the linked socials!

              🏷️  Slither is released under the MIT License
              🫶  Source code is available on GitHub: littensy/slither
            maxPlayerCount: 50
  - label: production
    branches: [main]
    targetAccess: public

target:
  experience:
    icon: assets/marketing/game_icon.png
    thumbnails: [assets/marketing/game_thumbnail.png]
    socialLinks:
      - title: "📌・@littensy"
        url: https://twitter.com/littensy
      - title: 💬・Chat
        url: https://discord.gg/tyjBaP44sK
      - title: 🤝・Community
        url: https://www.roblox.com/groups/4918739/littens-Games#!/about
    configuration:
      playableDevices: [computer, console, phone, tablet]
      privateServers:
        price: 10
      enableStudioAccessToApis: true
      avatarType: playerChoice
      avatarAnimationType: playerChoice
    spatialVoice:
      enabled: true
    places:
      start:
        file: place.rbxlx
        configuration:
          name: Slither 🐍
          description: |
            A casual game with a soothing pastel color palette 🎨

            🐍  Eat candy and compete to become the largest in the game!
            ☠️  Eliminate your opponents with your tail!
            🎨  Unlock new skins to customize your character!
            💎  Have Premium? Enjoy a 20% bonus towards money you earn 💸

            🎮  Use the MOUSE or THUMBSTICK to turn 💫
            🎮  Hold JUMP or TAP to boost 🚀

            Please like ❤️ and favorite ⭐️ if you enjoyed Slither!
            Follow 🔔 to be notified of new updates!

            🏷️  Slither is released under the MIT License
            🫶  Source code is available on GitHub: littensy/slither
          maxPlayerCount: 25
    assets:
      - assets/sounds/*
    badges:
      1-score-25000:
        name: ✨ 25,000 Score
        description: Nothing can stop you now! Hit a score of 25,000.
        icon: assets/badges/score_25000.png
        enabled: true
      2-score-50000:
        name: 🔥 50,000 Score
        description: You're on track to becoming the loooooongest. Hit a score of 50,000.
        icon: assets/badges/score_50000.png
        enabled: true
      3-score-100000:
        name: 🚀 100,000 Score
        description: You're breaking records! Hit a score of 100,000.
        icon: assets/badges/score_100000.png
        enabled: true
      4-3rd-place:
        name: 🥉 3rd Place
        description: You're among the greatest! Become the third largest in the server.
        icon: assets/badges/third_place.png
        enabled: true
      5-2nd-place:
        name: 🥈 2nd Place
        description: Blaze through the competition! Become the second largest in the server.
        icon: assets/badges/second_place.png
        enabled: true
      6-1st-place:
        name: 🥇 1st Place
        description: You're on top of the world! Become the largest in the server.
        icon: assets/badges/first_place.png
        enabled: true
    products:
      money-100:
        price: 10
        name: 💛 $100
        description: Buy $100 to spend on skins and more!
        icon: assets/marketing/game_icon.png
      money-250:
        price: 20
        name: ❤️ $250
        description: Buy $250 to spend on skins and more!
        icon: assets/marketing/game_icon.png
      money-500:
        price: 40
        name: 💚 $500
        description: Buy $500 to spend on skins and more!
        icon: assets/marketing/game_icon.png
      money-1000:
        price: 80
        name: 💙 $1,000
        description: Buy $1,000 to spend on skins and more!
        icon: assets/marketing/game_icon.png
      money-5000:
        price: 375
        name: 💜 $5,000
        description: Buy $5,000 to spend on skins and more!
        icon: assets/marketing/game_icon.png

================================================================================
// File: package.json
================================================================================
{
	"name": "slither",
	"version": "1.5.1",
	"license": "MIT",
	"scripts": {
		"lint": "eslint src && prettier --check src",
		"compile": "rbxtsc --verbose",
		"watch": "rbxtsc -w",
		"tarmac": "tarmac sync --target roblox",
		"serve": "rojo serve",
		"build": "rm -rf out && pnpm compile && rojo build --output place.rbxlx",
		"deploy:dev": "pnpm build && mantle deploy --environment canary",
		"deploy:prod": "pnpm build && mantle deploy --environment production",
		"output:dev": "mantle outputs --environment canary > mantle-output.json",
		"output:prod": "mantle outputs --environment production > mantle-output.json"
	},
	"devDependencies": {
		"@eslint/js": "^9.39.1",
		"@rbxts/compiler-types": "3.0.0-types.0",
		"@rbxts/types": "^1.0.894",
		"@typescript-eslint/eslint-plugin": "^8.48.0",
		"@typescript-eslint/parser": "^8.48.0",
		"eslint": "^9.39.1",
		"eslint-config-prettier": "^10.1.8",
		"eslint-plugin-prettier": "^5.5.4",
		"eslint-plugin-roblox-ts": "^1.3.0",
		"eslint-plugin-simple-import-sort": "^12.1.1",
		"eslint-plugin-unused-imports": "^4.3.0",
		"jiti": "^2.6.1",
		"prettier": "^3.7.3",
		"roblox-ts": "3.0.0",
		"typescript": "^5.9.3",
		"typescript-eslint": "^8.48.0"
	},
	"dependencies": {
		"@rbxts/bitbuffer2": "1.0.0-ts.0",
		"@rbxts/lapis": "^0.3.8",
		"@rbxts/object-utils": "^1.0.4",
		"@rbxts/pretty-react-hooks": "^0.6.4",
		"@rbxts/react": "17.3.7-ts.1",
		"@rbxts/react-devtools-core": "17.3.7-ts.1",
		"@rbxts/react-globals": "17.3.7-ts.1",
		"@rbxts/react-reflex": "^0.3.7",
		"@rbxts/react-ripple": "3.0.0",
		"@rbxts/react-roblox": "17.3.7-ts.1",
		"@rbxts/reflex": "^4.3.1",
		"@rbxts/remo": "^1.5.2",
		"@rbxts/ripple": "0.10.0",
		"@rbxts/services": "^1.6.0",
		"@rbxts/set-timeout": "^1.1.2",
		"@rbxts/t": "^3.2.1",
		"@rbxts/testez": "0.4.2-ts.0",
		"@rbxts/validate-tree": "^2.0.2"
	},
	"packageManager": "pnpm@10.24.0"
}

================================================================================
// File: rokit.toml
================================================================================
# This file lists tools managed by Rokit, a toolchain manager for Roblox projects.
# For more information, see https://github.com/rojo-rbx/rokit

# New tools can be added by running `rokit add <tool>` in a terminal.

[tools]
rojo = "rojo-rbx/rojo@7.5.1"
tarmac = "rojo-rbx/tarmac@0.7.5"
mantle = "blake-mealey/mantle@0.11.18"

================================================================================
// File: scripts/run-tests.server.lua
================================================================================
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local TestEZ = require(ReplicatedStorage.rbxts_include.node_modules["@rbxts"].testez.src)

TestEZ.TestBootstrap:run({
	ServerScriptService.TS.test,
	ReplicatedStorage.TS.test,
}, TestEZ.Reporters.TextReporter)

================================================================================
// File: src/client/alerts/alert-factory.ts
================================================================================
import { throttle } from "@rbxts/set-timeout";
import { store } from "client/store";
import { Alert, AlertScope, selectAlerts } from "client/store/alert";
import { palette } from "shared/constants/palette";

const defaultAlert: Alert = {
	id: 0,
	emoji: "✅",
	message: "Alert",
	color: palette.green,
	duration: 5,
	visible: true,
};

let nextAlertId = 0;

const scopedThrottles: Record<AlertScope, (callback: () => number) => number> = {
	money: throttle((callback) => callback(), 0.8),
	ranking: throttle((callback) => callback(), 0.8),
};

function sendAlertImmediate(patch: Partial<Alert>) {
	const alert: Alert = {
		...defaultAlert,
		...patch,
		id: nextAlertId++,
	};

	if (alert.scope) {
		dismissAlertsOfScope(alert.scope);
	}

	store.addAlert(alert);

	Promise.delay(alert.duration).then(() => {
		dismissAlert(alert.id);
	});

	return alert.id;
}

export function sendAlert(patch: Partial<Alert>) {
	if (!patch.scope) {
		return sendAlertImmediate(patch);
	}

	return scopedThrottles[patch.scope](() => {
		return sendAlertImmediate(patch);
	});
}

export async function dismissAlert(id: number) {
	store.setAlertVisible(id, false);

	return Promise.delay(0.25).then(() => {
		store.removeAlert(id);
		return id;
	});
}

function dismissAlertsOfScope(scope: string) {
	for (const alert of store.getState(selectAlerts)) {
		if (alert.scope === scope) {
			dismissAlert(alert.id);
		}
	}
}

================================================================================
// File: src/client/alerts/alerts.client.ts
================================================================================
import { connectRankAlerts } from "./handlers/alert-ranks";
import { connectRemoteAlerts } from "./handlers/alert-remote";

connectRemoteAlerts();
connectRankAlerts();

================================================================================
// File: src/client/alerts/handlers/alert-ranks.ts
================================================================================
import { store } from "client/store";
import { palette } from "shared/constants/palette";
import { selectLocalSnakeRanking } from "shared/store/snakes";

import { sendAlert } from "../alert-factory";

const FIRST_PLACE = 'Congratulations! You are in <font color="#fff">first place</font>.';
const SECOND_PLACE = 'Congratulations! You are in <font color="#fff">second place</font>.';
const THIRD_PLACE = 'Congratulations! You are in <font color="#fff">third place</font>.';

export function connectRankAlerts() {
	store.subscribe(selectLocalSnakeRanking, (ranking) => {
		if (ranking === 1) {
			sendAlert({
				scope: "ranking",
				emoji: "🏆",
				color: palette.yellow,
				colorSecondary: palette.peach,
				message: FIRST_PLACE,
			});
		} else if (ranking === 2) {
			sendAlert({
				scope: "ranking",
				emoji: "🥈",
				color: palette.sapphire,
				colorSecondary: palette.blue,
				message: SECOND_PLACE,
			});
		} else if (ranking === 3) {
			sendAlert({
				scope: "ranking",
				emoji: "🥉",
				color: palette.maroon,
				colorSecondary: palette.red,
				message: THIRD_PLACE,
			});
		}
	});
}

================================================================================
// File: src/client/alerts/handlers/alert-remote.ts
================================================================================
import { remotes } from "shared/remotes";

import { sendAlert } from "../alert-factory";

export function connectRemoteAlerts() {
	remotes.client.alert.connect((alert) => {
		sendAlert(alert);
	});
}

================================================================================
// File: src/client/alerts/index.ts
================================================================================
export * from "./alert-factory";

================================================================================
// File: src/client/app/app.tsx
================================================================================
import React from "@rbxts/react";

import { Alerts } from "../components/alerts";
import { Controller } from "../components/controller";
import { ErrorHandler } from "../components/error-handler";
import { Game } from "../components/game";
import { Menu } from "../components/menu";
import { Music } from "../components/music";
import { Preloader } from "../components/preloader";
import { Stats } from "../components/stats";
import { Layer } from "../components/ui/layer";
import { Voice } from "../components/voice";
import { World } from "../components/world";

export function App() {
	return (
		<ErrorHandler>
			<Music />
			<Preloader />
			<Voice />

			<Layer>
				<Controller />
				<World />
				<Game />
			</Layer>

			<Layer>
				<Menu />
				<Stats />
			</Layer>

			<Layer>
				<Alerts />
			</Layer>
		</ErrorHandler>
	);
}

================================================================================
// File: src/client/app/index.client.tsx
================================================================================
import "./react-config";

import React, { StrictMode } from "@rbxts/react";
import { createPortal, createRoot } from "@rbxts/react-roblox";
import { Players } from "@rbxts/services";
import { RootProvider } from "client/providers/root-provider";

import { App } from "./app";

const root = createRoot(new Instance("Folder"));
const target = Players.LocalPlayer.WaitForChild("PlayerGui");

root.render(
	createPortal(
		<StrictMode>
			<RootProvider>
				<App />
			</RootProvider>
		</StrictMode>,
		target,
	),
);

================================================================================
// File: src/client/app/react-config.ts
================================================================================
import { backend } from "@rbxts/react-devtools-core";
import ReactGlobals from "@rbxts/react-globals";
import { RunService } from "@rbxts/services";

if (RunService.IsStudio()) {
	ReactGlobals.__DEV__ = true;
	ReactGlobals.__PROFILE__ = true;

	backend.connectToDevtools();
}

================================================================================
// File: src/client/components/alerts/alert-timer.tsx
================================================================================
import { lerpBinding, useEventListener } from "@rbxts/pretty-react-hooks";
import React, { useBinding } from "@rbxts/react";
import { RunService } from "@rbxts/services";
import { CanvasGroup } from "client/components/ui/canvas-group";
import { Frame } from "client/components/ui/frame";
import { useRem } from "client/hooks";
import { palette } from "shared/constants/palette";
import { darken } from "shared/utils/color-utils";

interface AlertTimerProps {
	readonly duration: number;
	readonly color: Color3;
	readonly colorSecondary?: Color3;
	readonly transparency: React.Binding<number>;
}

export function AlertTimer({ duration, color, colorSecondary = color, transparency }: AlertTimerProps) {
	const rem = useRem();
	const [progress, setProgress] = useBinding(0);

	const colorFrom = darken(color, 0.2);
	const colorTo = darken(colorSecondary, 0.2);

	useEventListener(RunService.Heartbeat, (deltaTime) => {
		setProgress(math.clamp(progress.getValue() + deltaTime / duration, 0, 1));
	});

	return (
		<CanvasGroup backgroundTransparency={1} cornerRadius={new UDim(0, rem(1))} size={new UDim2(1, 0, 1, 0)}>
			<uigradient Color={new ColorSequence(colorFrom, colorTo)} />

			<Frame
				backgroundColor={palette.white}
				backgroundTransparency={transparency}
				anchorPoint={new Vector2(0, 1)}
				size={lerpBinding(progress, new UDim2(1, 0, 0, rem(0.35)), new UDim2(0, 0, 0, rem(0.35)))}
				position={new UDim2(0, 0, 1, 0)}
			/>
		</CanvasGroup>
	);
}

================================================================================
// File: src/client/components/alerts/alert.tsx
================================================================================
import { lerpBinding, useMountEffect } from "@rbxts/pretty-react-hooks";
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React, { useEffect, useMemo } from "@rbxts/react";
import { useSelector, useSelectorCreator } from "@rbxts/react-reflex";
import { dismissAlert } from "client/alerts";
import { Frame } from "client/components/ui/frame";
import { Image } from "client/components/ui/image";
import { Outline } from "client/components/ui/outline";
import { ReactiveButton } from "client/components/ui/reactive-button";
import { Shadow } from "client/components/ui/shadow";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { Alert, selectAlertIndex } from "client/store/alert";
import { selectIsMenuOpen } from "client/store/menu";
import { images, playSound, sounds } from "shared/assets";
import { palette } from "shared/constants/palette";
import { brightenIfDark, darken } from "shared/utils/color-utils";
import { mapStrict } from "shared/utils/math-utils";

import { AlertTimer } from "./alert-timer";

interface AlertProps {
	readonly alert: Alert;
	readonly index: number;
}

const MAX_VISIBLE_ALERTS = 5;
const ALERT_WIDTH = 35;
const ALERT_HEIGHT = 5;
const ALERT_PADDING = 2;
const LIST_PADDING = 1;

export function Alert({ alert, index }: AlertProps) {
	const rem = useRem();
	const menuOpen = useSelector(selectIsMenuOpen);
	const visibleIndex = useSelectorCreator(selectAlertIndex, alert.id);

	const [transition, transitionSpring] = useSpring(0);
	const [hover, hoverSpring] = useSpring(0);
	const [size, sizeSpring] = useSpring(new UDim2(0, ALERT_WIDTH / 2, 0, ALERT_HEIGHT / 2));
	const [position, positionSpring] = useSpring(new UDim2(0.5, 0, 0, rem(5)));

	const style = useMemo(() => {
		const highlight = composeBindings(hover, transition, (a, b) => a * b);
		const background = darken(alert.color.Lerp(palette.base, 0.25), 0.8);
		const backgroundSecondary = darken(alert.colorSecondary?.Lerp(palette.base, 0.25) || palette.white, 0.8);
		const message = brightenIfDark(alert.colorMessage || alert.color);

		return { highlight, background, backgroundSecondary, message };
	}, [alert, hover, transition]);

	const hasGradient = alert.colorSecondary !== undefined;

	const updateSize = (textWidth: number) => {
		const width = math.max(textWidth + rem(10), rem(ALERT_WIDTH));
		const height = rem(ALERT_HEIGHT);

		sizeSpring.setGoal(new UDim2(0, width, 0, height), springs.gentle);
	};

	useEffect(() => {
		transitionSpring.setGoal(alert.visible ? 1 : 0, springs.gentle);
	}, [alert.visible]);

	useEffect(() => {
		const position = (ALERT_HEIGHT + LIST_PADDING) * index;
		const offset = menuOpen ? 10 : 5;

		positionSpring.setGoal(new UDim2(0.5, 0, 0, rem(position + offset)), {
			tension: 180,
			friction: 12,
			mass: mapStrict(index, 0, MAX_VISIBLE_ALERTS, 1, 2),
		});
	}, [index, menuOpen, rem]);

	useEffect(() => {
		// Alerts that are dismissed are still in the list, but are invisible.
		// Do not count them towards the index of this alert to prevent it from
		// being dismissed early.
		if (visibleIndex >= MAX_VISIBLE_ALERTS) {
			dismissAlert(alert.id);
		}
	}, [visibleIndex]);

	useMountEffect(() => {
		playSound(alert.sound ?? sounds.alert_neutral);
	});

	return (
		<ReactiveButton
			onClick={() => {
				dismissAlert(alert.id);
				playSound(sounds.alert_dismiss);
			}}
			onHover={(hovered) => hoverSpring.setGoal(hovered ? 1 : 0, springs.responsive)}
			soundVariant="none"
			backgroundTransparency={1}
			anchorPoint={new Vector2(0.5, 0)}
			size={size}
			position={position}
		>
			<Shadow
				shadowColor={hasGradient ? palette.white : lerpBinding(transition, alert.color, style.background)}
				shadowTransparency={lerpBinding(transition, 1, 0.3)}
				shadowSize={rem(3)}
			>
				{hasGradient && <uigradient Color={new ColorSequence(style.background, style.backgroundSecondary)} />}
			</Shadow>

			<Frame
				backgroundColor={hasGradient ? palette.white : style.background}
				backgroundTransparency={lerpBinding(transition, 1, 0.1)}
				cornerRadius={new UDim(0, rem(1))}
				size={new UDim2(1, 0, 1, 0)}
			>
				{hasGradient && <uigradient Color={new ColorSequence(style.background, style.backgroundSecondary)} />}
			</Frame>

			<Frame
				backgroundColor={alert.color}
				backgroundTransparency={lerpBinding(style.highlight, 1, 0.9)}
				cornerRadius={new UDim(0, rem(1))}
				size={new UDim2(1, 0, 1, 0)}
			/>

			<Outline
				innerColor={hasGradient ? palette.white : alert.color}
				innerTransparency={lerpBinding(transition, 1, 0.85)}
				outerTransparency={lerpBinding(transition, 1, 0.75)}
				cornerRadius={new UDim(0, rem(1))}
			>
				{hasGradient && <uigradient Color={new ColorSequence(alert.color, alert.colorSecondary)} />}
			</Outline>

			<Text
				font={fonts.inter.regular}
				text={alert.emoji}
				textColor={style.message}
				textTransparency={lerpBinding(transition, 1, 0)}
				textSize={rem(2)}
				textXAlignment="Left"
				textYAlignment="Center"
				position={new UDim2(0, rem(ALERT_PADDING), 0.5, 0)}
			/>

			<Text
				richText
				font={fonts.inter.medium}
				text={alert.message}
				textColor={style.message}
				textTransparency={lerpBinding(transition, 1, 0)}
				textSize={rem(1.5)}
				textXAlignment="Left"
				textYAlignment="Center"
				anchorPoint={new Vector2(0, 0.5)}
				size={new UDim2(1, rem(-ALERT_PADDING * 2), 1, 0)}
				position={new UDim2(0, rem(ALERT_PADDING + 3), 0.5, 0)}
				clipsDescendants
				change={{
					TextBounds: (rbx) => updateSize(rbx.TextBounds.X),
				}}
			/>

			<Image
				image={images.ui.alert_dismiss}
				imageColor={brightenIfDark(alert.colorSecondary || alert.colorMessage || alert.color)}
				imageTransparency={lerpBinding(transition, 1, 0)}
				anchorPoint={new Vector2(1, 0.5)}
				size={new UDim2(0, rem(1), 0, rem(1))}
				position={new UDim2(1, rem(-ALERT_PADDING), 0.5, 0)}
			/>

			<AlertTimer
				duration={alert.duration}
				color={alert.color}
				colorSecondary={alert.colorSecondary}
				transparency={lerpBinding(transition, 1, 0)}
			/>
		</ReactiveButton>
	);
}

================================================================================
// File: src/client/components/alerts/alerts.tsx
================================================================================
import React from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { selectAlerts } from "client/store/alert";

import { Alert } from "./alert";

export function Alerts() {
	const alerts = useSelector(selectAlerts);

	return (
		<>
			{alerts.map((alert, index) => (
				<Alert key={alert.id} alert={alert} index={index} />
			))}
		</>
	);
}

================================================================================
// File: src/client/components/alerts/index.ts
================================================================================
export * from "./alerts";

================================================================================
// File: src/client/components/controller/controller.tsx
================================================================================
import { useThrottleCallback } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { useInputDevice, useStore } from "client/hooks";
import { REMOTE_TICK, WORLD_TICK } from "shared/constants/core";
import { remotes } from "shared/remotes";
import { selectLocalSnake } from "shared/store/snakes";

import { Gamepad } from "./controllers/gamepad";
import { Mouse } from "./controllers/mouse";
import { Touch } from "./controllers/touch";
import { useToggleTouchControls } from "./utils/use-toggle-touch-controls";

export function Controller() {
	const store = useStore();
	const device = useInputDevice();
	const snake = useSelector(selectLocalSnake);

	useToggleTouchControls(snake !== undefined);

	const updateAngle = useThrottleCallback(
		(angle: number) => {
			remotes.snake.move.fire(angle);
			store.setWorldInputAngle(angle);
		},
		{ wait: REMOTE_TICK, leading: true, trailing: true },
	);

	const setBoost = useThrottleCallback(
		(boost: boolean) => {
			remotes.snake.boost.fire(boost);
		},
		{ wait: WORLD_TICK, leading: true, trailing: true },
	);

	useEffect(() => {
		if (snake) {
			store.setWorldInputAngle(0);
		}
	}, [!snake]);

	if (!snake) {
		return <></>;
	}

	return (
		<>
			{device === "keyboard" && <Mouse updateAngle={updateAngle.run} setBoost={setBoost.run} />}
			{device === "touch" && <Touch updateAngle={updateAngle.run} setBoost={setBoost.run} />}
			{device === "gamepad" && <Gamepad updateAngle={updateAngle.run} setBoost={setBoost.run} />}
		</>
	);
}

================================================================================
// File: src/client/components/controller/controllers/gamepad.tsx
================================================================================
import { useEventListener } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { UserInputService } from "@rbxts/services";

interface GamepadProps {
	readonly updateAngle: (angle: number) => void;
	readonly setBoost: (boost: boolean) => void;
}

const BOOST_KEYS = new ReadonlySet<Enum.KeyCode>([Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2, Enum.KeyCode.ButtonA]);
const THUMBSTICK_KEYS = new ReadonlySet<Enum.KeyCode>([Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2]);
const THUMBSTICK_DEADZONE = 0.3;

export function Gamepad({ updateAngle, setBoost }: GamepadProps) {
	useEventListener(UserInputService.InputBegan, (input) => {
		if (input.UserInputType === Enum.UserInputType.Gamepad1 && BOOST_KEYS.has(input.KeyCode)) {
			setBoost(true);
		}
	});

	useEventListener(UserInputService.InputEnded, (input) => {
		if (input.UserInputType === Enum.UserInputType.Gamepad1 && BOOST_KEYS.has(input.KeyCode)) {
			setBoost(false);
		}
	});

	useEventListener(UserInputService.InputChanged, (input) => {
		if (
			input.UserInputType === Enum.UserInputType.Gamepad1 &&
			THUMBSTICK_KEYS.has(input.KeyCode) &&
			input.Position.Magnitude > THUMBSTICK_DEADZONE
		) {
			const angle = math.atan2(-input.Position.Y, input.Position.X);
			updateAngle(angle);
		}
	});

	return <></>;
}

================================================================================
// File: src/client/components/controller/controllers/mouse.tsx
================================================================================
import React, { useEffect, useState } from "@rbxts/react";
import { InputCapture } from "client/components/ui/input-capture";
import { lerpRadians } from "shared/utils/math-utils";

interface MouseProps {
	readonly updateAngle: (angle: number) => void;
	readonly setBoost: (boost: boolean) => void;
}

const KEY_CODES = new ReadonlySet<Enum.UserInputType | Enum.KeyCode>([
	Enum.UserInputType.MouseButton1,
	Enum.KeyCode.Space,
	Enum.KeyCode.LeftShift,
]);

const MOVE_DIRECTIONS = new ReadonlyMap<Enum.KeyCode, number>([
	[Enum.KeyCode.D, 0],
	[Enum.KeyCode.W, math.rad(-90)],
	[Enum.KeyCode.A, math.rad(-180)],
	[Enum.KeyCode.S, math.rad(90)],
	[Enum.KeyCode.Right, 0],
	[Enum.KeyCode.Up, math.rad(-90)],
	[Enum.KeyCode.Left, math.rad(-180)],
	[Enum.KeyCode.Down, math.rad(90)],
]);

export function Mouse({ updateAngle, setBoost }: MouseProps) {
	const [keysDown, setKeysDown] = useState<Enum.KeyCode[]>([]);

	useEffect(() => {
		const averageAngle = keysDown.reduce<number | undefined>((acc, key) => {
			const angle = MOVE_DIRECTIONS.get(key)!;
			return lerpRadians(acc ?? angle, angle, 0.5);
		}, undefined);

		if (averageAngle !== undefined) {
			updateAngle(averageAngle);
		}
	}, [keysDown]);

	return (
		<InputCapture
			onInputChanged={(frame, input) => {
				if (input.UserInputType !== Enum.UserInputType.MouseMovement || !keysDown.isEmpty()) {
					return;
				}

				const mouse = new Vector2(input.Position.X, input.Position.Y);
				const direction = mouse.sub(frame.AbsolutePosition).sub(frame.AbsoluteSize.div(2));
				const angle = math.atan2(direction.Y, direction.X);

				updateAngle(angle);
			}}
			onInputBegan={(_, input) => {
				if (KEY_CODES.has(input.KeyCode) || KEY_CODES.has(input.UserInputType)) {
					setBoost(true);
				} else if (MOVE_DIRECTIONS.has(input.KeyCode) && !keysDown.includes(input.KeyCode)) {
					setKeysDown((keysDown) => [input.KeyCode, ...keysDown]);
				}
			}}
			onInputEnded={(_, input) => {
				if (KEY_CODES.has(input.KeyCode) || KEY_CODES.has(input.UserInputType)) {
					setBoost(false);
				} else if (MOVE_DIRECTIONS.has(input.KeyCode)) {
					setKeysDown((keysDown) => keysDown.filter((key) => key !== input.KeyCode));
				}
			}}
		/>
	);
}

================================================================================
// File: src/client/components/controller/controllers/touch.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";

import { useTouchMove } from "../utils/use-touch-move";

interface TouchProps {
	readonly updateAngle: (angle: number) => void;
	readonly setBoost: (boost: boolean) => void;
}

export function Touch({ updateAngle, setBoost }: TouchProps) {
	const [direction, jumping] = useTouchMove();

	useEffect(() => {
		if (direction !== Vector2.zero) {
			const angle = math.atan2(direction.Y, direction.X);
			updateAngle(angle);
		}
	}, [direction]);

	useEffect(() => {
		setBoost(jumping);
	}, [jumping]);

	return <></>;
}

================================================================================
// File: src/client/components/controller/index.ts
================================================================================
export * from "./controller";

================================================================================
// File: src/client/components/controller/utils/use-toggle-touch-controls.ts
================================================================================
import { useEffect } from "@rbxts/react";
import { UserInputService } from "@rbxts/services";

export function useToggleTouchControls(visible: boolean) {
	useEffect(() => {
		// todo: use a non-deprecated method
		UserInputService.ModalEnabled = !visible;
	}, [visible]);
}

================================================================================
// File: src/client/components/controller/utils/use-touch-move.ts
================================================================================
import { useCamera, useEventListener } from "@rbxts/pretty-react-hooks";
import { useRef, useState } from "@rbxts/react";
import { Players, UserInputService } from "@rbxts/services";
import { useCharacter } from "client/hooks";

/**
 * Returns the direction the player is moving in and whether
 * or not they are jumping.
 */
export function useTouchMove() {
	const camera = useCamera();
	const character = useCharacter(Players.LocalPlayer);
	const humanoid = character?.Humanoid;

	const touchPosition = useRef(Vector2.zero);
	const [touchInput, setTouchInput] = useState<InputObject>();
	const [touchStart, setTouchStart] = useState(Vector2.zero);
	const [direction, setDirection] = useState(Vector2.zero);
	const [jumping, setJumping] = useState(false);

	const getSide = (input: InputObject): "left" | "right" => {
		return input.Position.X < camera.ViewportSize.X / 2 ? "left" : "right";
	};

	useEventListener(UserInputService.TouchStarted, (input) => {
		if (getSide(input) === "left") {
			const position = new Vector2(input.Position.X, input.Position.Y);
			setTouchInput(input);
			setTouchStart(position);
			touchPosition.current = position;
		}
	});

	useEventListener(UserInputService.TouchEnded, (input) => {
		if (input === touchInput) {
			setTouchInput(undefined);
		}

		if (getSide(input) === "right") {
			setJumping(false);
		}
	});

	useEventListener(UserInputService.TouchMoved, (input) => {
		if (input === touchInput) {
			touchPosition.current = new Vector2(input.Position.X, input.Position.Y);
		}
	});

	useEventListener(humanoid?.GetPropertyChangedSignal("MoveDirection"), () => {
		if (humanoid && humanoid.MoveDirection !== Vector3.zero) {
			const delta = touchPosition.current.sub(touchStart);
			const direction = delta !== Vector2.zero ? delta.Unit : Vector2.zero;
			setDirection(direction);
		}
	});

	useEventListener(UserInputService.JumpRequest, () => {
		setJumping(true);
	});

	return [direction, jumping] as const;
}

================================================================================
// File: src/client/components/error-handler/error-handler.tsx
================================================================================
import React from "@rbxts/react";
import { ErrorBoundary } from "client/components/ui/error-boundary";

import { ErrorPage } from "./error-page";

export function ErrorHandler({ children }: React.PropsWithChildren) {
	return (
		<ErrorBoundary
			fallback={(message) => {
				return <ErrorPage message={message} />;
			}}
		>
			{children}
		</ErrorBoundary>
	);
}

================================================================================
// File: src/client/components/error-handler/error-page.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";
import { TeleportService } from "@rbxts/services";
import { Frame } from "client/components/ui/frame";
import { Group } from "client/components/ui/group";
import { Layer } from "client/components/ui/layer";
import { PrimaryButton } from "client/components/ui/primary-button";
import { Text } from "client/components/ui/text";
import { TextField } from "client/components/ui/text-field";
import { fonts } from "client/constants/fonts";
import { useRem } from "client/hooks";
import { playSound, sounds } from "shared/assets";
import { palette } from "shared/constants/palette";

interface ErrorPageProps {
	readonly message: unknown;
}

export function ErrorPage({ message }: ErrorPageProps) {
	const rem = useRem();

	let index = 0;

	useEffect(() => {
		playSound(sounds.alert_bad);
	}, []);

	return (
		<Layer>
			<Frame backgroundColor={palette.crust} size={new UDim2(1, 0, 1, 0)}>
				<uilistlayout
					FillDirection="Vertical"
					VerticalAlignment="Center"
					HorizontalAlignment="Center"
					SortOrder="LayoutOrder"
				/>

				<Text text="🐍" textSize={rem(5)} size={new UDim2(0, rem(5), 0, rem(5))} layoutOrder={index++} />

				<Text
					font={fonts.inter.bold}
					text="Oh Noes!"
					textColor={palette.text}
					textSize={rem(3)}
					textAutoResize="XY"
					layoutOrder={index++}
				/>

				<Group size={new UDim2(0, 0, 0, rem(2))} layoutOrder={index++} />

				<Text
					font={fonts.inter.regular}
					text="Something went wrong, and we were unable to recover."
					textColor={palette.text}
					textSize={rem(1.5)}
					textAutoResize="XY"
					layoutOrder={index++}
				/>

				<Group size={new UDim2(0, 0, 0, rem(0.5))} layoutOrder={index++} />

				<Text
					font={fonts.inter.regular}
					text="Please send this error to the developers, and try reconnecting:"
					textColor={palette.text}
					textSize={rem(1.5)}
					textAutoResize="XY"
					layoutOrder={index++}
				/>

				<Group size={new UDim2(0, 0, 0, rem(2))} layoutOrder={index++} />

				<TextField
					clearTextOnFocus={false}
					textEditable={false}
					font={fonts.robotoMono.regular}
					text={`${message}`}
					textColor={palette.red}
					textSize={rem(1.5)}
					textAutoResize="XY"
					textXAlignment="Left"
					maxVisibleGraphemes={512}
					backgroundColor={palette.base}
					backgroundTransparency={0}
					cornerRadius={new UDim(0, rem(1.5))}
					layoutOrder={index++}
				>
					<uipadding
						PaddingLeft={new UDim(0, rem(2))}
						PaddingRight={new UDim(0, rem(2))}
						PaddingTop={new UDim(0, rem(2))}
						PaddingBottom={new UDim(0, rem(2))}
					/>

					<uistroke Color={palette.red} Transparency={0.3} Thickness={1} ApplyStrokeMode="Border" />
				</TextField>

				<Group size={new UDim2(0, 0, 0, rem(2))} layoutOrder={index++} />

				<PrimaryButton
					onClick={async () => TeleportService.TeleportToPlaceInstance(game.PlaceId, game.JobId)}
					overlayGradient={new ColorSequence(palette.blue, palette.mauve)}
					size={new UDim2(0, rem(12), 0, rem(5))}
					layoutOrder={index++}
				>
					<Text
						font={fonts.inter.medium}
						text="Reconnect →"
						textColor={palette.base}
						textSize={rem(1.5)}
						size={new UDim2(1, 0, 1, 0)}
					/>
				</PrimaryButton>
			</Frame>
		</Layer>
	);
}

================================================================================
// File: src/client/components/error-handler/index.ts
================================================================================
export * from "./error-handler";

================================================================================
// File: src/client/components/game/compass/compass.tsx
================================================================================
import { lerpBinding, useViewport } from "@rbxts/pretty-react-hooks";
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React, { useEffect, useMemo } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { Group } from "client/components/ui/group";
import { Image } from "client/components/ui/image";
import { Text } from "client/components/ui/text";
import { useRem, useSpring } from "client/hooks";
import { selectSnakeFromWorldSubject } from "client/store/world";
import { images } from "shared/assets";

import { useLeader } from "./utils";

const ANGLE_FIX = math.rad(-90);
const MIN_RANGE = 20;

export function Compass() {
	const rem = useRem();
	const viewport = useViewport();
	const leader = useLeader();
	const subject = useSelector(selectSnakeFromWorldSubject);

	const [displacement, displacementSpring] = useSpring(new Vector2());
	const [visible, visibleSpring] = useSpring(0);

	const style = useMemo(() => {
		const rotation = displacement.map((vector) => {
			return math.deg(math.atan2(vector.Y, vector.X) - ANGLE_FIX);
		});

		const position = composeBindings(displacement, viewport, (vector, bounds) => {
			const angle = math.atan2(vector.Y, vector.X) + ANGLE_FIX;
			const directionX = math.sin(angle) * bounds.Magnitude * -0.5;
			const directionY = math.cos(angle) * bounds.Magnitude * 0.5;

			return UDim2.fromScale(
				math.clamp(directionX / bounds.X + 0.5, 0, 1),
				math.clamp(directionY / bounds.Y + 0.5, 0, 1),
			);
		});

		return { rotation, position };
	}, []);

	useEffect(() => {
		if (subject && leader && subject !== leader) {
			displacementSpring.setGoal(leader.head.sub(subject.head));

			if (leader.head.sub(subject.head).Magnitude > MIN_RANGE) {
				visibleSpring.setGoal(1);
				return;
			}
		}

		visibleSpring.setGoal(0);
	}, [subject, leader]);

	return (
		<Group>
			<uipadding
				PaddingTop={new UDim(0, rem(6))}
				PaddingBottom={new UDim(0, rem(6))}
				PaddingLeft={new UDim(0, rem(6))}
				PaddingRight={new UDim(0, rem(6))}
			/>

			<Group anchorPoint={new Vector2(0.5, 0.5)} size={new UDim2(0, rem(6), 0, rem(6))} position={style.position}>
				<Text
					text="👑"
					textSize={rem(3)}
					textTransparency={lerpBinding(visible, 1, 0)}
					size={new UDim2(1, 0, 1, 0)}
				/>

				<Group rotation={style.rotation}>
					<Image
						image={images.ui.leader_pointer}
						imageTransparency={lerpBinding(visible, 1, 0)}
						anchorPoint={new Vector2(0.5, 0.5)}
						size={new UDim2(0, rem(1.5), 0, rem(1.5))}
						position={new UDim2(0.5, 0, 0, 0)}
					/>
				</Group>
			</Group>
		</Group>
	);
}

================================================================================
// File: src/client/components/game/compass/index.ts
================================================================================
export * from "./compass";

================================================================================
// File: src/client/components/game/compass/utils.ts
================================================================================
import { useEffect, useState } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { setTimeout } from "@rbxts/set-timeout";
import { selectTopSnake } from "shared/store/snakes";

/**
 * Returns the current leader's state. If the ID changed, this value
 * will be debounced to prevent jitter and excess updates.
 */
export function useLeader() {
	const currentLeader = useSelector(selectTopSnake);
	const [leader, setLeader] = useState(currentLeader);

	useEffect(() => {
		if (currentLeader?.id === leader?.id) {
			setLeader(currentLeader);
		}
	}, [currentLeader]);

	useEffect(() => {
		if (currentLeader?.id !== leader?.id) {
			return setTimeout(() => setLeader(currentLeader), 0.5);
		}
	}, [currentLeader?.id]);

	return leader;
}

================================================================================
// File: src/client/components/game/game.tsx
================================================================================
import { lerpBinding } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { useSpring } from "client/hooks";
import { selectWorldSubject } from "client/store/world";

import { Transition } from "../ui/transition";
import { Compass } from "./compass";
import { Minimap } from "./minimap";

export function Game() {
	const inGame = useSelector(selectWorldSubject) !== undefined;
	const [transition, transitionSpring] = useSpring(0);

	useEffect(() => {
		transitionSpring.setGoal(inGame ? 1 : 0);
	}, [inGame]);

	return (
		<Transition groupTransparency={lerpBinding(transition, 1, 0)} size={new UDim2(1, 0, 1, 0)}>
			<Minimap />
			<Compass />
		</Transition>
	);
}

================================================================================
// File: src/client/components/game/index.ts
================================================================================
export * from "./game";

================================================================================
// File: src/client/components/game/minimap/index.ts
================================================================================
export * from "./minimap";

================================================================================
// File: src/client/components/game/minimap/minimap-cursor.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";
import { Image } from "client/components/ui/image";
import { useContinuousAngle, useSpring } from "client/hooks";
import { images } from "shared/assets";
import { palette } from "shared/constants/palette";

import { useMinimapRem } from "./utils";

interface MinimapCursorProps {
	readonly point: Vector2;
	readonly angle: number;
}

export function MinimapCursor({ point, angle }: MinimapCursorProps) {
	const rem = useMinimapRem();
	const rotation = math.deg(useContinuousAngle(angle));
	const [smoothRotation, smoothRotationSpring] = useSpring(rotation);

	useEffect(() => {
		smoothRotationSpring.setGoal(rotation);
	}, [rotation]);

	return (
		<Image
			image={images.ui.map_cursor}
			imageColor={palette.text}
			anchorPoint={new Vector2(0.5, 0.5)}
			size={new UDim2(0, rem(28, "pixel"), 0, rem(28, "pixel"))}
			position={new UDim2(point.X, 0, point.Y, 0)}
			rotation={smoothRotation}
		/>
	);
}

================================================================================
// File: src/client/components/game/minimap/minimap-nodes.tsx
================================================================================
import { map, useInterval } from "@rbxts/pretty-react-hooks";
import React, { Element, useState } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { CanvasGroup } from "client/components/ui/canvas-group";
import { useDefined, useStore } from "client/hooks";
import { selectSnakeFromWorldSubject } from "client/store/world";
import { selectSnakesById, selectTopSnake } from "shared/store/snakes";

import { MinimapCursor } from "./minimap-cursor";
import { MinimapTracer } from "./minimap-tracer";
import { isValidPlayer, normalizeToWorldBounds, useFriendsInServer } from "./utils";

export function MinimapNodes() {
	const store = useStore();
	const snake = useDefined(useSelector(selectSnakeFromWorldSubject));
	const friends = useFriendsInServer();

	const [nodes, setNodes] = useState<Element[]>([]);

	const update = () => {
		const nodes: Element[] = [];

		// this doesn't need useSelector so we can avoid unneeded re-renders
		const snakes = store.getState(selectSnakesById);
		const topSnake = store.getState(selectTopSnake);

		for (const [, snake] of pairs(snakes)) {
			const size = snake.tracers.size();
			const step = math.floor(map(size, 0, 100, 2, 10));
			let previous = snake.head;

			const isPlayer = isValidPlayer(snake.id);
			const isFriend = friends.includes(snake.id);
			const isLeader = topSnake?.id === snake.id;

			for (const index of $range(0, size - 1, step)) {
				const tracer = snake.tracers[index];

				nodes.push(
					<MinimapTracer
						key={`${snake.id}-${index}`}
						from={normalizeToWorldBounds(previous)}
						to={normalizeToWorldBounds(tracer)}
						isPlayer={isPlayer}
						isFriend={isFriend}
						isLeader={isLeader}
					/>,
				);

				previous = tracer;
			}
		}

		setNodes(nodes);
	};

	useInterval(update, 2, { immediate: true });

	return (
		<>
			<CanvasGroup
				groupTransparency={0.5}
				backgroundTransparency={1}
				cornerRadius={new UDim(1, 0)}
				size={new UDim2(1, 0, 1, 0)}
			>
				{nodes}
			</CanvasGroup>

			{snake && <MinimapCursor point={normalizeToWorldBounds(snake.head)} angle={snake.angle} />}
		</>
	);
}

================================================================================
// File: src/client/components/game/minimap/minimap-tracer.tsx
================================================================================
import React, { memo } from "@rbxts/react";
import { Image } from "client/components/ui/image";
import { images } from "shared/assets";
import { palette } from "shared/constants/palette";

import { useMinimapRem } from "./utils";

interface MinimapTracerProps {
	readonly from: Vector2;
	readonly to: Vector2;
	readonly isPlayer: boolean;
	readonly isFriend: boolean;
	readonly isLeader: boolean;
}

function MinimapTracerComponent({ from, to, isPlayer, isFriend, isLeader }: MinimapTracerProps) {
	const rem = useMinimapRem();
	const center = from.add(to).div(2);
	const length = from.sub(to).Magnitude;
	const color = isLeader
		? palette.yellow
		: isFriend
			? palette.sapphire
			: isPlayer
				? palette.lavender
				: palette.surface2;

	return (
		<Image
			image={images.ui.circle}
			imageColor={color}
			scaleType="Slice"
			sliceCenter={new Rect(128, 128, 128, 128)}
			anchorPoint={new Vector2(0.5, 0.5)}
			size={new UDim2(length, rem(0.2), 0, rem(0.2))}
			position={new UDim2(center.X, 0, center.Y, 0)}
			rotation={math.deg(math.atan2(to.Y - from.Y, to.X - from.X))}
		/>
	);
}

export const MinimapTracer = memo(MinimapTracerComponent);

================================================================================
// File: src/client/components/game/minimap/minimap.tsx
================================================================================
import React from "@rbxts/react";
import { Frame } from "client/components/ui/frame";
import { Group } from "client/components/ui/group";
import { Image } from "client/components/ui/image";
import { Shadow } from "client/components/ui/shadow";
import { useInputDevice } from "client/hooks";
import { RemProvider } from "client/providers/rem-provider";
import { images } from "shared/assets";
import { palette } from "shared/constants/palette";

import { MinimapNodes } from "./minimap-nodes";
import { MINIMUM_MINIMAP_REM, useMinimapRem } from "./utils";

export function Minimap() {
	const rem = useMinimapRem();
	const touch = useInputDevice() === "touch";

	const { anchorPoint, position } = touch
		? { anchorPoint: new Vector2(1, 0.5), position: new UDim2(1, -rem(3.5), 0.5, 0) }
		: { anchorPoint: new Vector2(1, 1), position: new UDim2(1, -rem(4), 1, -rem(4)) };

	return (
		<RemProvider minimumRem={MINIMUM_MINIMAP_REM}>
			<Group anchorPoint={anchorPoint} size={new UDim2(0, rem(10), 0, rem(10))} position={position}>
				<Shadow
					shadowColor={palette.black}
					shadowSize={rem(5)}
					shadowPosition={rem(1.5)}
					shadowTransparency={0}
				/>

				<Frame backgroundColor={palette.white} cornerRadius={new UDim(1, 0)} size={new UDim2(1, 0, 1, 0)}>
					<uigradient
						Color={new ColorSequence(palette.crust, palette.mantle)}
						Transparency={new NumberSequence(0.3, 0.1)}
						Rotation={-45}
					/>
					<uistroke Color={palette.lavender} Transparency={0.9} Thickness={rem(0.25)} />
				</Frame>

				<Frame
					backgroundTransparency={1}
					cornerRadius={new UDim(1, 0)}
					size={new UDim2(1, -2, 1, -2)}
					position={new UDim2(0, 1, 0, 1)}
				>
					<uistroke Color={palette.text} Transparency={0.85} Thickness={rem(0.05)} />
				</Frame>

				<Image
					image={images.ui.map_crosshair}
					anchorPoint={new Vector2(0.5, 0.5)}
					size={new UDim2(0, rem(1), 0, rem(1))}
					position={new UDim2(0.5, 0, 0.5, 0)}
				/>

				<MinimapNodes />
			</Group>
		</RemProvider>
	);
}

================================================================================
// File: src/client/components/game/minimap/utils.ts
================================================================================
import { map, useInterval } from "@rbxts/pretty-react-hooks";
import { useState } from "@rbxts/react";
import { Players } from "@rbxts/services";
import { useRem } from "client/hooks";
import { USER_ID, WORLD_BOUNDS } from "shared/constants/core";

export const MINIMUM_MINIMAP_REM = 10;

export function useMinimapRem() {
	return useRem({ minimum: MINIMUM_MINIMAP_REM });
}

export function useFriendsInServer() {
	const [friends, setFriends] = useState<string[]>([]);

	const updateFriendship = async (player: Player) => {
		if (!friends.includes(player.Name) && player.IsFriendsWith(USER_ID)) {
			setFriends((friends) => [...friends, player.Name]);
		}
	};

	const updateFriends = async () => {
		const processes = Players.GetPlayers().map(updateFriendship);
		return Promise.allSettled(processes);
	};

	useInterval(updateFriends, 10, { immediate: true });

	return friends;
}

export function isValidPlayer(name: string) {
	return Players.FindFirstChild(name)?.IsA("Player") || false;
}

export function normalizeToWorldBounds(vector: Vector2) {
	return new Vector2(
		map(vector.X, -WORLD_BOUNDS, WORLD_BOUNDS, 0, 1),
		map(vector.Y, -WORLD_BOUNDS, WORLD_BOUNDS, 0, 1),
	);
}

================================================================================
// File: src/client/components/menu/home/home-footer.tsx
================================================================================
import React from "@rbxts/react";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { useRem } from "client/hooks";
import { palette } from "shared/constants/palette";

export function HomeFooter() {
	const rem = useRem();

	return (
		<Text
			richText
			font={fonts.inter.medium}
			text={`Made with <font transparency="0">❤️</font> by <font transparency="0" color="#${palette.offwhite.ToHex()}">littensy</font>`}
			textColor={palette.text}
			textTransparency={0.5}
			textSize={rem(1.25)}
			textXAlignment="Center"
			textYAlignment="Bottom"
			position={new UDim2(0.5, 0, 1, -rem(3))}
		/>
	);
}

================================================================================
// File: src/client/components/menu/home/home-title.tsx
================================================================================
import { useTimer } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { Image } from "client/components/ui/image";
import { useRem } from "client/hooks";
import { images } from "shared/assets";

import { gradientPinched } from "./utils";

interface HomeTitleProps {
	readonly position: UDim2;
}

export function HomeTitle({ position }: HomeTitleProps) {
	const rem = useRem();
	const timer = useTimer();
	const rotation = timer.value.map((t) => (t * 45) % 360);

	return (
		<Image
			image={images.ui.menu_title}
			scaleType="Fit"
			anchorPoint={new Vector2(0.5, 0.5)}
			size={new UDim2(0, rem(30), 0, rem(20))}
			position={position}
		>
			<uiaspectratioconstraint AspectRatio={1014 / 544} />
			<uigradient Color={gradientPinched} Rotation={rotation} />
		</Image>
	);
}

================================================================================
// File: src/client/components/menu/home/home-version.tsx
================================================================================
import React from "@rbxts/react";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { useRem } from "client/hooks";
import { IS_PROD } from "shared/constants/core";
import { palette } from "shared/constants/palette";

interface HomeVersionProps {
	readonly position: UDim2;
}

const DIVIDER = `  <font transparency="0.75">—</font>  `;
const REPO = "littensy/slither";
const MODE = IS_PROD ? "production" : "development";

export function HomeVersion({ position }: HomeVersionProps) {
	const rem = useRem();

	return (
		<Text
			richText
			font={fonts.inter.medium}
			text={REPO + DIVIDER + MODE}
			textSize={rem(1.25)}
			textColor={palette.text}
			textTransparency={0.5}
			textXAlignment="Center"
			textYAlignment="Top"
			position={position}
		/>
	);
}

================================================================================
// File: src/client/components/menu/home/home.tsx
================================================================================
import React from "@rbxts/react";
import { Group } from "client/components/ui/group";
import { useRem } from "client/hooks";

import { HomeFooter } from "./home-footer";
import { HomeTitle } from "./home-title";
import { HomeVersion } from "./home-version";
import { MuteButton } from "./mute-button";
import { PlayButton } from "./play-button";
import { SpectateButton } from "./spectate-button";

export function Home() {
	const rem = useRem();

	return (
		<>
			<HomeTitle position={new UDim2(0.5, 0, 0.4, rem(-3))} />
			<HomeVersion position={new UDim2(0.5, 0, 0.5, rem(6.5))} />
			<HomeFooter />

			<PlayButton
				anchorPoint={new Vector2(0.5, 0.5)}
				size={new UDim2(0, rem(18), 0, rem(4.5))}
				position={new UDim2(0.5, 0, 0.5, rem(2))}
			/>

			<Group anchorPoint={new Vector2(1, 1)} size={new UDim2()} position={new UDim2(1, rem(-3), 1, rem(-3))}>
				<uilistlayout
					Padding={new UDim(0, rem(1))}
					VerticalAlignment="Bottom"
					HorizontalAlignment="Right"
					FillDirection="Horizontal"
				/>
				<SpectateButton />
				<MuteButton />
			</Group>
		</>
	);
}

================================================================================
// File: src/client/components/menu/home/index.ts
================================================================================
export * from "./home";

================================================================================
// File: src/client/components/menu/home/mute-button.tsx
================================================================================
import React from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { PrimaryButton } from "client/components/ui/primary-button";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { useRem, useStore } from "client/hooks";
import { selectMusicEnabled } from "client/store/menu";
import { palette } from "shared/constants/palette";

export function MuteButton() {
	const rem = useRem();
	const store = useStore();
	const musicEnabled = useSelector(selectMusicEnabled);

	return (
		<PrimaryButton
			onClick={() => store.setMenuMusic(!musicEnabled)}
			overlayGradient={new ColorSequence(musicEnabled ? palette.text : palette.maroon)}
			size={new UDim2(0, rem(4), 0, rem(4))}
		>
			<Text
				font={fonts.inter.medium}
				text={musicEnabled ? "🔊" : "🔇"}
				textSize={rem(2)}
				size={new UDim2(1, 0, 1, 0)}
			/>
		</PrimaryButton>
	);
}

================================================================================
// File: src/client/components/menu/home/play-button.tsx
================================================================================
import { lerpBinding, useTimer } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { Outline } from "client/components/ui/outline";
import { PrimaryButton } from "client/components/ui/primary-button";
import { Shadow } from "client/components/ui/shadow";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { useRem, useSpring } from "client/hooks";
import { palette } from "shared/constants/palette";
import { remotes } from "shared/remotes";

import { gradient } from "./utils";

interface PlayButtonProps {
	readonly anchorPoint: Vector2;
	readonly size: UDim2;
	readonly position: UDim2;
}

export function PlayButton({ anchorPoint, size, position }: PlayButtonProps) {
	const rem = useRem();
	const timer = useTimer();
	const [hover, hoverSpring] = useSpring(0);

	const gradientSpin = timer.value.map((t) => {
		return 30 * t;
	});

	const onClick = () => {
		remotes.snake.spawn.fire();
	};

	return (
		<PrimaryButton
			onClick={onClick}
			onHover={(hovered) => hoverSpring.setGoal(hovered ? 1 : 0)}
			overlayGradient={new ColorSequence(palette.mauve, palette.blue)}
			anchorPoint={anchorPoint}
			size={size}
			position={position}
		>
			<Shadow
				shadowColor={palette.white}
				shadowTransparency={lerpBinding(hover, 0.2, 0)}
				shadowSize={rem(1.5)}
				shadowPosition={rem(0.25)}
				zIndex={0}
			>
				<uigradient Color={gradient} Rotation={gradientSpin} />
			</Shadow>

			<Text
				font={fonts.inter.medium}
				text="Start Playing →"
				textColor={palette.mantle}
				textSize={rem(1.5)}
				size={new UDim2(1, 0, 1, 0)}
			/>

			<Outline cornerRadius={new UDim(0, rem(1))} innerTransparency={0} />
		</PrimaryButton>
	);
}

================================================================================
// File: src/client/components/menu/home/spectate-button.tsx
================================================================================
import { useThrottleCallback } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { PrimaryButton } from "client/components/ui/primary-button";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { useRem, useStore } from "client/hooks";
import { selectWorldSpectating } from "client/store/world";
import { palette } from "shared/constants/palette";
import { cycleNextSnake } from "shared/store/snakes";

export function SpectateButton() {
	const rem = useRem();
	const store = useStore();
	const spectating = useSelector(selectWorldSpectating);

	const onClick = useThrottleCallback(
		() => {
			store.setWorldSpectating(store.getState(cycleNextSnake(spectating)));
		},
		{ wait: 0.5, trailing: false },
	);

	return (
		<PrimaryButton
			onClick={onClick.run}
			overlayGradient={new ColorSequence(palette.text)}
			size={new UDim2(0, rem(4), 0, rem(4))}
		>
			<Text font={fonts.inter.medium} text="🎥" textSize={rem(2)} size={new UDim2(1, 0, 1, 0)} />
		</PrimaryButton>
	);
}

================================================================================
// File: src/client/components/menu/home/utils.ts
================================================================================
import { palette } from "shared/constants/palette";

const generate = (colors: Color3[]) => {
	const sequence: ColorSequenceKeypoint[] = [];
	const length = colors.size();

	colors.forEach((color, index) => {
		sequence.push(new ColorSequenceKeypoint(index / (length - 1), color));
	});

	return new ColorSequence(sequence);
};

export const gradient = generate([palette.red, palette.yellow, palette.teal, palette.blue, palette.mauve]);

export const gradientPinched = generate([
	palette.red,
	palette.red,
	palette.yellow,
	palette.teal,
	palette.blue,
	palette.mauve,
	palette.mauve,
]);

================================================================================
// File: src/client/components/menu/index.ts
================================================================================
export * from "./menu";

================================================================================
// File: src/client/components/menu/menu-container.tsx
================================================================================
import { lerpBinding } from "@rbxts/pretty-react-hooks";
import React, { useEffect, useMemo, useRef } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { DelayRender } from "client/components/ui/delay-render";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { MenuPage, selectCurrentPage, selectIsMenuOpen, selectMenuTransition } from "client/store/menu";

import { Transition } from "../ui/transition";

interface MenuContainerProps extends React.PropsWithChildren {
	readonly page?: MenuPage;
}

const TRANSITION_DEFAULT = new UDim2(0, 0, 0, -2);
const TRANSITION_LEFT = new UDim2(0, -2, 0, 0);
const TRANSITION_RIGHT = new UDim2(0, 2, 0, 0);

export function MenuContainer({ page, children }: MenuContainerProps) {
	const rem = useRem();

	const isOpen = useSelector(selectIsMenuOpen);
	const currentPage = useSelector(selectCurrentPage);
	const visible = isOpen && (currentPage === page || page === undefined);

	const menuTransition = useSelector(selectMenuTransition);
	const transitionFrom = useRef(rem(TRANSITION_DEFAULT));
	const [transition, transitionSpring] = useSpring(0);

	useEffect(() => {
		transitionSpring.setGoal(visible ? 1 : 0, springs.gentle);
	}, [visible]);

	// wrapped in useMemo instead of an effect so that it can update
	// the ref synchronously before its used in lerpBinding
	useMemo(() => {
		if (visible) {
			// ease in from menuTransition.direction
			transitionFrom.current = menuTransition.direction === "left" ? rem(TRANSITION_LEFT) : rem(TRANSITION_RIGHT);
		} else {
			// ease out to menuTransition.direction
			transitionFrom.current = menuTransition.direction === "left" ? rem(TRANSITION_RIGHT) : rem(TRANSITION_LEFT);
		}
	}, [currentPage]);

	useMemo(() => {
		if (!isOpen) {
			transitionFrom.current = rem(TRANSITION_DEFAULT);
		}
	}, [isOpen]);

	return (
		<DelayRender shouldRender={visible} unmountDelay={1}>
			<Transition
				groupTransparency={lerpBinding(transition, 1, 0)}
				size={new UDim2(1, 0, 1, 0)}
				position={lerpBinding(transition, transitionFrom.current, new UDim2())}
				clipsDescendants
			>
				{children}
			</Transition>
		</DelayRender>
	);
}

================================================================================
// File: src/client/components/menu/menu-vignette.tsx
================================================================================
import { lerpBinding } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { Image } from "client/components/ui/image";
import { springs } from "client/constants/springs";
import { useSpring } from "client/hooks";
import { selectIsMenuOpen } from "client/store/menu";
import { images } from "shared/assets";
import { palette } from "shared/constants/palette";

export function MenuVignette() {
	const open = useSelector(selectIsMenuOpen);
	const [transition, transitionSpring] = useSpring(0);

	useEffect(() => {
		if (open) {
			transitionSpring.setGoal(1, springs.molasses);
		} else {
			transitionSpring.setGoal(0, springs.molasses);
		}
	}, [open]);

	return (
		<Image
			image={images.ui.vignette}
			imageColor={palette.crust}
			imageTransparency={lerpBinding(transition, 1, 0)}
			backgroundColor={palette.crust}
			backgroundTransparency={lerpBinding(transition, 1, 0.8)}
			scaleType="Crop"
			size={new UDim2(1, 0, 1, 0)}
		/>
	);
}

================================================================================
// File: src/client/components/menu/menu.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { useStore } from "client/hooks";
import { selectHasLocalSnake } from "shared/store/snakes";

import { Home } from "./home";
import { MenuContainer } from "./menu-container";
import { MenuVignette } from "./menu-vignette";
import { Navigation } from "./navigation";
import { Skins } from "./skins";
import { Support } from "./support";

export function Menu() {
	const store = useStore();
	const spawned = useSelector(selectHasLocalSnake);

	useEffect(() => {
		store.setMenuOpen(!spawned);
	}, [spawned]);

	return (
		<>
			<MenuVignette />

			<MenuContainer>
				<Navigation />
			</MenuContainer>

			<MenuContainer page="home">
				<Home />
			</MenuContainer>

			<MenuContainer page="support">
				<Support />
			</MenuContainer>

			<MenuContainer page="skins">
				<Skins />
			</MenuContainer>
		</>
	);
}

================================================================================
// File: src/client/components/menu/navigation/destination.tsx
================================================================================
import { lerpBinding } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { useSelectorCreator } from "@rbxts/react-reflex";
import { Frame } from "client/components/ui/frame";
import { Group } from "client/components/ui/group";
import { Image } from "client/components/ui/image";
import { Outline } from "client/components/ui/outline";
import { ReactiveButton } from "client/components/ui/reactive-button";
import { Shadow } from "client/components/ui/shadow";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { springs } from "client/constants/springs";
import { useRem, useSpring, useStore } from "client/hooks";
import { MenuPage, selectIsPage } from "client/store/menu";
import { palette } from "shared/constants/palette";

interface DestinationProps {
	readonly page: MenuPage;
	readonly label: string;
	readonly icon: string;
	readonly iconAlt: string;
	readonly color: Color3;
	readonly order: number;
}

export function Destination({ page, label, icon, iconAlt, color, order }: DestinationProps) {
	const rem = useRem();
	const store = useStore();
	const isPage = useSelectorCreator(selectIsPage, page);
	const [transition, transitionSpring] = useSpring(0);

	useEffect(() => {
		transitionSpring.setGoal(isPage ? 1 : 0, springs.responsive);
	}, [isPage]);

	return (
		<ReactiveButton
			onClick={() => store.setMenuPage(page)}
			soundVariant="alt"
			backgroundTransparency={1}
			size={new UDim2(0, rem(7), 0, rem(5))}
			layoutOrder={order}
		>
			<Shadow
				shadowBlur={0.3}
				shadowPosition={rem(0.5)}
				shadowSize={rem(4)}
				shadowColor={color}
				shadowTransparency={lerpBinding(transition, 1, 0.7)}
			/>

			<Frame
				backgroundColor={color}
				backgroundTransparency={lerpBinding(transition, 1, 0.8)}
				cornerRadius={new UDim(0, rem(1))}
				size={new UDim2(1, 0, 1, 0)}
			/>

			<Outline
				outlineTransparency={lerpBinding(transition, 1, 0.5)}
				innerThickness={rem(4, "pixel")}
				outerThickness={rem(2, "pixel")}
				innerColor={color}
				cornerRadius={new UDim(0, rem(1))}
			/>

			<Image
				image={isPage ? icon : iconAlt}
				imageColor={lerpBinding(transition, palette.text, color)}
				imageTransparency={lerpBinding(transition, 0.7, 0)}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={new UDim2(0, rem(2.25), 0, rem(2.25))}
				position={lerpBinding(transition, new UDim2(0.5, 0, 0.5, 0), new UDim2(0.5, 0, 0.5, rem(-0.75)))}
			/>

			<Group clipsDescendants>
				<Text
					font={fonts.inter.bold}
					text={label}
					textColor={lerpBinding(transition, palette.text, color)}
					textSize={rem(1.2)}
					textTransparency={lerpBinding(transition, 1, 0.2)}
					position={lerpBinding(
						transition,
						new UDim2(0.5, 0, 0.5, rem(4)),
						new UDim2(0.5, 0, 0.5, rem(1.25)),
					)}
				/>
			</Group>
		</ReactiveButton>
	);
}

================================================================================
// File: src/client/components/menu/navigation/index.ts
================================================================================
export * from "./navigation";

================================================================================
// File: src/client/components/menu/navigation/indicator.tsx
================================================================================
import { useEventListener } from "@rbxts/pretty-react-hooks";
import React, { useBinding, useEffect, useMemo } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { RunService } from "@rbxts/services";
import { Frame } from "client/components/ui/frame";
import { Shadow } from "client/components/ui/shadow";
import { useRem, useSpring } from "client/hooks";
import { MenuPage, selectCurrentPage } from "client/store/menu";
import { map } from "shared/utils/math-utils";

interface IndicatorProps {
	readonly colors: readonly Color3[];
	readonly order: readonly MenuPage[];
}

export function Indicator({ colors, order }: IndicatorProps) {
	const rem = useRem();

	const page = useSelector(selectCurrentPage);
	const currentIndex = order.indexOf(page);
	const currentColor = colors[currentIndex];

	const [color, colorSpring] = useSpring(Color3.fromRGB(255, 255, 255));
	const [position, positionSpring] = useSpring(0);
	const [velocity, setVelocity] = useBinding(0);

	const style = useMemo(() => {
		return {
			position: position.map((x) => {
				return new UDim2(0.5, math.round(rem(x)), 0, 0);
			}),

			size: velocity.map((x) => {
				return new UDim2(0, math.round(rem(x * 0.05 + 4)), 0, rem(1));
			}),
		};
	}, [rem]);

	useEffect(() => {
		const x = map(currentIndex, 0, 2, -8, 8);
		positionSpring.setGoal(x, { tension: 240, friction: 25, mass: 1.5 });
	}, [page, rem]);

	useEffect(() => {
		colorSpring.setGoal(currentColor);
	}, [currentColor]);

	useEventListener(RunService.Heartbeat, () => {
		setVelocity(math.abs(positionSpring.getVelocity()));
	});

	return (
		<Frame
			backgroundColor={color}
			cornerRadius={new UDim(0.5, 0)}
			anchorPoint={new Vector2(0.5, 0.5)}
			size={style.size}
			position={style.position}
		>
			<Shadow shadowPosition={rem(0)} shadowSize={rem(0)} shadowColor={color} shadowTransparency={0.8} />
		</Frame>
	);
}

================================================================================
// File: src/client/components/menu/navigation/navigation.tsx
================================================================================
import React from "@rbxts/react";
import { Group } from "client/components/ui/group";
import { useRem } from "client/hooks";
import { images } from "shared/assets";
import { palette } from "shared/constants/palette";

import { Destination } from "./destination";
import { Indicator } from "./indicator";

export function Navigation() {
	const rem = useRem();

	let index = 0;

	return (
		<Group size={new UDim2(1, 0, 0, rem(7.5))}>
			<Indicator colors={[palette.red, palette.mauve, palette.blue]} order={["support", "home", "skins"]} />

			<Group size={new UDim2(1, 0, 0, rem(5))} position={new UDim2(0, 0, 0, rem(3))}>
				<uilistlayout
					SortOrder="LayoutOrder"
					FillDirection="Horizontal"
					VerticalAlignment="Center"
					HorizontalAlignment="Center"
					Padding={new UDim(0, rem(1))}
				/>

				<Destination
					page="support"
					label="Support"
					color={palette.red}
					icon={images.ui.nav_heart}
					iconAlt={images.ui.nav_heart_alt}
					order={index++}
				/>

				<Destination
					page="home"
					label="Home"
					color={palette.mauve}
					icon={images.ui.nav_home}
					iconAlt={images.ui.nav_home_alt}
					order={index++}
				/>

				<Destination
					page="skins"
					label="Skins"
					color={palette.blue}
					icon={images.ui.nav_skins}
					iconAlt={images.ui.nav_skins_alt}
					order={index++}
				/>
			</Group>
		</Group>
	);
}

================================================================================
// File: src/client/components/menu/skins/act-button.tsx
================================================================================
import { lerpBinding } from "@rbxts/pretty-react-hooks";
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React, { useEffect, useMemo } from "@rbxts/react";
import { useSelector, useSelectorCreator } from "@rbxts/react-reflex";
import { sendAlert } from "client/alerts";
import { PrimaryButton } from "client/components/ui/primary-button";
import { Shadow } from "client/components/ui/shadow";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { selectMenuCurrentSkin } from "client/store/menu";
import { formatInteger } from "client/utils/format-integer";
import { sounds } from "shared/assets";
import { USER_NAME } from "shared/constants/core";
import { palette } from "shared/constants/palette";
import { findSnakeSkin } from "shared/constants/skins";
import { remotes } from "shared/remotes";
import { RANDOM_SKIN, selectCurrentPlayerSkin, selectPlayerBalance, selectPlayerSkins } from "shared/store/saves";
import { darken } from "shared/utils/color-utils";

interface Status {
	readonly variant: "buy" | "not-enough-money" | "wear" | "wearing" | "none";
	readonly price?: number;
}

const darkGreen = darken(palette.green, 0.5, 0.5);
const darkRed = darken(palette.red, 0.25, 0.5);
const darkBlue = darken(palette.blue, 0.25, 0.5);
const darkPeach = darken(palette.peach, 0.25, 0.5);

function stylize(text: unknown, color: Color3) {
	if (text === `"${RANDOM_SKIN}"`) {
		text = '"random"';
	}

	return `<font color="#${color.ToHex()}">${text}</font>`;
}

function getStatus(equipped: string, current: string, inventory: readonly string[] = [], balance = 0): Status {
	const equippedSkin = findSnakeSkin(equipped);
	const currentSkin = findSnakeSkin(current);
	const ownsCurrentSkin = inventory.includes(current);

	if (equippedSkin === currentSkin) {
		return { variant: "wearing" };
	} else if (!ownsCurrentSkin && currentSkin) {
		return {
			variant: balance >= currentSkin.price ? "buy" : "not-enough-money",
			price: currentSkin.price,
		};
	} else if (ownsCurrentSkin) {
		return { variant: "wear" };
	} else {
		return { variant: "none" };
	}
}

export function ActButton() {
	const rem = useRem();
	const equippedSkin = useSelectorCreator(selectCurrentPlayerSkin, USER_NAME) ?? RANDOM_SKIN;
	const currentSkin = useSelector(selectMenuCurrentSkin);
	const inventory = useSelectorCreator(selectPlayerSkins, USER_NAME);
	const balance = useSelectorCreator(selectPlayerBalance, USER_NAME);
	const status = getStatus(equippedSkin, currentSkin, inventory, balance);

	const [primary, primarySpring] = useSpring(new Color3());
	const [secondary, secondarySpring] = useSpring(new Color3());
	const [textWidth, textWidthSpring] = useSpring(0);
	const [gradientSpin, gradientSpinSpring] = useSpring(0);
	const [hover, hoverSpring] = useSpring(0);

	const { size, gradient } = useMemo(() => {
		const size = textWidth.map((width) => {
			return new UDim2(0, width + rem(3), 0, rem(4.5));
		});

		const gradient = composeBindings(primary, secondary, (primary, secondary) => {
			return new ColorSequence(primary, secondary);
		});

		return { size, gradient };
	}, [rem]);

	const onClick = () => {
		gradientSpinSpring.setGoal(gradientSpin.getValue() + 180, springs.molasses);

		if (status.variant === "buy") {
			remotes.save.buySkin.fire(currentSkin);
		} else if (status.variant === "wear") {
			remotes.save.setSkin.fire(currentSkin);
		} else if (status.variant === "not-enough-money") {
			sendAlert({
				emoji: "🚨",
				color: palette.red,
				message: `Sorry, you cannot afford the ${stylize(currentSkin, palette.white)} skin yet.`,
				sound: sounds.alert_bad,
			});
		}
	};

	useEffect(() => {
		switch (status.variant) {
			case "wearing":
				primarySpring.setGoal(palette.red);
				secondarySpring.setGoal(palette.peach);
				break;

			case "wear":
				primarySpring.setGoal(palette.blue);
				secondarySpring.setGoal(palette.mauve);
				break;

			case "buy":
				primarySpring.setGoal(palette.teal);
				secondarySpring.setGoal(palette.green);
				break;

			case "not-enough-money":
			case "none":
				primarySpring.setGoal(palette.red);
				secondarySpring.setGoal(palette.red);
				break;
		}
	}, [status.variant]);

	const text = useMemo(() => {
		switch (status.variant) {
			case "buy":
				return `💵  Buy ${stylize(`"${currentSkin}"`, darkGreen)} for ${stylize(
					"$" + formatInteger(status.price),
					darkGreen,
				)}`;

			case "wear":
				return `🎨  Wear ${stylize(`"${currentSkin}"`, darkBlue)}`;

			case "wearing":
				return `🎨  Wearing ${stylize(`"${currentSkin}"`, darkPeach)}`;

			case "not-enough-money":
				return `🔒  ${stylize(`"${currentSkin}"`, darkRed)} costs ${stylize(
					"$" + formatInteger(status.price),
					darkRed,
				)}`;

			default:
				return "🔒  Locked";
		}
	}, [status, currentSkin]);

	return (
		<PrimaryButton
			onClick={onClick}
			onHover={(hovered) => hoverSpring.setGoal(hovered ? 1 : 0)}
			overlayGradient={gradient}
			overlayRotation={gradientSpin}
			anchorPoint={new Vector2(0.5, 1)}
			size={size}
			position={new UDim2(0.5, 0, 1, -rem(19))}
		>
			<Shadow
				shadowColor={palette.white}
				shadowTransparency={lerpBinding(hover, 0.5, 0.2)}
				shadowSize={rem(1)}
				shadowPosition={rem(-0.25)}
				zIndex={0}
			>
				<uigradient Color={gradient} Rotation={gradientSpin} />
			</Shadow>

			<Text
				change={{
					TextBounds: (rbx) => {
						textWidthSpring.setGoal(rbx.TextBounds.X);
					},
				}}
				richText
				font={fonts.inter.medium}
				text={text}
				textColor={palette.base}
				textSize={rem(1.5)}
				size={new UDim2(1, 0, 1, 0)}
				clipsDescendants
			/>
		</PrimaryButton>
	);
}

================================================================================
// File: src/client/components/menu/skins/index.ts
================================================================================
export * from "./skins";

================================================================================
// File: src/client/components/menu/skins/skin-card.tsx
================================================================================
import { blend } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { Image } from "client/components/ui/image";
import { ReactiveButton } from "client/components/ui/reactive-button";
import { Shadow } from "client/components/ui/shadow";
import { useRem, useSpring } from "client/hooks";
import { images, playSound, sounds } from "shared/assets";

import { SkinIndicator } from "./skin-indicator";
import { SkinThumbnail } from "./skin-thumbnail";
import { DIRECTIONS_TO_HIDE, usePalette } from "./utils";

interface SkinCardProps {
	readonly id: string;
	readonly index: number;
	readonly active: boolean;
	readonly shuffle?: readonly string[];
	readonly onClick: () => void;
}

const SIZE = 12;
const SIZE_INACTIVE = 9.5;
const PADDING = 1.5;

function getPosition(rem: number, index: number) {
	const offset = math.sign(index) * (SIZE - SIZE_INACTIVE) * 0.5;
	const position = index * (SIZE + PADDING);

	return new UDim2(0.5, (position + offset) * rem, 1, 0);
}

function getSize(rem: number, active: boolean) {
	const sizeActive = new UDim2(0, SIZE * rem, 0, SIZE * rem);
	const sizeInactive = new UDim2(0, SIZE_INACTIVE * rem, 0, SIZE_INACTIVE * rem);

	return active ? sizeActive : sizeInactive;
}

export function SkinCard({ id, index, active, shuffle, onClick }: SkinCardProps) {
	const hidden = DIRECTIONS_TO_HIDE.includes(index);

	const rem = useRem();
	const palette = usePalette(id, shuffle);
	const [position, positionSpring] = useSpring(getPosition(rem(1), math.sign(index) * 3));
	const [size, sizeSpring] = useSpring(getSize(rem(1), false));
	const [transparency, transparencySpring] = useSpring(1);

	useEffect(() => {
		positionSpring.setGoal(getPosition(rem(1), index), {
			tension: 250,
			friction: 22,
			mass: 1 + math.abs(index / 2),
		});
		sizeSpring.setGoal(getSize(rem(1), index === 0));
		transparencySpring.setGoal(hidden ? 1 : 0);
	}, [rem, index]);

	return (
		<ReactiveButton
			onClick={() => {
				if (!hidden) {
					onClick();
					playSound(sounds.navigate);
				}
			}}
			animateSizeStrength={2}
			animatePositionStrength={1.5}
			soundVariant="none"
			backgroundTransparency={1}
			anchorPoint={new Vector2(0.5, 1)}
			size={size}
			position={position}
			zIndex={-math.abs(index)}
		>
			<Shadow
				shadowColor={palette.secondary}
				shadowBlur={0.6}
				shadowSize={rem(7)}
				shadowPosition={rem(1)}
				shadowTransparency={transparency}
			/>

			<Image
				backgroundColor={palette.primary}
				backgroundTransparency={transparency}
				image={images.ui.skin_card_gradient}
				imageColor={palette.secondary}
				imageTransparency={transparency}
				cornerRadius={new UDim(0, rem(2.5))}
				size={new UDim2(1, 0, 1, 0)}
			>
				<uistroke
					Color={palette.primary}
					Thickness={rem(0.5)}
					Transparency={transparency.map((t) => blend(t, 0.8))}
				/>
			</Image>

			<SkinThumbnail active={active} skin={palette.skin} transparency={transparency} />

			<SkinIndicator id={id} primary={palette.primary} transparency={transparency} />
		</ReactiveButton>
	);
}

================================================================================
// File: src/client/components/menu/skins/skin-carousel.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";
import { useSelector, useSelectorCreator } from "@rbxts/react-reflex";
import { Group } from "client/components/ui/group";
import { useRem, useStore } from "client/hooks";
import { selectMenuCurrentSkin } from "client/store/menu";
import { USER_NAME } from "shared/constants/core";
import { snakeSkins } from "shared/constants/skins";
import { RANDOM_SKIN, selectCurrentPlayerSkin, selectPlayerSkins } from "shared/store/saves";

import { SkinCard } from "./skin-card";
import { DIRECTIONS } from "./utils";

const SKIN_LIST = [RANDOM_SKIN, ...snakeSkins.map((skin) => skin.id)];
const SKIN_LENGTH = SKIN_LIST.size();

export function SkinCarousel() {
	const rem = useRem();
	const store = useStore();

	const skinInventory = useSelectorCreator(selectPlayerSkins, USER_NAME) || [];
	const equippedSkin = useSelectorCreator(selectCurrentPlayerSkin, USER_NAME) ?? RANDOM_SKIN;
	const currentSkin = useSelector(selectMenuCurrentSkin);

	const currentIndex = SKIN_LIST.indexOf(currentSkin);

	useEffect(() => {
		if (currentSkin === RANDOM_SKIN) {
			store.setMenuSkin(equippedSkin);
		}
	}, []);

	return (
		<Group size={new UDim2(1, 0, 1, -rem(3))}>
			{DIRECTIONS.map((direction) => {
				const index = (currentIndex + direction) % SKIN_LENGTH;
				const skin = SKIN_LIST[index] ?? RANDOM_SKIN;

				return (
					<SkinCard
						key={skin}
						id={skin}
						index={direction}
						active={skin === currentSkin}
						shuffle={skin === RANDOM_SKIN ? skinInventory : undefined}
						onClick={() => {
							store.setMenuSkin(skin);
						}}
					/>
				);
			})}
		</Group>
	);
}

================================================================================
// File: src/client/components/menu/skins/skin-indicator.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";
import { useSelectorCreator } from "@rbxts/react-reflex";
import { Image } from "client/components/ui/image";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { images } from "shared/assets";
import { USER_NAME } from "shared/constants/core";
import { palette } from "shared/constants/palette";
import { selectPlayerEquippedSkin, selectPlayerOwnsSkin } from "shared/store/saves";
import { brighten } from "shared/utils/color-utils";

interface SkinIndicatorProps {
	readonly id: string;
	readonly primary: Color3;
	readonly transparency: React.Binding<number>;
}

export function SkinIndicator({ id, primary, transparency }: SkinIndicatorProps) {
	const color = brighten(primary, 0.6);

	const rem = useRem();
	const owned = useSelectorCreator(selectPlayerOwnsSkin, USER_NAME, id);
	const equipped = useSelectorCreator(selectPlayerEquippedSkin, USER_NAME, id);

	const [indicator, indicatorSpring] = useSpring(new UDim2());

	useEffect(() => {
		const padding = rem(12, "pixel") + 4; // 6px - 2px

		indicatorSpring.setGoal(
			equipped ? new UDim2(0, rem(2) - padding, 0, rem(2) - padding) : new UDim2(),
			springs.gentle,
		);
	}, [equipped, rem]);

	return (
		<Image
			image={owned ? images.ui.skin_indicator : images.ui.skin_indicator_locked}
			imageColor={color}
			imageTransparency={transparency}
			anchorPoint={new Vector2(1, 0)}
			size={new UDim2(0, rem(2), 0, rem(2))}
			position={new UDim2(1, -rem(1), 0, rem(1))}
		>
			<Image
				image={images.ui.circle}
				imageColor={palette.offwhite}
				imageTransparency={transparency}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={indicator}
				position={new UDim2(0.5, 0, 0.5, 0)}
			/>
		</Image>
	);
}

================================================================================
// File: src/client/components/menu/skins/skin-thumbnail.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";
import { CanvasGroup } from "client/components/ui/canvas-group";
import { Image } from "client/components/ui/image";
import { useRem, useSpring } from "client/hooks";
import { SnakeSkin } from "shared/constants/skins";
import { fillArray } from "shared/utils/object-utils";

import { SNAKE_ANGLE_OFFSET } from "../../world/snakes";

interface SkinThumbnailProps {
	readonly skin: SnakeSkin;
	readonly active: boolean;
	readonly transparency: React.Binding<number>;
}

const TRACER_SIZE = 7;
const TRACER_POINTS = 5;
const TRACER_SQUISH = 0.4;

const TRACERS = fillArray(TRACER_POINTS, (index) => {
	const from = new Vector2(
		0.5 - (index + 1) / (TRACER_POINTS / TRACER_SQUISH),
		0.5 + (index + 1) / (TRACER_POINTS / TRACER_SQUISH),
	);

	const to = new Vector2(
		0.5 - index / (TRACER_POINTS / TRACER_SQUISH),
		0.5 + index / (TRACER_POINTS / TRACER_SQUISH),
	);

	const size = new Vector2(0, from.sub(to).Magnitude);
	const position = from.add(to).div(2);
	const rotation = math.deg(math.atan2(to.Y - from.Y, to.X - from.X) + SNAKE_ANGLE_OFFSET);

	return { size, position, rotation };
});

export function SkinThumbnail({ skin, active, transparency }: SkinThumbnailProps) {
	const rem = useRem();
	const [offset, offsetSpring] = useSpring(new UDim());

	useEffect(() => {
		offsetSpring.setGoal(active ? new UDim(0, rem(-0.5)) : new UDim(0, rem(2)));
	}, [active, rem]);

	return (
		<CanvasGroup
			backgroundTransparency={1}
			cornerRadius={new UDim(0, rem(2.5))}
			groupTransparency={transparency}
			size={new UDim2(1, 0, 1, 0)}
		>
			<uipadding PaddingTop={offset} PaddingRight={offset} />

			<Image
				image={skin.headTexture ?? skin.texture[0]}
				imageColor={skin.tint[0]}
				scaleType="Slice"
				sliceCenter={new Rect(skin.size.div(2), skin.size.div(2))}
				sliceScale={4}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={new UDim2(0, rem(TRACER_SIZE), 0, rem(TRACER_SIZE))}
				position={new UDim2(0.5, 0, 0.5, 0)}
				rotation={45}
			>
				<Image
					image={skin.eyeTextureRight}
					size={new UDim2(0.45, 0, 0.45, 0)}
					position={new UDim2(0.5, 0, 0.1, 0)}
				/>

				<Image
					image={skin.eyeTextureLeft}
					anchorPoint={new Vector2(1, 0)}
					size={new UDim2(0.45, 0, 0.45, 0)}
					position={new UDim2(0.5, 0, 0.1, 0)}
				/>
			</Image>

			{TRACERS.map(({ size, position, rotation }, index) => (
				<Image
					key={`tracer-${index}`}
					image={skin.texture[(index + 1) % skin.texture.size()]}
					imageColor={skin.tint[(index + 1) % skin.tint.size()]}
					scaleType="Slice"
					sliceCenter={new Rect(skin.size.div(2), skin.size.div(2))}
					sliceScale={4}
					anchorPoint={new Vector2(0.5, 0.5)}
					size={new UDim2(size.X, rem(TRACER_SIZE), size.Y, rem(TRACER_SIZE))}
					position={new UDim2(position.X, 0, position.Y, 0)}
					rotation={rotation}
					zIndex={-index - 1}
				/>
			))}
		</CanvasGroup>
	);
}

================================================================================
// File: src/client/components/menu/skins/skins.tsx
================================================================================
import React from "@rbxts/react";

import { ActButton } from "./act-button";
import { SkinCarousel } from "./skin-carousel";

export function Skins() {
	return (
		<>
			<ActButton />
			<SkinCarousel />
		</>
	);
}

================================================================================
// File: src/client/components/menu/skins/utils.ts
================================================================================
import { useInterval } from "@rbxts/pretty-react-hooks";
import { useState } from "@rbxts/react";
import { getSnakeSkin, SnakeSkin } from "shared/constants/skins";
import { darken } from "shared/utils/color-utils";

export interface SnakePalette {
	readonly skin: SnakeSkin;
	readonly primary: Color3;
	readonly secondary: Color3;
}

export const DIRECTIONS = [-3, -2, -1, 0, 1, 2, 3];
export const DIRECTIONS_TO_HIDE = [-3, 3];

export function usePalette(id: string, shuffle?: readonly string[]): SnakePalette {
	const [skin, setSkin] = useState(getSnakeSkin(id));

	useInterval(() => {
		if (shuffle && !shuffle.isEmpty()) {
			const skinId = shuffle[math.random(0, shuffle.size() - 1)];
			setSkin(getSnakeSkin(skinId));
		}
	}, 1);

	return {
		skin,
		primary: skin.primary || darken(skin.tint[0], 0.5, 0.4),
		secondary: skin.secondary || darken(skin.tint[0], 0.7, 0.4),
	};
}

================================================================================
// File: src/client/components/menu/support/index.ts
================================================================================
export * from "./support";

================================================================================
// File: src/client/components/menu/support/support-footer.tsx
================================================================================
import React from "@rbxts/react";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { useRem } from "client/hooks";
import { palette } from "shared/constants/palette";

const colorize = (text: string, color: Color3) => {
	return `<font transparency="0" color="#${color.ToHex()}">${text}</font>`;
};

export function SupportFooter() {
	const rem = useRem();

	return (
		<Text
			richText
			font={fonts.inter.medium}
			text={[
				"Your support helps us build",
				[
					colorize("m", palette.red),
					colorize("a", palette.peach),
					colorize("g", palette.yellow),
					colorize("i", palette.green),
					colorize("c", palette.sapphire),
					colorize("a", palette.blue),
					colorize("l", palette.mauve),
				].join(""),
				'experiences <font transparency="0">✨</font>',
			].join(" ")}
			textColor={palette.text}
			textTransparency={0.5}
			textSize={rem(1.25)}
			textXAlignment="Center"
			textYAlignment="Bottom"
			position={new UDim2(0.5, 0, 1, -rem(3))}
		/>
	);
}

================================================================================
// File: src/client/components/menu/support/support-heart.tsx
================================================================================
import { lerpBinding, useInterval } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { setTimeout } from "@rbxts/set-timeout";
import { Image } from "client/components/ui/image";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { images } from "shared/assets";

export function SupportHeart() {
	const rem = useRem();
	const [transition, transitionSpring] = useSpring(0);
	const [pulse, pulseSpring] = useSpring(0);

	const impulse = () => {
		transitionSpring.impulse(-20);

		setTimeout(() => {
			transitionSpring.impulse(50);
			pulseSpring.setPosition(0);
			pulseSpring.setGoal(1, springs.molasses);
		}, 0.3);
	};

	useInterval(() => {
		impulse();
	}, 1.5);

	useEffect(() => {
		// set initial goal for impulse
		transitionSpring.setGoal(0, springs.gentle);
	}, []);

	return (
		<>
			<Image
				image={images.ui.heart_glow}
				imageTransparency={lerpBinding(transition, 0.5, 0)}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={new UDim2(0, rem(16), 0, rem(16))}
				position={new UDim2(0.5, 0, 0.5, 0)}
			/>

			<Image
				image={images.ui.heart_glow}
				imageTransparency={lerpBinding(pulse, 0, 1)}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={lerpBinding(pulse, new UDim2(0, rem(6), 0, rem(6)), new UDim2(0, rem(28), 0, rem(28)))}
				position={new UDim2(0.5, 0, 0.5, 0)}
			/>

			<Image
				image={images.ui.heart}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={lerpBinding(transition, new UDim2(0, rem(16), 0, rem(16)), new UDim2(0, rem(18), 0, rem(18)))}
				position={new UDim2(0.5, 0, 0.5, 0)}
			/>
		</>
	);
}

================================================================================
// File: src/client/components/menu/support/support-premium.tsx
================================================================================
import React from "@rbxts/react";
import { MarketplaceService, Players } from "@rbxts/services";
import { sendAlert } from "client/alerts";
import { PrimaryButton } from "client/components/ui/primary-button";
import { Text } from "client/components/ui/text";
import { useRem } from "client/hooks";
import { palette } from "shared/constants/palette";

export function SupportPremium() {
	const rem = useRem();
	const promptPremiumPurchase = async () => {
		if (Players.LocalPlayer.MembershipType === Enum.MembershipType.Premium) {
			sendAlert({
				emoji: "💎",
				message:
					"You get <font color='#fff'>20% more money</font> because of <font color='#fff'>Premium benefits</font>!",
				color: palette.sapphire,
				colorSecondary: palette.blue,
			});
		} else {
			MarketplaceService.PromptPremiumPurchase(Players.LocalPlayer);
		}
	};

	return (
		<PrimaryButton
			onClick={promptPremiumPurchase}
			anchorPoint={new Vector2(1, 1)}
			position={new UDim2(1, rem(-3), 1, rem(-3))}
			size={new UDim2(0, rem(4), 0, rem(4))}
			overlayGradient={new ColorSequence(palette.red, palette.blue)}
		>
			<Text
				position={new UDim2(0.5, 0, 0.5, 0)}
				textSize={rem(2)}
				textColor={palette.black}
				text={`${RobloxEmoji.Premium} `}
			/>
		</PrimaryButton>
	);
}

================================================================================
// File: src/client/components/menu/support/support-product.tsx
================================================================================
import { blend, lerpBinding, useTimeout } from "@rbxts/pretty-react-hooks";
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React, { useMemo } from "@rbxts/react";
import { MarketplaceService, Players } from "@rbxts/services";
import { Frame } from "client/components/ui/frame";
import { Group } from "client/components/ui/group";
import { Outline } from "client/components/ui/outline";
import { PrimaryButton } from "client/components/ui/primary-button";
import { ReactiveButton } from "client/components/ui/reactive-button";
import { Shadow } from "client/components/ui/shadow";
import { Text } from "client/components/ui/text";
import { Transition } from "client/components/ui/transition";
import { fonts } from "client/constants/fonts";
import { useProductPrice, useRem, useSpring } from "client/hooks";
import { palette } from "shared/constants/palette";
import { brighten } from "shared/utils/color-utils";

interface SupportProductProps extends React.PropsWithChildren {
	readonly index: number;
	readonly productId: number;
	readonly productTitle: string;
	readonly productSubtitle: string;
	readonly productDiscount?: string;
	readonly primaryColor: Color3;
	readonly secondaryColor: Color3;
	readonly size: UDim2;
	readonly position: UDim2;
}

export function SupportProduct({
	index,
	productId,
	productTitle,
	productSubtitle,
	productDiscount,
	primaryColor,
	secondaryColor,
	size,
	position,
	children,
}: SupportProductProps) {
	const rem = useRem();
	const price = useProductPrice(productId);

	const initialRotation = useMemo(() => {
		return math.random(15, 30) * (math.random() > 0.5 ? 1 : -1);
	}, []);

	const [hover, hoverSpring] = useSpring(0);
	const [transition, transitionSpring] = useSpring(0);
	const [visible, visibleSpring] = useSpring(0);
	const [glow, glowSpring] = useSpring(0);

	const promptPurchase = async () => {
		MarketplaceService.PromptProductPurchase(Players.LocalPlayer, productId);
	};

	const gradient = new ColorSequence(primaryColor, secondaryColor);

	useTimeout(() => {
		transitionSpring.setGoal(1, {
			tension: 180,
			friction: 20,
			mass: 2 + 0.3 * index,
			precision: 0.0001,
		});

		visibleSpring.setGoal(1, {
			tension: 150,
			friction: 30,
		});
	}, 0.07 * index);

	useTimeout(
		() => {
			glowSpring.setGoal(1, {
				tension: 50,
				friction: 20,
			});
		},
		1.5 + 0.07 * index,
	);

	return (
		<Transition
			groupTransparency={lerpBinding(visible, 1, 0)}
			rotation={lerpBinding(visible, initialRotation, 0)}
			size={size}
			position={lerpBinding(transition, position.add(new UDim2(0, 0, 0, rem(6))), position)}
		>
			<ReactiveButton
				onClick={promptPurchase}
				onHover={(hovered) => hoverSpring.setGoal(hovered ? 1 : 0)}
				backgroundTransparency={1}
				size={new UDim2(1, 0, 1, 0)}
			>
				<Shadow
					shadowColor={palette.white}
					shadowTransparency={composeBindings(lerpBinding(hover, 0.2, 0), lerpBinding(glow, 1, 0), blend)}
					shadowSize={rem(12)}
				>
					<uigradient Color={gradient} Rotation={95} />
				</Shadow>

				<Shadow
					shadowSize={rem(2.5)}
					shadowBlur={0.3}
					shadowTransparency={lerpBinding(hover, 0.7, 0.25)}
					shadowPosition={rem(0.5)}
				/>

				<Frame backgroundColor={palette.white} cornerRadius={new UDim(0, rem(2))} size={new UDim2(1, 0, 1, 0)}>
					<uigradient Color={gradient} Rotation={95} />

					<Frame
						backgroundColor={brighten(primaryColor, 2)}
						backgroundTransparency={lerpBinding(hover, 1, 0)}
						cornerRadius={new UDim(0, rem(2))}
						size={new UDim2(1, 0, 1, 0)}
					>
						<uigradient Transparency={new NumberSequence(0, 1)} Rotation={95} />
					</Frame>

					<Frame
						backgroundColor={brighten(secondaryColor, 2)}
						backgroundTransparency={lerpBinding(hover, 1, 0)}
						cornerRadius={new UDim(0, rem(2))}
						size={new UDim2(1, 0, 1, 0)}
					>
						<uigradient Transparency={new NumberSequence(1, 0)} Rotation={95} />
					</Frame>

					<Outline cornerRadius={new UDim(0, rem(2))} />
				</Frame>

				<Group
					anchorPoint={new Vector2(0.5, 0)}
					size={new UDim2(0, rem(10), 0, rem(7))}
					position={new UDim2(0.5, 0, 0, rem(2))}
				>
					<Text
						font={fonts.inter.bold}
						text={productTitle}
						textSize={rem(4.5)}
						textColor={palette.base}
						size={new UDim2(1, 0, 1, 0)}
					/>

					<Text
						font={fonts.inter.bold}
						text={productSubtitle}
						textSize={rem(1.25)}
						textColor={palette.base}
						textYAlignment="Bottom"
						size={new UDim2(1, 0, 1, 0)}
					/>

					{productDiscount !== undefined && (
						<Text
							richText
							font={fonts.inter.bold}
							text={productDiscount}
							textSize={rem(1.25)}
							textColor={palette.base}
							textYAlignment="Top"
							size={new UDim2(1, 0, 1, 0)}
						/>
					)}
				</Group>

				<PrimaryButton
					onClick={promptPurchase}
					overlayGradient={gradient}
					anchorPoint={new Vector2(0.5, 1)}
					size={new UDim2(1, rem(-4), 0, rem(4.25))}
					position={new UDim2(0.5, 0, 1, rem(-2.25))}
				>
					<Text
						font={fonts.inter.medium}
						text={`${RobloxEmoji.Robux}${price}`}
						textSize={rem(1.5)}
						textColor={palette.base}
						position={new UDim2(0.5, 0, 0.5, 0)}
					/>
				</PrimaryButton>

				{children}
			</ReactiveButton>
		</Transition>
	);
}

================================================================================
// File: src/client/components/menu/support/support-products.tsx
================================================================================
import { useViewport } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { Group } from "client/components/ui/group";
import { useOrientation, usePremium, useRem } from "client/hooks";
import { formatInteger } from "client/utils/format-integer";
import { DevProduct } from "shared/assets";
import { PREMIUM_BENEFIT } from "shared/constants/core";
import { palette } from "shared/constants/palette";

import { SupportHeart } from "./support-heart";
import { SupportProduct } from "./support-product";

export function SupportProducts() {
	const rem = useRem();
	const padding = rem(1.5);

	const viewport = useViewport();
	const orientation = useOrientation();
	const premium = usePremium();

	const getProductTitle = (money: number) => {
		if (premium) {
			money = math.floor(money * PREMIUM_BENEFIT);
		}

		return `$${formatInteger(money)}`;
	};

	const getProductDiscount = (money: number, discount?: string) => {
		return premium ? `<s>$${formatInteger(money)}</s> ${RobloxEmoji.Premium} BONUS!` : discount;
	};

	let index = 0;

	return (
		<scrollingframe
			CanvasSize={new UDim2(0, rem(70), 0, 0)}
			BackgroundTransparency={1}
			BorderSizePixel={0}
			ClipsDescendants={false}
			AnchorPoint={new Vector2(0.5, 0.5)}
			Size={new UDim2(0, rem(70), 0, rem(36))}
			Position={new UDim2(0.5, 0, 0.5, 16)}
		>
			<uisizeconstraint MaxSize={viewport.map((v) => new Vector2(v.X, math.huge))} />

			{orientation === "portrait" && (
				<uipadding
					PaddingLeft={new UDim(0, padding)}
					PaddingRight={new UDim(0, padding)}
					PaddingTop={new UDim(0, -2 * padding)}
					PaddingBottom={new UDim(0, 2 * padding)}
				/>
			)}

			<Group size={new UDim2(0.6, -padding / 2, 1, 0)}>
				<SupportProduct
					index={index++}
					productId={DevProduct.MONEY_100}
					productTitle={getProductTitle(100)}
					productSubtitle="🍑  PEACH"
					productDiscount={getProductDiscount(100)}
					primaryColor={palette.yellow}
					secondaryColor={palette.peach}
					size={new UDim2(0.5, -padding / 2, 0.5, -padding / 2)}
					position={new UDim2(0, 0, 0, 0)}
				/>
				<SupportProduct
					index={index++}
					productId={DevProduct.MONEY_250}
					productTitle={getProductTitle(250)}
					productSubtitle="🍒  MAROON"
					productDiscount={getProductDiscount(250, "20% OFF")}
					primaryColor={palette.maroon}
					secondaryColor={palette.red}
					size={new UDim2(0.5, -padding / 2, 0.5, -padding / 2)}
					position={new UDim2(0, 0, 0.5, padding / 2)}
				/>
				<SupportProduct
					index={index++}
					productId={DevProduct.MONEY_500}
					productTitle={getProductTitle(500)}
					productSubtitle="🍐  GREEN"
					productDiscount={getProductDiscount(500, "20% OFF")}
					primaryColor={palette.teal}
					secondaryColor={palette.green}
					size={new UDim2(0.5, -padding / 2, 0.5, -padding / 2)}
					position={new UDim2(0.5, padding / 2, 0, 0)}
				/>
				<SupportProduct
					index={index++}
					productId={DevProduct.MONEY_1000}
					productTitle={getProductTitle(1000)}
					productSubtitle="💎  SAPPHIRE"
					productDiscount={getProductDiscount(1000, "20% OFF")}
					primaryColor={palette.sapphire}
					secondaryColor={palette.blue}
					size={new UDim2(0.5, -padding / 2, 0.5, -padding / 2)}
					position={new UDim2(0.5, padding / 2, 0.5, padding / 2)}
				/>
			</Group>

			<SupportProduct
				index={index++}
				productId={DevProduct.MONEY_5000}
				productTitle={getProductTitle(5000)}
				productSubtitle="💜  MAUVE"
				productDiscount={getProductDiscount(5000, "25% OFF")}
				primaryColor={palette.mauve}
				secondaryColor={palette.blue}
				size={new UDim2(0.4, -padding / 2, 1, 0)}
				position={new UDim2(0.6, padding / 2, 0, 0)}
			>
				<SupportHeart />
			</SupportProduct>
		</scrollingframe>
	);
}

================================================================================
// File: src/client/components/menu/support/support.tsx
================================================================================
import React from "@rbxts/react";
import { RemProvider } from "client/providers/rem-provider";

import { SupportFooter } from "./support-footer";
import { SupportPremium } from "./support-premium";
import { SupportProducts } from "./support-products";

export function Support() {
	return (
		<>
			<RemProvider minimumRem={0}>
				<SupportProducts />
			</RemProvider>

			<SupportFooter />
			<SupportPremium />
		</>
	);
}

================================================================================
// File: src/client/components/music/index.ts
================================================================================
export * from "./music";

================================================================================
// File: src/client/components/music/music.tsx
================================================================================
import { useEventListener } from "@rbxts/pretty-react-hooks";
import React, { useEffect, useState } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { selectMusicEnabled } from "client/store/menu";
import { createSound } from "shared/assets";
import { shuffle } from "shared/utils/object-utils";

const MUSIC = [
	"rbxassetid://9046863253", // Poolside
	"rbxassetid://9046863960", // Beachwave
	"rbxassetid://9039767824", // Confession
	"rbxassetid://9039769202", // Santa Ervilio
	"rbxassetid://9039768724", // Friends
	"rbxassetid://9047050075", // Lo Fi Dreams Hip Hop
	"rbxassetid://9039771403", // Opportunity
	"rbxassetid://9039770227", // It s For Me
	"rbxassetid://9047105000", // I'll Show Ya
	"rbxassetid://9046863579", // City Lights
	"rbxassetid://9047105308", // Dusk To Dawn
	"rbxassetid://9047105702", // Light Dreamer
	"rbxassetid://9047105533", // No Smoking
	"rbxassetid://1848354536", // Relaxed Scene
	"rbxassetid://9043887091", // Lo-fi Chill A
	"rbxassetid://9044565954", // Smooth Vibes (c)
	"rbxassetid://1839841807", // Relax (c)
	"rbxassetid://1838979278", // Early Morning
	"rbxassetid://1841998846", // Lobby Soirée (c)
	"rbxassetid://9047104411", // Beach Cushions
];

export function Music() {
	const enabled = useSelector(selectMusicEnabled);

	const [queue, setQueue] = useState(() => shuffle(MUSIC));
	const [index, setIndex] = useState(0);
	const [sound, setSound] = useState<Sound>();

	// Advance the queue when the song ends
	useEventListener(sound?.Ended, () => {
		setIndex(index + 1);
	});

	// Create the next song when the index changes
	useEffect(() => {
		if (index >= queue.size()) {
			// Shuffle the queue if we've reached the end
			setQueue(shuffle(MUSIC));
			setIndex(0);
			return;
		}

		const newSound = createSound(queue[index], { volume: 0.2 });

		setSound(newSound);

		return () => {
			newSound.Destroy();
		};
	}, [index]);

	// Pause/resume the sound when the enabled state changes
	// or when the sound changes
	useEffect(() => {
		if (enabled) {
			sound?.Resume();
		} else {
			sound?.Pause();
		}
	}, [enabled, sound]);

	// Destroy sounds not in use
	useEffect(() => {
		return () => {
			sound?.Destroy();
		};
	}, [sound]);

	return <></>;
}

================================================================================
// File: src/client/components/preloader/index.ts
================================================================================
export * from "./preloader";

================================================================================
// File: src/client/components/preloader/preloader.tsx
================================================================================
import { useAsyncEffect, useDeferState } from "@rbxts/pretty-react-hooks";
import React, { useMemo } from "@rbxts/react";
import { ContentProvider } from "@rbxts/services";
import { images, sounds } from "shared/assets";

import { useRem } from "../../hooks";
import { Text } from "../ui/text";

interface Assets {
	[key: string]: string | Assets;
}

export function Preloader() {
	const rem = useRem();

	const [contentIds, contentNamesById] = useMemo(() => {
		const contentIds: string[] = [];
		const contentNamesById = new Map<string, string>();

		const scan = (assets: Assets, prefix = "") => {
			for (const [name, asset] of pairs(assets)) {
				if (typeIs(asset, "string")) {
					contentIds.push(asset);
					contentNamesById.set(asset, `${prefix}${name}`);
				} else {
					scan(asset, `${prefix}${name}/`);
				}
			}
		};

		scan(images, "images/");
		scan(sounds, "sounds/");

		return [contentIds, contentNamesById] as const;
	}, []);

	const [currentAsset, setCurrentAsset] = useDeferState<string>();

	useAsyncEffect(async () => {
		ContentProvider.PreloadAsync(contentIds, (assetId) => {
			setCurrentAsset(contentNamesById.get(assetId));
		});

		setCurrentAsset(undefined);
	}, []);

	if (currentAsset === undefined) {
		return <></>;
	}

	return (
		<Text
			text={`Loading ${currentAsset}`}
			textSize={rem(2)}
			textXAlignment="Right"
			textYAlignment="Bottom"
			textColor={Color3.fromRGB(255, 255, 255)}
			textTransparency={0.2}
			position={new UDim2(1, rem(-2), 1, rem(-2))}
		>
			<uistroke
				Thickness={rem(0.1)}
				Color={Color3.fromRGB(0, 0, 0)}
				Transparency={0.5}
				ApplyStrokeMode="Contextual"
			/>
		</Text>
	);
}

================================================================================
// File: src/client/components/stats/index.ts
================================================================================
export * from "./stats";

================================================================================
// File: src/client/components/stats/stats-card.tsx
================================================================================
import React, { useEffect, useMemo } from "@rbxts/react";
import { Frame } from "client/components/ui/frame";
import { Group } from "client/components/ui/group";
import { ReactiveButton } from "client/components/ui/reactive-button";
import { Shadow } from "client/components/ui/shadow";
import { Text } from "client/components/ui/text";
import { fonts } from "client/constants/fonts";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { palette } from "shared/constants/palette";

import { Transition } from "../ui/transition";

interface StatsCardProps {
	readonly onClick?: () => void;
	readonly emoji: string;
	readonly label: string;
	readonly value: string;
	readonly primary: Color3;
	readonly secondary: Color3;
	readonly enabled: boolean;
	readonly order: number;
}

const CARD_MARGIN = 1;
const CARD_PADDING = 0.75;
const CARD_HEIGHT = 4;
const CARD_EMOJI_WIDTH = 2;
const CARD_CANVAS_MARGIN = 3;

export function StatsCard({ onClick, emoji, label, value, primary, secondary, enabled, order }: StatsCardProps) {
	const primaryDark = primary.Lerp(palette.crust, 0.75);
	const secondaryDark = secondary.Lerp(palette.crust, 0.75);

	const rem = useRem();
	const [transparency, transparencySpring] = useSpring(1);
	const [textWidth, textWidthSpring] = useSpring({ label: 0, value: 0 });

	const size = useMemo(() => {
		return textWidth.map(({ label, value }) => {
			const content = math.max(label, value);
			const width = CARD_EMOJI_WIDTH + CARD_PADDING + 2 * CARD_MARGIN;
			return new UDim2(0, rem(width) + content, 0, rem(CARD_HEIGHT));
		});
	}, [rem]);

	useEffect(() => {
		transparencySpring.setGoal(enabled ? 0 : 0.75, springs.slow);
	}, [enabled]);

	return (
		<ReactiveButton onClick={onClick} soundVariant="alt" backgroundTransparency={1} size={size} layoutOrder={order}>
			<Transition
				groupTransparency={transparency}
				size={new UDim2(1, rem(2 * CARD_CANVAS_MARGIN), 1, rem(2 * CARD_CANVAS_MARGIN))}
				position={new UDim2(0, rem(-CARD_CANVAS_MARGIN), 0, rem(-CARD_CANVAS_MARGIN))}
			>
				<uipadding
					PaddingTop={new UDim(0, rem(CARD_CANVAS_MARGIN))}
					PaddingBottom={new UDim(0, rem(CARD_CANVAS_MARGIN))}
					PaddingLeft={new UDim(0, rem(CARD_CANVAS_MARGIN))}
					PaddingRight={new UDim(0, rem(CARD_CANVAS_MARGIN))}
				/>

				<Shadow
					shadowColor={primary.Lerp(secondary, 0.5)}
					shadowBlur={0.3}
					shadowPosition={rem(0.5)}
					shadowSize={rem(4)}
					shadowTransparency={0.7}
				/>

				<Frame
					backgroundTransparency={0.3}
					backgroundColor={palette.white}
					cornerRadius={new UDim(0, rem(0.5))}
					size={new UDim2(1, 0, 1, 0)}
				>
					<uigradient Color={new ColorSequence(primaryDark, secondaryDark)} />
				</Frame>

				<Group clipsDescendants size={new UDim2(0, rem(0.35), 1, 0)}>
					<Frame
						backgroundColor={primary}
						cornerRadius={new UDim(0, rem(0.5))}
						size={new UDim2(0, rem(1), 1, 0)}
					/>
				</Group>

				<Text
					text={emoji}
					textSize={rem(2)}
					size={new UDim2(0, rem(CARD_EMOJI_WIDTH), 1, 0)}
					position={new UDim2(0, rem(CARD_MARGIN), 0, 0)}
				/>

				<Text
					font={fonts.inter.bold}
					text={label}
					textColor={primary}
					textTransparency={0.05}
					textSize={rem(1)}
					textXAlignment="Left"
					textYAlignment="Bottom"
					position={new UDim2(0, rem(CARD_MARGIN + CARD_EMOJI_WIDTH + CARD_PADDING), 0.5, -rem(0.25))}
					change={{
						TextBounds: (rbx) => {
							textWidthSpring.setGoal({ label: rbx.TextBounds.X });
						},
					}}
				/>

				<Text
					font={fonts.inter.regular}
					text={value}
					textColor={palette.white}
					textTransparency={0.05}
					textSize={rem(1.5)}
					textXAlignment="Left"
					textYAlignment="Top"
					position={new UDim2(0, rem(CARD_MARGIN + CARD_EMOJI_WIDTH + CARD_PADDING), 0.5, -rem(0.25))}
					change={{
						TextBounds: (rbx) => {
							textWidthSpring.setGoal({ value: rbx.TextBounds.X });
						},
					}}
				/>
			</Transition>
		</ReactiveButton>
	);
}

================================================================================
// File: src/client/components/stats/stats.tsx
================================================================================
import React from "@rbxts/react";
import { useSelector, useSelectorCreator } from "@rbxts/react-reflex";
import { Group } from "client/components/ui/group";
import { useDefined, useRem, useStore } from "client/hooks";
import { formatInteger } from "client/utils/format-integer";
import { USER_NAME } from "shared/constants/core";
import { selectPlayerBalance } from "shared/store/saves";
import { selectLocalEliminations, selectLocalScore, selectRankForDisplay } from "shared/store/snakes";

import { StatsCard } from "./stats-card";

export function Stats() {
	const rem = useRem();
	const store = useStore();

	const currentEliminations = useSelector(selectLocalEliminations);
	const currentScore = useSelector(selectLocalScore);
	const currentRank = useSelector(selectRankForDisplay);
	const currentBalance = useSelectorCreator(selectPlayerBalance, USER_NAME);

	// displays the previous value if any are set to undefined
	const eliminations = useDefined<string | number>(currentEliminations, "N/A");
	const score = useDefined<string | number>(currentScore, "N/A");
	const rank = useDefined(currentRank, "N/A");
	const balance = useDefined(currentBalance, 0);

	return (
		<Group>
			<uipadding PaddingBottom={new UDim(0, rem(3))} PaddingLeft={new UDim(0, rem(3))} />

			<uilistlayout
				FillDirection="Vertical"
				HorizontalAlignment="Left"
				VerticalAlignment="Bottom"
				Padding={new UDim(0, rem(1))}
				SortOrder="LayoutOrder"
			/>

			<StatsCard
				emoji="☠️"
				label="KOs"
				value={`${formatInteger(eliminations)}`}
				primary={Color3.fromRGB(161, 163, 194)}
				secondary={Color3.fromRGB(97, 97, 138)}
				enabled={currentEliminations !== undefined}
				order={0}
			/>

			<StatsCard
				emoji="🏆"
				label="Rank"
				value={rank}
				primary={Color3.fromRGB(255, 203, 80)}
				secondary={Color3.fromRGB(255, 150, 79)}
				enabled={currentRank !== undefined}
				order={0}
			/>

			<StatsCard
				emoji="💯"
				label="Score"
				value={`${formatInteger(score)}`}
				primary={Color3.fromRGB(181, 64, 64)}
				secondary={Color3.fromRGB(150, 59, 84)}
				enabled={currentScore !== undefined}
				order={1}
			/>

			<StatsCard
				onClick={() => {
					if (currentScore === undefined) {
						// Only show the support page if the user is not playing
						store.setMenuPage("support");
					}
				}}
				emoji="💵"
				label="Cash"
				value={`$${formatInteger(balance)}`}
				primary={Color3.fromRGB(111, 158, 79)}
				secondary={Color3.fromRGB(153, 181, 107)}
				enabled={currentBalance !== undefined}
				order={2}
			/>
		</Group>
	);
}

================================================================================
// File: src/client/components/ui/button.tsx
================================================================================
import React from "@rbxts/react";

import { FrameProps } from "./frame";

export interface ButtonProps extends FrameProps<TextButton> {
	active?: boolean | React.Binding<boolean>;
	onClick?: () => void;
	onMouseDown?: () => void;
	onMouseUp?: () => void;
	onMouseEnter?: () => void;
	onMouseLeave?: () => void;
}

export function Button(props: ButtonProps) {
	const { onClick, onMouseDown, onMouseEnter, onMouseLeave, onMouseUp } = props;

	const event = {
		Activated: onClick && (() => onClick()),
		MouseButton1Down: onMouseDown && (() => onMouseDown()),
		MouseButton1Up: onMouseUp && (() => onMouseUp()),
		MouseEnter: onMouseEnter && (() => onMouseEnter()),
		MouseLeave: onMouseLeave && (() => onMouseLeave()),
		...props.event,
	};

	return (
		<textbutton
			Active={props.active}
			Text=""
			AutoButtonColor={false}
			Size={props.size}
			Position={props.position}
			AnchorPoint={props.anchorPoint}
			BackgroundColor3={props.backgroundColor}
			BackgroundTransparency={props.backgroundTransparency}
			ClipsDescendants={props.clipsDescendants}
			Visible={props.visible}
			ZIndex={props.zIndex}
			LayoutOrder={props.layoutOrder}
			BorderSizePixel={0}
			Event={event}
			Change={props.change}
		>
			{props.children}
			{props.cornerRadius && <uicorner CornerRadius={props.cornerRadius} />}
		</textbutton>
	);
}

================================================================================
// File: src/client/components/ui/canvas-group.tsx
================================================================================
import React, { forwardRef, Ref } from "@rbxts/react";

import { FrameProps } from "./frame";

export interface CanvasGroupProps extends FrameProps<CanvasGroup> {
	groupColor?: Color3 | React.Binding<Color3>;
	groupTransparency?: number | React.Binding<number>;
}

export const CanvasGroup = forwardRef((props: CanvasGroupProps, ref: Ref<CanvasGroup>) => {
	return (
		<canvasgroup
			ref={ref}
			GroupColor3={props.groupColor}
			GroupTransparency={props.groupTransparency}
			Size={props.size}
			Position={props.position}
			AnchorPoint={props.anchorPoint}
			BackgroundColor3={props.backgroundColor}
			BackgroundTransparency={props.backgroundTransparency}
			Rotation={props.rotation}
			ClipsDescendants={props.clipsDescendants}
			Visible={props.visible}
			ZIndex={props.zIndex}
			LayoutOrder={props.layoutOrder}
			BorderSizePixel={0}
			Event={props.event}
			Change={props.change}
		>
			{props.children}
			{props.cornerRadius && <uicorner CornerRadius={props.cornerRadius} />}
		</canvasgroup>
	);
});

================================================================================
// File: src/client/components/ui/delay-render.tsx
================================================================================
import React, { useEffect, useState } from "@rbxts/react";
import { setTimeout } from "@rbxts/set-timeout";

interface DelayRenderProps extends React.PropsWithChildren {
	shouldRender: boolean;
	mountDelay?: number;
	unmountDelay?: number;
}

export function DelayRender({ shouldRender, mountDelay = 0, unmountDelay = 0, children }: DelayRenderProps) {
	const [render, setRender] = useState(false);

	useEffect(() => {
		return setTimeout(() => setRender(shouldRender), shouldRender ? mountDelay : unmountDelay);
	}, [shouldRender]);

	return <>{render && children}</>;
}

================================================================================
// File: src/client/components/ui/error-boundary.tsx
================================================================================
import React, { Component, ErrorInfo, ReactComponent } from "@rbxts/react";

interface ErrorBoundaryProps {
	fallback: (error: unknown) => React.Element;
}

interface ErrorBoundaryState {
	hasError: boolean;
	message?: unknown;
}

@ReactComponent
export class ErrorBoundary extends Component<ErrorBoundaryProps, ErrorBoundaryState> {
	public state: ErrorBoundaryState = {
		hasError: false,
	};

	public componentDidCatch(message: unknown, info: ErrorInfo) {
		warn(message, info.componentStack);

		this.setState({
			hasError: true,
			message: `${message} ${info.componentStack}`,
		});
	}

	public render() {
		if (this.state.hasError) {
			return this.props.fallback(this.state.message);
		} else {
			return this.props.children;
		}
	}
}

================================================================================
// File: src/client/components/ui/frame.tsx
================================================================================
import React, { forwardRef, Ref } from "@rbxts/react";

export interface FrameProps<T extends Instance = Frame> extends React.PropsWithChildren {
	ref?: React.Ref<T>;
	event?: React.InstanceEvent<T>;
	change?: React.InstanceChangeEvent<T>;
	size?: UDim2 | React.Binding<UDim2>;
	position?: UDim2 | React.Binding<UDim2>;
	anchorPoint?: Vector2 | React.Binding<Vector2>;
	rotation?: number | React.Binding<number>;
	backgroundColor?: Color3 | React.Binding<Color3>;
	backgroundTransparency?: number | React.Binding<number>;
	clipsDescendants?: boolean | React.Binding<boolean>;
	visible?: boolean | React.Binding<boolean>;
	zIndex?: number | React.Binding<number>;
	layoutOrder?: number | React.Binding<number>;
	cornerRadius?: UDim | React.Binding<UDim>;
}

export const Frame = forwardRef((props: FrameProps, ref: Ref<Frame>) => {
	return (
		<frame
			ref={ref}
			Size={props.size}
			Position={props.position}
			AnchorPoint={props.anchorPoint}
			Rotation={props.rotation}
			BackgroundColor3={props.backgroundColor}
			BackgroundTransparency={props.backgroundTransparency}
			ClipsDescendants={props.clipsDescendants}
			Visible={props.visible}
			ZIndex={props.zIndex}
			LayoutOrder={props.layoutOrder}
			BorderSizePixel={0}
			Event={props.event}
			Change={props.change}
		>
			{props.children}
			{props.cornerRadius && <uicorner CornerRadius={props.cornerRadius} />}
		</frame>
	);
});

================================================================================
// File: src/client/components/ui/group.tsx
================================================================================
import React, { forwardRef } from "@rbxts/react";

interface GroupProps extends React.PropsWithChildren {
	ref?: React.Ref<Frame>;
	event?: React.InstanceEvent<Frame>;
	change?: React.InstanceChangeEvent<Frame>;
	size?: UDim2 | React.Binding<UDim2>;
	position?: UDim2 | React.Binding<UDim2>;
	anchorPoint?: Vector2 | React.Binding<Vector2>;
	rotation?: number | React.Binding<number>;
	clipsDescendants?: boolean | React.Binding<boolean>;
	layoutOrder?: number | React.Binding<number>;
	visible?: boolean | React.Binding<boolean>;
	zIndex?: number | React.Binding<number>;
}

export const Group = forwardRef((props: GroupProps, ref: React.Ref<Frame>) => {
	return (
		<frame
			ref={ref}
			Size={props.size || UDim2.fromScale(1, 1)}
			Position={props.position}
			AnchorPoint={props.anchorPoint}
			Rotation={props.rotation}
			ClipsDescendants={props.clipsDescendants}
			LayoutOrder={props.layoutOrder}
			Visible={props.visible}
			ZIndex={props.zIndex}
			BackgroundTransparency={1}
			Event={props.event}
			Change={props.change}
		>
			{props.children}
		</frame>
	);
});

================================================================================
// File: src/client/components/ui/image.tsx
================================================================================
import React from "@rbxts/react";

import { FrameProps } from "./frame";

export interface ImageProps extends FrameProps<ImageLabel> {
	image: string;
	imageColor?: Color3 | React.Binding<Color3>;
	imageTransparency?: number | React.Binding<number>;
	imageRectOffset?: Vector2 | React.Binding<Vector2>;
	imageRectSize?: Vector2 | React.Binding<Vector2>;
	scaleType?: React.InferEnumNames<Enum.ScaleType>;
	sliceScale?: number | React.Binding<number>;
	sliceCenter?: Rect | React.Binding<Rect>;
	tileSize?: UDim2 | React.Binding<UDim2>;
}

export function Image(props: ImageProps) {
	return (
		<imagelabel
			Image={props.image}
			ImageColor3={props.imageColor}
			ImageTransparency={props.imageTransparency}
			ImageRectOffset={props.imageRectOffset}
			ImageRectSize={props.imageRectSize}
			ScaleType={props.scaleType}
			SliceScale={props.sliceScale}
			SliceCenter={props.sliceCenter}
			TileSize={props.tileSize}
			Size={props.size}
			Position={props.position}
			AnchorPoint={props.anchorPoint}
			Rotation={props.rotation}
			BackgroundColor3={props.backgroundColor}
			BackgroundTransparency={props.backgroundTransparency ?? 1}
			ClipsDescendants={props.clipsDescendants}
			Visible={props.visible}
			ZIndex={props.zIndex}
			LayoutOrder={props.layoutOrder}
			BorderSizePixel={0}
			Event={props.event}
			Change={props.change}
		>
			{props.children}
			{props.cornerRadius && <uicorner CornerRadius={props.cornerRadius} />}
		</imagelabel>
	);
}

================================================================================
// File: src/client/components/ui/input-capture.tsx
================================================================================
import { useEventListener } from "@rbxts/pretty-react-hooks";
import React, { useState } from "@rbxts/react";
import { UserInputService } from "@rbxts/services";
import { IS_EDIT } from "shared/constants/core";

import { Group } from "./group";

interface InputCaptureProps {
	readonly onInputBegan?: (rbx: Frame, input: InputObject) => void;
	readonly onInputChanged?: (rbx: Frame, input: InputObject) => void;
	readonly onInputEnded?: (rbx: Frame, input: InputObject) => void;
	readonly size?: UDim2;
	readonly position?: UDim2;
	readonly anchorPoint?: Vector2;
}

export function InputCapture({
	onInputBegan,
	onInputChanged,
	onInputEnded,
	size,
	position,
	anchorPoint,
}: InputCaptureProps) {
	const [frame, frameRef] = useState<Frame>();

	useEventListener(UserInputService.InputBegan, (input, gameProcessed) => {
		if (frame && !IS_EDIT && !gameProcessed) {
			onInputBegan?.(frame, input);
		}
	});

	useEventListener(UserInputService.InputEnded, (input) => {
		if (frame && !IS_EDIT) {
			onInputEnded?.(frame, input);
		}
	});

	useEventListener(UserInputService.InputChanged, (input) => {
		if (frame && !IS_EDIT) {
			onInputChanged?.(frame, input);
		}
	});

	return (
		<Group
			ref={frameRef}
			size={size}
			position={position}
			anchorPoint={anchorPoint}
			event={{
				InputBegan: IS_EDIT ? onInputBegan : undefined,
				InputChanged: IS_EDIT ? onInputChanged : undefined,
				InputEnded: IS_EDIT ? onInputEnded : undefined,
			}}
		/>
	);
}

================================================================================
// File: src/client/components/ui/layer.tsx
================================================================================
import React from "@rbxts/react";
import { IS_EDIT } from "shared/constants/core";

import { Group } from "./group";

interface LayerProps extends React.PropsWithChildren {
	displayOrder?: number;
}

export function Layer({ displayOrder, children }: LayerProps) {
	return IS_EDIT ? (
		<Group zIndex={displayOrder}>{children}</Group>
	) : (
		<screengui ResetOnSpawn={false} DisplayOrder={displayOrder} IgnoreGuiInset ZIndexBehavior="Sibling">
			{children}
		</screengui>
	);
}

================================================================================
// File: src/client/components/ui/outline.tsx
================================================================================
import { blend, composeBindings } from "@rbxts/pretty-react-hooks";
import React, { useMemo } from "@rbxts/react";
import { palette } from "shared/constants/palette";

import { useRem } from "../../hooks";
import { Group } from "./group";

interface OutlineProps extends React.PropsWithChildren {
	readonly outlineTransparency?: number | React.Binding<number>;
	readonly innerColor?: Color3 | React.Binding<Color3>;
	readonly outerColor?: Color3 | React.Binding<Color3>;
	readonly innerTransparency?: number | React.Binding<number>;
	readonly outerTransparency?: number | React.Binding<number>;
	readonly innerThickness?: number | React.Binding<number>;
	readonly outerThickness?: number | React.Binding<number>;
	readonly cornerRadius?: UDim | React.Binding<UDim>;
}

function ceilEven(n: number) {
	return math.ceil(n / 2) * 2;
}

export function Outline({
	outlineTransparency = 0,
	innerColor = palette.white,
	outerColor = palette.black,
	innerTransparency = 0.9,
	outerTransparency = 0.85,
	innerThickness,
	outerThickness,
	cornerRadius,
	children,
}: OutlineProps) {
	const rem = useRem();

	innerThickness ??= rem(3, "pixel");
	outerThickness ??= rem(1.5, "pixel");
	cornerRadius ??= new UDim(0, rem(0.5));

	const innerStyle = useMemo(() => {
		const size = composeBindings(innerThickness!, (thickness) => {
			return new UDim2(1, ceilEven(-2 * thickness), 1, ceilEven(-2 * thickness));
		});

		const position = composeBindings(innerThickness!, (thickness) => {
			return new UDim2(0, thickness, 0, thickness);
		});

		const radius = composeBindings(cornerRadius!, innerThickness!, (radius, thickness) => {
			return radius.sub(new UDim(0, thickness));
		});

		const transparency = composeBindings(outlineTransparency, innerTransparency, (a, b) => {
			return math.clamp(blend(a, b), 0, 1);
		});

		return { size, position, radius, transparency };
	}, [innerThickness, innerTransparency, cornerRadius, outlineTransparency, rem]);

	const outerStyle = useMemo(() => {
		const transparency = composeBindings(outlineTransparency, outerTransparency, (a, b) => {
			return math.clamp(blend(a, b), 0, 1);
		});

		return { transparency };
	}, [outlineTransparency, outerTransparency]);

	return (
		<>
			<Group size={innerStyle.size} position={innerStyle.position}>
				<uicorner CornerRadius={innerStyle.radius} />
				<uistroke Color={innerColor} Transparency={innerStyle.transparency} Thickness={innerThickness}>
					{children}
				</uistroke>
			</Group>

			<Group>
				<uicorner CornerRadius={cornerRadius} />
				<uistroke Color={outerColor} Transparency={outerStyle.transparency} Thickness={outerThickness}>
					{children}
				</uistroke>
			</Group>
		</>
	);
}

================================================================================
// File: src/client/components/ui/primary-button.tsx
================================================================================
import { blend, lerpBinding } from "@rbxts/pretty-react-hooks";
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { images } from "shared/assets";
import { palette } from "shared/constants/palette";

import { useRem, useSpring } from "../../hooks";
import { Frame } from "./frame";
import { Image } from "./image";
import { Outline } from "./outline";
import { ReactiveButton } from "./reactive-button";
import { Shadow } from "./shadow";

interface PrimaryButtonProps extends React.PropsWithChildren {
	readonly onClick?: () => void;
	readonly onHover?: (hovered: boolean) => void;
	readonly size?: UDim2 | React.Binding<UDim2>;
	readonly position?: UDim2 | React.Binding<UDim2>;
	readonly anchorPoint?: Vector2 | React.Binding<Vector2>;
	readonly overlayGradient?: ColorSequence | React.Binding<ColorSequence>;
	readonly overlayTransparency?: number | React.Binding<number>;
	readonly overlayRotation?: number | React.Binding<number>;
	readonly layoutOrder?: number | React.Binding<number>;
}

export function PrimaryButton({
	onClick,
	onHover,
	size,
	position,
	anchorPoint,
	overlayGradient,
	overlayTransparency = 0,
	overlayRotation,
	layoutOrder,
	children,
}: PrimaryButtonProps) {
	const rem = useRem();
	const [hover, hoverSpring] = useSpring(0);

	return (
		<ReactiveButton
			onClick={onClick}
			onHover={(hovered) => {
				hoverSpring.setGoal(hovered ? 1 : 0);
				onHover?.(hovered);
			}}
			backgroundTransparency={1}
			anchorPoint={anchorPoint}
			size={size}
			position={position}
			layoutOrder={layoutOrder}
		>
			<Shadow
				shadowSize={rem(2.5)}
				shadowBlur={0.2}
				shadowTransparency={lerpBinding(hover, 0.7, 0.4)}
				shadowPosition={rem(0.5)}
			/>

			<Frame backgroundColor={palette.white} cornerRadius={new UDim(0, rem(1))} size={new UDim2(1, 0, 1, 0)}>
				<uigradient
					Offset={lerpBinding(hover, new Vector2(), new Vector2(0, 1))}
					Rotation={90}
					Transparency={new NumberSequence(0, 0.1)}
				/>
			</Frame>

			<Outline cornerRadius={new UDim(0, rem(1))} innerTransparency={0} />

			<Image
				image={images.ui.button_glow_top}
				imageTransparency={composeBindings(overlayTransparency, lerpBinding(hover, 0.3, 0), blend)}
				cornerRadius={new UDim(0, rem(1))}
				size={new UDim2(1, 0, 1, 0)}
			>
				<uigradient Color={overlayGradient} Rotation={overlayRotation} />
			</Image>

			{children}
		</ReactiveButton>
	);
}

================================================================================
// File: src/client/components/ui/reactive-button/index.ts
================================================================================
export * from "./reactive-button";

================================================================================
// File: src/client/components/ui/reactive-button/reactive-button.tsx
================================================================================
import { blend, lerpBinding, useUpdateEffect } from "@rbxts/pretty-react-hooks";
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { useRem, useSpring } from "client/hooks";
import { ButtonSoundVariant, playButtonDown, playButtonUp } from "shared/assets";

import { Button } from "../button";
import { Frame } from "../frame";
import { useButtonAnimation } from "./use-button-animation";
import { useButtonState } from "./use-button-state";

interface ReactiveButtonProps extends React.PropsWithChildren {
	onClick?: () => void;
	onMouseDown?: () => void;
	onMouseUp?: () => void;
	onMouseEnter?: () => void;
	onMouseLeave?: () => void;
	onHover?: (hovered: boolean) => void;
	onPress?: (pressed: boolean) => void;
	enabled?: boolean;
	size?: UDim2 | React.Binding<UDim2>;
	position?: UDim2 | React.Binding<UDim2>;
	anchorPoint?: Vector2 | React.Binding<Vector2>;
	backgroundColor?: Color3 | React.Binding<Color3>;
	backgroundTransparency?: number | React.Binding<number>;
	cornerRadius?: UDim | React.Binding<UDim>;
	layoutOrder?: number | React.Binding<number>;
	animatePosition?: boolean;
	animatePositionStrength?: number;
	animatePositionDirection?: Vector2;
	animateSize?: boolean;
	animateSizeStrength?: number;
	soundVariant?: ButtonSoundVariant;
	zIndex?: number | React.Binding<number>;
	event?: React.InstanceEvent<TextButton>;
	change?: React.InstanceChangeEvent<TextButton>;
}

export function ReactiveButton({
	onClick,
	onMouseDown,
	onMouseUp,
	onMouseEnter,
	onMouseLeave,
	onHover,
	onPress,
	enabled = true,
	size,
	position,
	anchorPoint,
	backgroundColor = Color3.fromRGB(255, 255, 255),
	backgroundTransparency = 0,
	cornerRadius,
	layoutOrder,
	zIndex,
	animatePosition = true,
	animatePositionStrength = 1,
	animatePositionDirection = new Vector2(0, 1),
	animateSize = true,
	animateSizeStrength = 1,
	soundVariant = "default",
	event,
	change,
	children,
}: ReactiveButtonProps) {
	const rem = useRem();
	const [sizeAnimation, sizeSpring] = useSpring(0);
	const [press, hover, buttonEvents] = useButtonState();
	const animation = useButtonAnimation(press, hover);

	useUpdateEffect(() => {
		if (press) {
			sizeSpring.setGoal(-0.1, { tension: 300 });
		} else {
			sizeSpring.setGoal(0, { impulse: 10, tension: 300 });
		}
	}, [press]);

	useUpdateEffect(() => {
		onHover?.(hover);
	}, [hover]);

	useUpdateEffect(() => {
		onPress?.(press);
	}, [press]);

	return (
		<Button
			onClick={enabled ? onClick : undefined}
			active={enabled}
			onMouseDown={() => {
				if (!enabled) return;
				buttonEvents.onMouseDown();
				onMouseDown?.();
				playButtonDown(soundVariant);
			}}
			onMouseUp={() => {
				if (!enabled) return;
				buttonEvents.onMouseUp();
				onMouseUp?.();
				playButtonUp(soundVariant);
			}}
			onMouseEnter={() => {
				buttonEvents.onMouseEnter();
				onMouseEnter?.();
			}}
			onMouseLeave={() => {
				buttonEvents.onMouseLeave();
				onMouseLeave?.();
			}}
			backgroundTransparency={1}
			size={size}
			position={position}
			anchorPoint={anchorPoint}
			layoutOrder={layoutOrder}
			zIndex={zIndex}
			event={event}
			change={change}
		>
			<Frame
				backgroundColor={composeBindings(
					animation.hoverOnly,
					animation.press,
					backgroundColor,
					(hover, press, color) => {
						return color.Lerp(new Color3(1, 1, 1), hover * 0.15).Lerp(new Color3(), press * 0.1);
					},
				)}
				backgroundTransparency={composeBindings(
					animation.press,
					backgroundTransparency,
					(press, transparency) => {
						return blend(-press * 0.2, transparency);
					},
				)}
				cornerRadius={cornerRadius}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={lerpBinding(
					animateSize ? sizeAnimation : 0,
					new UDim2(1, 0, 1, 0),
					new UDim2(1, rem(2 * animateSizeStrength), 1, rem(2 * animateSizeStrength)),
				)}
				position={lerpBinding(
					animatePosition ? animation.position : 0,
					new UDim2(0.5, 0, 0.5, 0),
					new UDim2(
						0.5,
						(3 + rem(0.1)) * animatePositionStrength * animatePositionDirection.X,
						0.5,
						(3 + rem(0.1)) * animatePositionStrength * animatePositionDirection.Y,
					),
				)}
			>
				{children}
			</Frame>
		</Button>
	);
}

================================================================================
// File: src/client/components/ui/reactive-button/use-button-animation.ts
================================================================================
import { useUpdateEffect } from "@rbxts/pretty-react-hooks";
import React, { useMemo } from "@rbxts/react";
import { springs } from "client/constants/springs";
import { useSpring } from "client/hooks";

export interface ButtonAnimation {
	/**
	 * An underdamped spring. `-1` is fully hovered, `0` is neutral, and `1` is
	 * fully pressed. Values outside of this range are possible.
	 */
	readonly position: React.Binding<number>;
	/**
	 * A critically damped spring that is `1` when the button is pressed.
	 */
	readonly press: React.Binding<number>;
	/**
	 * A critically damped spring that is `1` when the button is hovered.
	 */
	readonly hover: React.Binding<number>;
	/**
	 * Same as `hover`, but `pressed` must be `false`.
	 */
	readonly hoverOnly: React.Binding<number>;
}

/**
 * Returns a `ButtonAnimation` object that can be used to animate a button.
 * The values provided by the object are:
 *
 * - `position`: An underdamped spring. `-1` is fully hovered, `0` is neutral,
 *  and `1` is fully pressed. Values outside of this range are possible.
 * - `press`: A critically damped spring that is `1` when the button is pressed.
 * - `hover`: A critically damped spring that is `1` when the button is hovered.
 * - `hoverExclusive`: Same as `hover`, but `pressed` must also be `false`.
 *
 * @param pressedState Whether the button is pressed.
 * @param hoveredState Whether the button is hovered.
 * @returns A `ButtonAnimation` object.
 */
export function useButtonAnimation(pressedState: boolean, hoveredState: boolean): ButtonAnimation {
	const [press, pressSpring] = useSpring(0);
	const [hover, hoverSpring] = useSpring(0);
	const [hoverExclusive, hoverExclusiveSpring] = useSpring(0);
	const [position, positionSpring] = useSpring(0);

	useUpdateEffect(() => {
		pressSpring.setGoal(pressedState ? 1 : 0, springs.responsive);
		hoverExclusiveSpring.setGoal(hoveredState && !pressedState ? 1 : 0, springs.responsive);
	}, [pressedState, hoveredState]);

	useUpdateEffect(() => {
		hoverSpring.setGoal(hoveredState ? 1 : 0, springs.responsive);
	}, [hoveredState]);

	useUpdateEffect(() => {
		if (pressedState) {
			// hovered -> pressed
			positionSpring.setGoal(1, springs.responsive);
		} else if (hoveredState) {
			// pressed -> hovered
			positionSpring.setGoal(-1, { ...springs.bubbly, impulse: -100 });
		} else {
			// pressed -> unhovered, but 'hover' was not true
			positionSpring.setGoal(0, { ...springs.bubbly, impulse: -70 });
		}
	}, [pressedState]);

	useUpdateEffect(() => {
		if (hoveredState) {
			// unhovered -> hovered
			positionSpring.setGoal(-1, springs.responsive);
		} else {
			// hovered -> unhovered
			positionSpring.setGoal(0, springs.responsive);
		}
	}, [hoveredState]);

	return useMemo<ButtonAnimation>(() => {
		return {
			press,
			hover: hover.map((t) => math.clamp(t, 0, 1)),
			hoverOnly: hoverExclusive.map((t) => math.clamp(t, 0, 1)),
			position,
		};
	}, []);
}

================================================================================
// File: src/client/components/ui/reactive-button/use-button-state.ts
================================================================================
import { useEventListener, useLatest } from "@rbxts/pretty-react-hooks";
import { useMemo, useState } from "@rbxts/react";
import { UserInputService } from "@rbxts/services";
import { setTimeout } from "@rbxts/set-timeout";

import { useInputDevice } from "../../../hooks/use-input-device";

export interface ButtonEvents {
	onMouseDown: () => void;
	onMouseUp: () => void;
	onMouseEnter: () => void;
	onMouseLeave: () => void;
}

/**
 * Returns the current state of a button based on the events returned.
 * @param enabled Whether the button is enabled or not.
 * @returns The press state, hover state, and a `ButtonEvents` object.
 */
export function useButtonState(enabled = true): [press: boolean, hover: boolean, events: ButtonEvents] {
	const [{ press, hover }, setState] = useState({
		press: false,
		hover: false,
	});

	const on = useLatest(enabled);
	const touch = useLatest(useInputDevice() === "touch");

	const events: ButtonEvents = useMemo(() => {
		return {
			onMouseDown: () => setState((state) => ({ ...state, press: on.current })),
			onMouseUp: () => setState((state) => ({ ...state, press: false })),
			onMouseEnter: () => setState((state) => ({ ...state, hover: on.current && !touch.current })),
			onMouseLeave: () => setState({ press: false, hover: false }),
		};
	}, []);

	// Touch devices might not fire mouse leave events, so assume that all
	// releases are a mouse leave.
	useEventListener(UserInputService.InputEnded, (input) => {
		if (input.UserInputType === Enum.UserInputType.Touch) {
			setTimeout(() => {
				setState({ press: false, hover: false });
			}, 0);
		}
	});

	return [press, hover, events];
}

================================================================================
// File: src/client/components/ui/shadow.tsx
================================================================================
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { images } from "shared/assets";

import { useRem } from "../../hooks";
import { Image } from "./image";

interface ShadowProps extends React.PropsWithChildren {
	shadowBlur?: number;
	shadowPosition?: number | React.Binding<number>;
	shadowSize?: number | UDim2 | React.Binding<number | UDim2>;
	shadowColor?: Color3 | React.Binding<Color3>;
	shadowTransparency?: number | React.Binding<number>;
	zIndex?: number;
}

const IMAGE_SIZE = new Vector2(512, 512);
const BLUR_RADIUS = 80;

export function Shadow({
	shadowBlur = 1,
	shadowPosition,
	shadowSize = 0,
	shadowColor = new Color3(),
	shadowTransparency = 0.5,
	zIndex = -1,
	children,
}: ShadowProps) {
	const rem = useRem();

	shadowPosition ??= rem(1);

	return (
		<Image
			image={images.ui.blur}
			imageTransparency={shadowTransparency}
			imageColor={shadowColor}
			anchorPoint={new Vector2(0.5, 0.5)}
			size={composeBindings(shadowSize, (size) => {
				const sizeOffsetScaled = rem(BLUR_RADIUS * shadowBlur, "pixel");

				if (typeIs(size, "UDim2")) {
					return new UDim2(1, sizeOffsetScaled, 1, sizeOffsetScaled).add(size);
				} else {
					return new UDim2(1, size + sizeOffsetScaled, 1, size + sizeOffsetScaled);
				}
			})}
			position={composeBindings(shadowPosition, (offset) => new UDim2(0.5, 0, 0.5, offset))}
			scaleType="Slice"
			sliceCenter={new Rect(IMAGE_SIZE.div(2), IMAGE_SIZE.div(2))}
			sliceScale={rem(shadowBlur, "pixel")}
			zIndex={zIndex}
		>
			{children}
		</Image>
	);
}

================================================================================
// File: src/client/components/ui/text-field.tsx
================================================================================
import React, { useEffect, useState } from "@rbxts/react";

import { fonts } from "../../constants/fonts";
import { Group } from "./group";
import { TextProps } from "./text";

interface TextFieldProps extends TextProps<TextBox> {
	text?: string;
	placeholderText?: string | React.Binding<string>;
	placeholderColor?: Color3 | React.Binding<Color3>;
	clearTextOnFocus?: boolean | React.Binding<boolean>;
	multiLine?: boolean | React.Binding<boolean>;
	textEditable?: boolean | React.Binding<boolean>;
}

export function TextField(props: TextFieldProps) {
	const [childRef, setChildRef] = useState<Frame | undefined>(undefined);

	useEffect(() => {
		if (childRef && childRef.Parent?.IsA("TextBox")) {
			childRef.Parent.Text = props.text ?? "";
		}
	}, [childRef, props.text]);

	return (
		<textbox
			PlaceholderText={props.placeholderText}
			PlaceholderColor3={props.placeholderColor}
			ClearTextOnFocus={props.clearTextOnFocus}
			MultiLine={props.multiLine}
			TextEditable={props.textEditable}
			Font={Enum.Font.Unknown}
			FontFace={props.font || fonts.inter.regular}
			TextColor3={props.textColor}
			TextSize={props.textSize}
			TextTransparency={props.textTransparency}
			TextWrapped={props.textWrapped}
			TextXAlignment={props.textXAlignment}
			TextYAlignment={props.textYAlignment}
			TextTruncate={props.textTruncate}
			TextScaled={props.textScaled}
			AutomaticSize={props.textAutoResize}
			Size={props.size}
			Position={props.position}
			AnchorPoint={props.anchorPoint}
			BackgroundColor3={props.backgroundColor}
			BackgroundTransparency={props.backgroundTransparency ?? 1}
			ClipsDescendants={props.clipsDescendants}
			Visible={props.visible}
			ZIndex={props.zIndex}
			LayoutOrder={props.layoutOrder}
			BorderSizePixel={0}
			Event={props.event}
			Change={props.change}
		>
			{props.children}
			{props.cornerRadius && <uicorner CornerRadius={props.cornerRadius} />}
			<Group ref={setChildRef} />
		</textbox>
	);
}

================================================================================
// File: src/client/components/ui/text.tsx
================================================================================
import React from "@rbxts/react";
import { useRem } from "client/hooks";

import { fonts } from "../../constants/fonts";
import { FrameProps } from "./frame";

export interface TextProps<T extends Instance = TextLabel> extends FrameProps<T> {
	font?: Font;
	text?: string | React.Binding<string>;
	textColor?: Color3 | React.Binding<Color3>;
	textSize?: number | React.Binding<number>;
	textTransparency?: number | React.Binding<number>;
	textWrapped?: boolean | React.Binding<boolean>;
	textXAlignment?: React.InferEnumNames<Enum.TextXAlignment>;
	textYAlignment?: React.InferEnumNames<Enum.TextYAlignment>;
	textTruncate?: React.InferEnumNames<Enum.TextTruncate>;
	textScaled?: boolean | React.Binding<boolean>;
	textHeight?: number | React.Binding<number>;
	textAutoResize?: "X" | "Y" | "XY";
	richText?: boolean | React.Binding<boolean>;
	maxVisibleGraphemes?: number | React.Binding<number>;
}

export function Text(props: TextProps) {
	const rem = useRem();

	return (
		<textlabel
			Font={Enum.Font.Unknown}
			FontFace={props.font || fonts.inter.regular}
			Text={props.text}
			TextColor3={props.textColor}
			TextSize={props.textSize ?? rem(1)}
			TextTransparency={props.textTransparency}
			TextWrapped={props.textWrapped}
			TextXAlignment={props.textXAlignment}
			TextYAlignment={props.textYAlignment}
			TextTruncate={props.textTruncate}
			TextScaled={props.textScaled}
			LineHeight={props.textHeight}
			RichText={props.richText}
			MaxVisibleGraphemes={props.maxVisibleGraphemes}
			Size={props.size}
			AutomaticSize={props.textAutoResize}
			Position={props.position}
			AnchorPoint={props.anchorPoint}
			BackgroundColor3={props.backgroundColor}
			BackgroundTransparency={props.backgroundTransparency ?? 1}
			ClipsDescendants={props.clipsDescendants}
			Visible={props.visible}
			ZIndex={props.zIndex}
			LayoutOrder={props.layoutOrder}
			Change={props.change}
			Event={props.event}
		>
			{props.children}
			{props.cornerRadius && <uicorner CornerRadius={props.cornerRadius} />}
		</textlabel>
	);
}

================================================================================
// File: src/client/components/ui/transition.tsx
================================================================================
import { getBindingValue, useEventListener, useUnmountEffect } from "@rbxts/pretty-react-hooks";
import React, { Binding, useMemo, useState } from "@rbxts/react";
import { createPortal } from "@rbxts/react-roblox";
import { RunService } from "@rbxts/services";
import { palette } from "shared/constants/palette";

interface TransitionProps extends React.PropsWithChildren {
	groupColor?: Color3 | Binding<Color3>;
	groupTransparency?: number | Binding<number>;
	anchorPoint?: Vector2 | Binding<Vector2>;
	size?: UDim2 | Binding<UDim2>;
	position?: UDim2 | Binding<UDim2>;
	rotation?: number | Binding<number>;
	clipsDescendants?: boolean | Binding<boolean>;
	layoutOrder?: number | Binding<number>;
	zIndex?: number | Binding<number>;
	event?: React.InstanceEvent<Frame | CanvasGroup>;
	change?: React.InstanceChangeEvent<Frame | CanvasGroup>;
	directChildren?: React.ReactNode;
	children?: React.ReactNode;
}

const EPSILON = 0.03;

export function Transition({
	groupColor,
	groupTransparency,
	anchorPoint,
	size = new UDim2(1, 0, 1, 0),
	position,
	rotation,
	clipsDescendants,
	layoutOrder,
	zIndex,
	event,
	change,
	children,
	directChildren,
}: TransitionProps) {
	const [frame, setFrame] = useState<Frame>();
	const [canvas, setCanvas] = useState<CanvasGroup>();

	const container = useMemo(() => {
		const container = new Instance("Frame");
		container.Size = new UDim2(1, 0, 1, 0);
		container.BackgroundTransparency = 1;
		return container;
	}, []);

	useEventListener(RunService.Heartbeat, () => {
		const transparency = getBindingValue(groupTransparency) ?? 0;
		const color = getBindingValue(groupColor) || palette.white;

		pcall(() => {
			if (transparency > EPSILON || color !== palette.white) {
				container.Parent = canvas;
			} else {
				container.Parent = frame;
			}
		});
	});

	useUnmountEffect(() => {
		container.Destroy();
	});

	return (
		<frame
			BackgroundTransparency={1}
			AnchorPoint={anchorPoint}
			Size={size}
			Position={position}
			Rotation={rotation}
			LayoutOrder={layoutOrder}
			ZIndex={zIndex}
		>
			{createPortal(<>{children}</>, container)}

			<canvasgroup
				ref={setCanvas}
				Change={change}
				Event={event}
				GroupTransparency={groupTransparency}
				GroupColor3={groupColor}
				BackgroundTransparency={1}
				Size={new UDim2(1, 0, 1, 0)}
			>
				{directChildren}
			</canvasgroup>

			<frame
				ref={setFrame}
				Change={change}
				Event={event}
				ClipsDescendants={clipsDescendants}
				BackgroundTransparency={1}
				Size={new UDim2(1, 0, 1, 0)}
			>
				{directChildren}
			</frame>
		</frame>
	);
}

================================================================================
// File: src/client/components/voice/index.ts
================================================================================
export * from "./voice";

================================================================================
// File: src/client/components/voice/utils.ts
================================================================================
import { useEventListener } from "@rbxts/pretty-react-hooks";
import { useEffect, useState } from "@rbxts/react";
import { Players } from "@rbxts/services";
import { Character, promiseCharacter } from "shared/utils/player-utils";

interface VoiceCharacter {
	readonly player: Player;
	readonly model: Character;
}

export function useVoiceCharacters() {
	const [characters, setCharacters] = useState<VoiceCharacter[]>([]);

	const characterAdded = async (model: Model) => {
		const character = await promiseCharacter(model).timeout(60, `Took too long to load character ${model}`);
		const player = Players.GetPlayerFromCharacter(character);

		if (player) {
			setCharacters((characters) => [...characters, { player, model: character }]);
		}
	};

	const characterRemoving = (model: Model) => {
		setCharacters((characters) => {
			return characters.filter((character) => character.model !== model);
		});
	};

	const playerAdded = async (player: Player) => {
		if (player.Character) {
			characterAdded(player.Character);
		}

		player.CharacterAdded.Connect(characterAdded);
		player.CharacterRemoving.Connect(characterRemoving);
	};

	const playerRemoving = (player: Player) => {
		setCharacters((characters) => {
			return characters.filter((character) => character.player !== player);
		});
	};

	useEventListener(Players.PlayerAdded, playerAdded);

	useEventListener(Players.PlayerRemoving, playerRemoving);

	useEffect(() => {
		for (const player of Players.GetPlayers()) {
			playerAdded(player);
		}
	}, []);

	return characters;
}

export function toRealSpace(position: Vector2) {
	return new CFrame(2 * position.X, 0, 2 * position.Y);
}

================================================================================
// File: src/client/components/voice/voice-camera.tsx
================================================================================
import { useCamera, useEventListener, useInterval } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { RunService } from "@rbxts/services";
import { selectSnakeFromWorldSubject } from "client/store/world";

import { toRealSpace } from "./utils";

export function VoiceCamera() {
	const camera = useCamera();
	const snake = useSelector(selectSnakeFromWorldSubject);

	const getCameraCFrame = (position: Vector2) => {
		const origin = toRealSpace(position).Position;
		return CFrame.lookAt(origin, origin.add(new Vector3(0, -1, 0)), new Vector3(0, 0, -1));
	};

	useEventListener(RunService.RenderStepped, () => {
		if (snake) {
			camera.CFrame = getCameraCFrame(snake.head);
		}
	});

	useInterval(() => {
		camera.CameraType = Enum.CameraType.Scriptable;
	}, 1);

	return <></>;
}

================================================================================
// File: src/client/components/voice/voice-character.tsx
================================================================================
import { useInterval } from "@rbxts/pretty-react-hooks";
import React, { useRef } from "@rbxts/react";
import { useSelectorCreator } from "@rbxts/react-reflex";
import { selectSnakeById } from "shared/store/snakes";
import { Character } from "shared/utils/player-utils";

import { toRealSpace } from "./utils";

interface VoiceCharacterProps {
	readonly player: Player;
	readonly model: Character;
}

export function VoiceCharacter({ player, model }: VoiceCharacterProps) {
	const snake = useSelectorCreator(selectSnakeById, player.Name);
	const hidden = useRef<Model>();

	useInterval(() => {
		if (snake) {
			model.PivotTo(toRealSpace(snake.head));
		} else if (hidden.current !== model) {
			model.PivotTo(new CFrame(100, 200, 100));
			hidden.current = model;
		}
	}, 0.2);

	return <></>;
}

================================================================================
// File: src/client/components/voice/voice.tsx
================================================================================
import React, { useMemo } from "@rbxts/react";
import { Players } from "@rbxts/services";

import { useVoiceCharacters } from "./utils";
import { VoiceCamera } from "./voice-camera";
import { VoiceCharacter } from "./voice-character";

export function Voice() {
	const characters = useVoiceCharacters();

	const charactersExcludingSelf = useMemo(() => {
		return characters.filter((voiceCharacter) => {
			return voiceCharacter.player !== Players.LocalPlayer;
		});
	}, [characters]);

	return (
		<>
			<VoiceCamera />

			{charactersExcludingSelf.map(({ player, model }) => (
				<VoiceCharacter key={player.Name} player={player} model={model} />
			))}
		</>
	);
}

================================================================================
// File: src/client/components/world/backdrop/backdrop-ball.tsx
================================================================================
import Object from "@rbxts/object-utils";
import { map, useCamera, useEventListener } from "@rbxts/pretty-react-hooks";
import React, { useBinding, useMemo } from "@rbxts/react";
import { RunService } from "@rbxts/services";
import { Image } from "client/components/ui/image";
import { useSeed } from "client/hooks";
import { images } from "shared/assets";
import { accents } from "shared/constants/palette";

interface BackdropBallProps {
	readonly smoothOffset: React.Binding<Vector2>;
}

/**
 * Constrains a value within a range by applying a modulo operation.
 */
function mod(value: number, min: number, max: number) {
	const range = max - min;
	return ((value - min) % range) + min;
}

export function BackdropBall({ smoothOffset }: BackdropBallProps) {
	const camera = useCamera();
	const seed = useSeed();
	const [timer, setTimer] = useBinding(0);

	const color = useMemo(() => {
		const colors = Object.values(accents);
		return colors[math.random(0, colors.size() - 1)];
	}, []);

	const style = useMemo(() => {
		const position = timer.map((t) => {
			const aspectRatio = camera.ViewportSize.X / camera.ViewportSize.Y;
			const offset = smoothOffset.getValue();

			const noiseX = map(math.noise(t, seed), -0.5, 0.5, -3, 4);
			const noiseY = map(math.noise(seed, t + 100), -0.5, 0.5, -3, 4);

			const x = mod(noiseX + 0.02 * offset.X, -1, 2);
			const y = mod(noiseY + 0.02 * offset.Y * aspectRatio, -1, 2);

			return new UDim2(x, 0, y, 0);
		});

		const size = timer.map((t) => {
			const diameter = map(math.noise(t + 100, seed), -0.5, 0.5, 1, 2);
			return new UDim2(diameter, 0, diameter, 0);
		});

		const transparency = timer.map((t) => {
			return map(math.noise(5 * t + 200, seed), -0.5, 0.5, 0.3, 0.8);
		});

		return { position, size, transparency };
	}, []);

	useEventListener(RunService.Heartbeat, (deltaTime) => {
		setTimer(timer.getValue() + 0.01 * deltaTime);
	});

	return (
		<Image
			image={images.ui.blur}
			imageColor={color}
			imageTransparency={style.transparency}
			scaleType="Fit"
			anchorPoint={new Vector2(0.5, 0.5)}
			size={style.size}
			position={style.position}
		/>
	);
}

================================================================================
// File: src/client/components/world/backdrop/backdrop.tsx
================================================================================
import React, { useEffect } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { Image } from "client/components/ui/image";
import { springs } from "client/constants/springs";
import { useSpring } from "client/hooks";
import { selectWorldCamera } from "client/store/world";
import { images } from "shared/assets";
import { fillArray } from "shared/utils/object-utils";

import { BackdropBall } from "./backdrop-ball";

export function Backdrop() {
	const world = useSelector(selectWorldCamera);
	const [smoothOffset, smoothOffsetSpring] = useSpring(world.offset);

	useEffect(() => {
		smoothOffsetSpring.setGoal(world.offset, springs.world);
	}, [world.offset]);

	return (
		<Image image={images.ui.backdrop} size={new UDim2(1, 0, 1, 0)}>
			{fillArray(20, (index) => (
				<BackdropBall key={`ball-${index}`} smoothOffset={smoothOffset} />
			))}
		</Image>
	);
}

================================================================================
// File: src/client/components/world/backdrop/index.ts
================================================================================
export * from "./backdrop";

================================================================================
// File: src/client/components/world/candy/candy-item.tsx
================================================================================
import { blend, lerp, map, useTimer } from "@rbxts/pretty-react-hooks";
import { composeBindings } from "@rbxts/pretty-react-hooks";
import React, { memo, useEffect, useMemo } from "@rbxts/react";
import { Image } from "client/components/ui/image";
import { Shadow } from "client/components/ui/shadow";
import { springs } from "client/constants/springs";
import { useRem, useSeed, useSpring } from "client/hooks";
import { images } from "shared/assets";
import { CandyType } from "shared/store/candy";
import { brighten } from "shared/utils/color-utils";
import { mapStrict } from "shared/utils/math-utils";

interface CandyItemProps {
	readonly variant: CandyType;
	readonly size: number;
	readonly point: Vector2;
	readonly color: Color3;
	readonly worldScale: React.Binding<number>;
	readonly eatenAt?: Vector2;
}

function CandyItemComponent({ variant, size, point, color, worldScale, eatenAt }: CandyItemProps) {
	const rem = useRem();
	const timer = useTimer();
	const seed = useSeed();

	const [pointSmooth, pointSpring] = useSpring(point);
	const [transition, transitionSpring] = useSpring(1);

	const { position, glow, transparency } = useMemo(() => {
		const position = timer.value.map((t) => {
			const noiseMultiplier = 1 - transition.getValue();
			const x = 4 * noiseMultiplier * math.noise(t, seed);
			const y = 4 * noiseMultiplier * math.noise(-seed, t);
			const point = pointSmooth.getValue();
			const scale = worldScale.getValue();

			return new UDim2(0, rem(point.X * scale + x), 0, rem(point.Y * scale + y));
		});

		const glow = timer.value.map((t) => {
			const diameter = map(math.noise(seed - 3 * t), -0.5, 0.5, 1, 4.5);
			return new UDim2(0, rem(diameter), 0, rem(diameter));
		});

		const transparency = composeBindings(timer.value, transition, (timer, transition) => {
			const flicker = map(math.noise(seed + 4 * timer), -0.5, 0.5, 0.4, 0.7);
			return lerp(flicker, 1, transition);
		});

		return { position, glow, transparency };
	}, [rem, worldScale]);

	const diameter = useMemo(() => {
		return variant === CandyType.Loot ? rem(2 + 1.5 * math.random()) : mapStrict(size, 1, 5, rem(0.75), rem(2));
	}, [variant, rem]);

	useEffect(() => {
		const position = eatenAt || point;

		pointSpring.setGoal(position, springs.world);
		transitionSpring.setGoal(eatenAt ? 1 : 0);
	}, [point, eatenAt]);

	return (
		<Image
			image={images.ui.circle}
			imageColor={brighten(color, 0.7, 0.7)}
			imageTransparency={transparency}
			size={new UDim2(0, diameter, 0, diameter)}
			position={position}
		>
			<Shadow
				shadowColor={brighten(color, 0.7)}
				shadowSize={glow}
				shadowTransparency={transparency.map((t) => blend(0.6, t))}
				shadowPosition={0}
			/>
		</Image>
	);
}

export const CandyItem = memo(CandyItemComponent);

================================================================================
// File: src/client/components/world/candy/candy.tsx
================================================================================
import React, { useBinding, useEffect, useMemo } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { Group } from "client/components/ui/group";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { selectWorldCamera } from "client/store/world";

import { CandyItem } from "./candy-item";
import { useCandyOnScreen } from "./use-candy-on-screen";

export function Candy() {
	const rem = useRem();
	const world = useSelector(selectWorldCamera);
	const candyOnScreen = useCandyOnScreen(world.offset, world.scale);

	const [smoothOffset, offsetSpring] = useSpring(world.offset);
	const [scale, setScale] = useBinding(world.scale);

	const children = useMemo(() => {
		let length = 0;

		return candyOnScreen.mapFiltered((entity) => {
			if (length > 200) {
				return;
			}

			length++;

			return (
				<CandyItem
					key={`candy-${entity.id}`}
					variant={entity.type}
					size={entity.size}
					point={entity.position}
					color={entity.color}
					eatenAt={entity.eatenAt}
					worldScale={scale}
				/>
			);
		});
	}, [candyOnScreen]);

	useEffect(() => {
		offsetSpring.setGoal(world.offset, springs.world);
	}, [world.offset]);

	useEffect(() => {
		setScale(world.scale);
	}, [world.scale]);

	return (
		<Group
			position={smoothOffset.map(
				(offset) => new UDim2(0.5, rem(offset.X * world.scale), 0.5, rem(offset.Y * world.scale)),
			)}
		>
			{children}
		</Group>
	);
}

================================================================================
// File: src/client/components/world/candy/index.ts
================================================================================
export * from "./candy";

================================================================================
// File: src/client/components/world/candy/use-candy-on-screen.ts
================================================================================
import { useCamera, usePrevious, useUnmountEffect } from "@rbxts/pretty-react-hooks";
import { useEffect, useMemo, useState } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { useRem } from "client/hooks";
import { CandyEntity, selectCandiesById } from "shared/store/candy";
import { Grid } from "shared/utils/grid";

const MARGIN = 8;

export function useCandyOnScreen(offset: Vector2, scale: number) {
	const rem = useRem();
	const camera = useCamera();

	const grid = useMemo(() => {
		return new Grid<{ id: string }>(5);
	}, []);

	const currentCandies = useSelector(selectCandiesById);
	const previousCandies = usePrevious(currentCandies) || {};

	const [candiesOnScreen, setCandiesOnScreen] = useState<CandyEntity[]>([]);

	useEffect(() => {
		for (const [, candy] of pairs(currentCandies)) {
			const previousCandy = previousCandies[candy.id];

			if (!previousCandy) {
				grid.insert(candy.position, { id: candy.id });
			} else if (candy.position !== previousCandy.position) {
				grid.replace(previousCandy.position, candy.position, { id: candy.id });
			}
		}

		for (const [, candy] of pairs(previousCandies)) {
			if (currentCandies[candy.id] === undefined) {
				grid.remove(candy.position);
			}
		}
	}, [currentCandies]);

	useEffect(() => {
		const viewport = camera.ViewportSize.div(rem(scale));
		const margin = new Vector2(MARGIN, MARGIN).div(scale);

		const boxPosition = viewport.div(2).add(offset).add(margin).mul(-1);
		const boxSize = viewport.add(margin.mul(2));

		const candiesOnScreen = grid.queryBox(boxPosition, boxSize).mapFiltered((point) => {
			return currentCandies[point.metadata.id];
		});

		setCandiesOnScreen(candiesOnScreen);
	}, [currentCandies, offset, scale, rem]);

	useUnmountEffect(() => {
		grid.clear();
	});

	return candiesOnScreen;
}

================================================================================
// File: src/client/components/world/index.ts
================================================================================
export * from "./world";

================================================================================
// File: src/client/components/world/snakes/constants.ts
================================================================================
export const SNAKE_ANGLE_OFFSET = math.rad(90);
export const SNAKE_ON_SCREEN_MARGIN = 16;

================================================================================
// File: src/client/components/world/snakes/index.ts
================================================================================
export * from "./constants";
export * from "./snakes";

================================================================================
// File: src/client/components/world/snakes/snake-head.tsx
================================================================================
import React, { useEffect, useMemo } from "@rbxts/react";
import { useSelectorCreator } from "@rbxts/react-reflex";
import { Group } from "client/components/ui/group";
import { Image } from "client/components/ui/image";
import { springs } from "client/constants/springs";
import { useContinuousAngle, useRem, useSpring } from "client/hooks";
import { selectWorldInputAngle } from "client/store/world";
import { getSnakeSkin, getSnakeSkinForTracer } from "shared/constants/skins";
import { subtractRadians } from "shared/utils/math-utils";

import { SNAKE_ANGLE_OFFSET } from "./constants";
import { SnakeEffectBinding, SnakeLineBinding } from "./use-snake-bindings";
import { useTracerStyle } from "./use-tracer-style";

interface SnakeHeadProps extends React.PropsWithChildren {
	readonly angle: number;
	readonly desiredAngle: number;
	readonly line: SnakeLineBinding;
	readonly effects: SnakeEffectBinding;
	readonly skinId: string;
	readonly isClient: boolean;
}

export function SnakeHead({ angle, desiredAngle, line, effects, skinId, isClient, children }: SnakeHeadProps) {
	const inputAngle = useSelectorCreator(selectWorldInputAngle, isClient);

	if (isClient) {
		desiredAngle = inputAngle;
	}

	const skin = getSnakeSkin(skinId);
	const tracerSkin = getSnakeSkinForTracer(skinId, 0);

	const rem = useRem();
	const currentAngle = useContinuousAngle(angle);
	const angleDifference = useContinuousAngle(subtractRadians(desiredAngle, currentAngle));
	const style = useTracerStyle(line, effects, 0, skin.headColor || tracerSkin.tint);

	const [rotation, rotationSpring] = useSpring(math.deg(currentAngle + SNAKE_ANGLE_OFFSET));
	const [look, lookSpring] = useSpring(0);

	const { size, position } = useMemo(() => {
		const size = line.map(({ diameter }) => {
			return new UDim2(0, rem(diameter), 0, rem(diameter));
		});

		const position = line.map(({ toX, toY }) => {
			return new UDim2(0, rem(toX), 0, rem(toY));
		});

		return { size, position };
	}, [rem]);

	useEffect(() => {
		rotationSpring.setGoal(math.deg(currentAngle + SNAKE_ANGLE_OFFSET), springs.world);
		lookSpring.setGoal(math.deg(angleDifference));
	}, [currentAngle, angleDifference]);

	return (
		<Group anchorPoint={new Vector2(0.5, 0.5)} size={size} position={position}>
			<Image
				image={skin.headTexture ?? tracerSkin.texture}
				imageColor={style.color}
				imageTransparency={style.transparency}
				scaleType="Slice"
				sliceCenter={new Rect(skin.size.div(2), skin.size.div(2))}
				sliceScale={4}
				size={new UDim2(1, 0, 1, 0)}
				rotation={rotation}
			>
				<Image
					image={skin.eyeTextureRight}
					imageTransparency={style.transparency}
					size={new UDim2(0.45, 0, 0.45, 0)}
					position={new UDim2(0.5, 0, 0.1, 0)}
					rotation={look}
				/>

				<Image
					image={skin.eyeTextureLeft}
					imageTransparency={style.transparency}
					anchorPoint={new Vector2(1, 0)}
					size={new UDim2(0.45, 0, 0.45, 0)}
					position={new UDim2(0.5, 0, 0.1, 0)}
					rotation={look}
				/>
			</Image>

			{children}
		</Group>
	);
}

================================================================================
// File: src/client/components/world/snakes/snake-name-tag.tsx
================================================================================
import { useDebounceState, usePrevious } from "@rbxts/pretty-react-hooks";
import React, { useEffect, useMemo, useRef } from "@rbxts/react";
import { Frame } from "client/components/ui/frame";
import { Shadow } from "client/components/ui/shadow";
import { Text } from "client/components/ui/text";
import { Transition } from "client/components/ui/transition";
import { fonts } from "client/constants/fonts";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { palette } from "shared/constants/palette";
import { getSnakeSkinForTracer } from "shared/constants/skins";

interface SnakeNameTagProps {
	readonly name: string;
	readonly head: Vector2;
	readonly headOffset: Vector2;
	readonly angle: number;
	readonly scale: number;
	readonly radius: number;
	readonly skin: string;
	readonly visible: boolean;
}

const TEXT_PADDING = 1;
const CANVAS_MARGIN = 2;
const TAIL_SIZE = 0.125;

/**
 * Specify the minimum brightness for a color.
 */
function minBrightness(color: Color3, min: number) {
	const [h, s, v] = Color3.toHSV(color);
	return Color3.fromHSV(h, s, math.max(v, min));
}

export function SnakeNameTag({ name, head, headOffset, angle, scale, radius, skin, visible }: SnakeNameTagProps) {
	const rem = useRem();
	const previousHead = usePrevious(head) || head;
	const { tint } = getSnakeSkinForTracer(skin, 0);

	const currentSide = useRef(1);
	const [side, setSide] = useDebounceState(1, { wait: 2 });
	const [sideTransition, sideTransitionSpring] = useSpring(1);

	const [nameSize, nameSizeSpring] = useSpring(Vector2.one);
	const [nameHeight, nameHeightSpring] = useSpring(0);
	const [nameRotation, nameRotationSpring] = useSpring(0);
	const [nameTransparency, nameTransparencySpring] = useSpring(1);

	const { size, position, tail } = useMemo(() => {
		const size = nameSize.map(({ X, Y }) => {
			const width = X + rem((TEXT_PADDING + CANVAS_MARGIN) * 2);
			const height = Y + rem((TEXT_PADDING + CANVAS_MARGIN) * 2);
			return new UDim2(0, width, 0, height);
		});

		const position = nameHeight.map((height) => {
			return new UDim2(0.5, 0, 0.5, rem(height));
		});

		const tail = sideTransition.map((side) => {
			return new UDim2(0.5, 0, 1 - side, rem(TAIL_SIZE * math.sign(side - 0.5)));
		});

		return { size, position, tail };
	}, [rem]);

	// flip the side of the head this component is on when the snake
	// might overlap itself
	useEffect(() => {
		const angleConstrained = angle % (2 * math.pi);
		const nextSide = angleConstrained < math.rad(180) ? 1 : -1;

		if (visible && currentSide.current !== nextSide) {
			currentSide.current = nextSide;
			setSide(nextSide);
		}
	}, [angle, visible]);

	// without a separate effect, this may run regardless of whether
	// the debounce is still waiting
	useEffect(() => {
		sideTransitionSpring.setGoal(math.max(side, 0));
	}, [side]);

	useEffect(() => {
		const height = scale * radius * 1.25 + (TEXT_PADDING + 2);
		nameHeightSpring.setGoal(height * side, { tension: 150, friction: 18 });
	}, [angle, radius, scale, side]);

	// rotate the name tag to simulate dragging behind the snake
	useEffect(() => {
		const rotation = math.clamp(30 * (head.X - previousHead.X), -45, 45);
		nameRotationSpring.setGoal(rotation * side, { tension: 150, friction: 18 });
	}, [head, previousHead, headOffset, side]);

	useEffect(() => {
		nameTransparencySpring.setGoal(visible ? 0 : 1, springs.slow);
	}, [visible]);

	return (
		<Transition
			groupTransparency={nameTransparency}
			anchorPoint={new Vector2(0.5, 0.5)}
			size={size}
			position={position}
			rotation={nameRotation}
			zIndex={0}
		>
			<uipadding
				PaddingTop={new UDim(0, rem(CANVAS_MARGIN))}
				PaddingBottom={new UDim(0, rem(CANVAS_MARGIN))}
				PaddingLeft={new UDim(0, rem(CANVAS_MARGIN))}
				PaddingRight={new UDim(0, rem(CANVAS_MARGIN))}
			/>

			<Shadow shadowBlur={0.75} shadowColor={palette.crust} shadowPosition={rem(0.5)} shadowTransparency={0.5} />

			<Frame
				backgroundColor={palette.surface0}
				cornerRadius={new UDim(0, rem(2 * TAIL_SIZE))}
				anchorPoint={new Vector2(0.5, 0.5)}
				size={new UDim2(0, rem(1), 0, rem(1))}
				position={tail}
				rotation={45}
			/>

			<Frame
				backgroundColor={palette.surface0}
				cornerRadius={new UDim(0, rem(0.75))}
				size={new UDim2(1, 0, 1, 0)}
			/>

			<Text
				font={fonts.inter.medium}
				text={name}
				textSize={rem(1.5)}
				textColor={minBrightness(tint, 0.5)}
				size={new UDim2(1, 0, 1, 0)}
				change={{
					TextBounds: (rbx) => {
						nameSizeSpring.setGoal(rbx.TextBounds, springs.responsive);
					},
				}}
			/>
		</Transition>
	);
}

================================================================================
// File: src/client/components/world/snakes/snake-tracer.tsx
================================================================================
import { blend, lerp } from "@rbxts/pretty-react-hooks";
import React, { memo, useMemo } from "@rbxts/react";
import { useRem } from "client/hooks";
import { images } from "shared/assets";
import { getSnakeSkin, getSnakeSkinForTracer } from "shared/constants/skins";

import { SnakeEffectBinding, SnakeLineBinding } from "./use-snake-bindings";
import { useTracerStyle } from "./use-tracer-style";

interface SnakeTracerProps {
	readonly line: SnakeLineBinding;
	readonly effects: SnakeEffectBinding;
	readonly skinId: string;
	readonly index: number;
}

function SnakeTracerComponent({ line, effects, skinId, index }: SnakeTracerProps) {
	const skin = getSnakeSkin(skinId);
	const tracerSkin = getSnakeSkinForTracer(skinId, index);

	const rem = useRem();
	const style = useTracerStyle(line, effects, index, tracerSkin.tint, tracerSkin.boostTint);

	const glowStyle = useMemo(() => {
		const binding = style.boostTimer.map(() => {
			return effects.getValue();
		});

		const transparency = binding.map(({ boost, dead }) => {
			return blend(1 - boost, dead, 0.3);
		});

		const color = (style.boostColor || style.color).map((color) => {
			return color.Lerp(new Color3(), 0.1);
		});

		const size = binding.map(({ boost, dead }) => {
			const alpha = lerp(boost, 0, dead);
			const diameter = line.getValue().diameter;
			return new UDim2(1, 0, 1, 0).Lerp(new UDim2(1, rem(diameter + 5), 1, rem(diameter + 5)), alpha);
		});

		const visible = binding.map(({ boost, dead }) => {
			const alpha = lerp(boost, 0, dead);
			return alpha > 0;
		});

		return { transparency, color, size, visible };
	}, [style, rem, skin]);

	return (
		<imagelabel
			Image={tracerSkin.texture}
			ImageColor3={style.color}
			ImageTransparency={style.transparency}
			ScaleType="Slice"
			SliceCenter={new Rect(skin.size.div(2), skin.size.div(2))}
			SliceScale={4}
			BackgroundTransparency={1}
			AnchorPoint={new Vector2(0.5, 0.5)}
			Size={style.size}
			Position={style.position}
			Rotation={style.rotation}
			ZIndex={-index - 1}
		>
			{style.boostActive && (
				<imagelabel
					Image={images.ui.blur}
					ImageColor3={glowStyle.color}
					ImageTransparency={glowStyle.transparency}
					ScaleType="Slice"
					SliceCenter={new Rect(256, 256, 256, 256)}
					BackgroundTransparency={1}
					AnchorPoint={new Vector2(0.5, 0.5)}
					Size={glowStyle.size}
					Position={new UDim2(0.5, 0, 0.5, 0)}
				/>
			)}
		</imagelabel>
	);
}

export const SnakeTracer = memo(SnakeTracerComponent);

================================================================================
// File: src/client/components/world/snakes/snake.tsx
================================================================================
import React, { memo, useEffect, useMemo } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { selectSkinOverride } from "client/store/menu";
import { USER_NAME } from "shared/constants/core";
import { describeSnakeFromScore } from "shared/store/snakes";

import { SnakeHead } from "./snake-head";
import { SnakeNameTag } from "./snake-name-tag";
import { SnakeTracer } from "./snake-tracer";
import { SnakeBindings, useSnakeBindings } from "./use-snake-bindings";
import { SnakeOnScreen } from "./use-snakes-on-screen";

interface SnakeProps {
	readonly snakeOnScreen: SnakeOnScreen;
	readonly scale: number;
	readonly offset: Vector2;
	readonly subject?: string;
	readonly setSnakeBindings: (bindings: SnakeBindings) => void;
}

function SnakeComponent({ snakeOnScreen, scale, offset, subject, setSnakeBindings }: SnakeProps) {
	const snake = snakeOnScreen.snake;
	const snakeBindings = useSnakeBindings(snakeOnScreen, scale, snake.id === subject);
	const snakeSkinOverride = useSelector(selectSkinOverride);

	const radius = describeSnakeFromScore(snake.score).radius;
	const distance = snake.head.sub(offset.mul(-1)).Magnitude;
	const skin = snake.id !== subject ? snake.skin : (snakeSkinOverride ?? snake.skin);
	const showNameTag = snake.id !== subject && !snake.dead && distance < 16;

	const children = useMemo(() => {
		return snakeOnScreen.tracers.mapFiltered((tracer) => {
			const index = tracer.index;
			const bindings = snakeBindings.bindings.get(index);

			if (!bindings) {
				return;
			}

			return (
				<SnakeTracer
					key={`tracer-${index}`}
					line={bindings.line}
					effects={bindings.effects}
					index={index}
					skinId={skin}
				/>
			);
		});
	}, [snakeOnScreen]);

	useEffect(() => {
		if (snake.id === subject) {
			setSnakeBindings(snakeBindings);
		}
	}, [snakeBindings, subject]);

	return (
		<>
			{children}
			{snakeOnScreen.head && (
				<SnakeHead
					angle={snake.angle}
					desiredAngle={snake.desiredAngle}
					line={snakeBindings.head.line}
					effects={snakeBindings.head.effects}
					skinId={skin}
					isClient={snake.id === USER_NAME}
				>
					<SnakeNameTag
						name={snake.name}
						head={snake.head}
						headOffset={offset}
						angle={snake.angle}
						radius={radius}
						scale={scale}
						skin={skin}
						visible={showNameTag}
					/>
				</SnakeHead>
			)}
		</>
	);
}

export const Snake = memo(SnakeComponent);

================================================================================
// File: src/client/components/world/snakes/snakes.tsx
================================================================================
import { composeBindings, toBinding } from "@rbxts/pretty-react-hooks";
import React, { useCallback, useMemo, useRef, useState } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { Group } from "client/components/ui/group";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { selectWorldCamera } from "client/store/world";

import { Snake } from "./snake";
import { SnakeBindings } from "./use-snake-bindings";
import { useSnakesOnScreen } from "./use-snakes-on-screen";

export function Snakes() {
	const rem = useRem();
	const world = useSelector(selectWorldCamera);
	const snakesOnScreen = useSnakesOnScreen(world.scale, world.offset);
	const previousOffset = useRef(new UDim2(0.5, 0, 0.5, 0));

	const [transition, transitionSpring] = useSpring(1);
	const [snakeBindings, setSnakeBindings] = useState<SnakeBindings>();

	const offset = useMemo((): React.Binding<UDim2> => {
		if (!snakeBindings) {
			return toBinding(new UDim2(0.5, 0, 0.5, 0));
		}

		return composeBindings(snakeBindings.head.line, transition, ({ toX, toY }, alpha) => {
			const offset = new UDim2(0.5, rem(-toX), 0.5, rem(-toY));
			return alpha !== 1 ? previousOffset.current.Lerp(offset, alpha) : offset;
		});
	}, [rem, snakeBindings]);

	const onSubjectChanged = useCallback(
		(bindings: SnakeBindings) => {
			// Manually transition from the current subject to the next
			if (snakeBindings && snakeBindings !== bindings) {
				previousOffset.current = offset.getValue();
				transitionSpring.setGoal(1, {
					...springs.world,
					position: 0,
					precision: 1e-8,
				});
			}

			setSnakeBindings(bindings);
		},
		[offset],
	);

	return (
		<Group position={offset} zIndex={2}>
			{snakesOnScreen.map((snakeOnScreen) => {
				return (
					<Snake
						key={snakeOnScreen.snake.id}
						snakeOnScreen={snakeOnScreen}
						scale={world.scale}
						offset={world.offset}
						subject={world.subject}
						setSnakeBindings={onSubjectChanged}
					/>
				);
			})}
		</Group>
	);
}

================================================================================
// File: src/client/components/world/snakes/use-snake-bindings.ts
================================================================================
import React, { createBinding, useEffect, useMemo, useRef } from "@rbxts/react";
import { useSelectorCreator } from "@rbxts/react-reflex";
import { createSpring } from "@rbxts/ripple";
import { springs } from "client/constants/springs";
import { describeSnakeFromScore, selectSnakeIsBoosting, SnakeEntity } from "shared/store/snakes";

import { SnakeOnScreen } from "./use-snakes-on-screen";

export type SnakeLineBinding = React.Binding<LineSpringValues>;

export type SnakeEffectBinding = React.Binding<EffectSpringValues>;

export interface SnakeBindings {
	readonly bindings: Map<number, TracerBindingController>;
	readonly head: TracerBindingController;
	readonly update: (snakeOnScreen: SnakeOnScreen, scale: number, boosting: boolean, isSubject: boolean) => void;
	readonly destroy: () => void;
}

interface TracerBindingController {
	readonly index: number;
	readonly line: SnakeLineBinding;
	readonly effects: SnakeEffectBinding;
	readonly update: (snake: SnakeEntity, scale: number, boosting: boolean, isSubject: boolean) => void;
	readonly destroy: () => void;
}

type LineSpringValues = {
	readonly diameter: number;
	readonly fromX: number;
	readonly fromY: number;
	readonly toX: number;
	readonly toY: number;
};

type EffectSpringValues = {
	readonly boost: number;
	readonly dead: number;
};

function getSize(snake: SnakeEntity) {
	return describeSnakeFromScore(snake.score).radius * 2;
}

function createSnakeBindings(snake: SnakeEntity, scale: number): SnakeBindings {
	const tracerBindings = new Map<number, TracerBindingController>();

	const createTracerBindings = (
		snake: SnakeEntity,
		index: number,
		scale: number,
		tracer: Vector2,
	): TracerBindingController => {
		const lineSpring = createSpring<LineSpringValues>({
			diameter: getSize(snake) * scale,
			fromX: tracer.X * scale,
			fromY: tracer.Y * scale,
			toX: tracer.X * scale,
			toY: tracer.Y * scale,
		});

		const effectSpring = createSpring<EffectSpringValues>({
			boost: snake.boost ? 1 : 0,
			dead: snake.dead ? 1 : 0,
		});

		const [line, setLine] = createBinding(lineSpring.getPosition());
		const [effects, setEffects] = createBinding(effectSpring.getPosition());

		lineSpring.onChange(setLine);
		lineSpring.start();

		effectSpring.configure(springs.slow);
		effectSpring.onChange(setEffects);
		effectSpring.start();

		const update = (snake: SnakeEntity, scale: number, boosting: boolean, isSubject: boolean) => {
			const tracer = snake.tracers[index];
			const previousTracer = snake.tracers[index - 1] || snake.head;

			if (!tracer || !previousTracer) {
				return;
			}

			const diameter = getSize(snake) * scale;

			lineSpring.setPosition({ diameter });
			lineSpring.configure(isSubject ? springs.world : springs.default);
			lineSpring.setGoal({
				diameter,
				fromX: tracer.X * scale,
				fromY: tracer.Y * scale,
				toX: previousTracer.X * scale,
				toY: previousTracer.Y * scale,
			});

			effectSpring.setGoal({
				boost: boosting ? 1 : 0,
				dead: snake.dead ? 1 : 0,
			});
		};

		const destroy = () => {
			lineSpring.destroy();
			effectSpring.destroy();
		};

		return { index, line, effects, update, destroy };
	};

	const headBinding = createTracerBindings(snake, 0, scale, snake.head);

	const update = ({ snake, tracers }: SnakeOnScreen, scale: number, boosting: boolean, isSubject: boolean) => {
		headBinding.update(snake, scale, boosting, isSubject);

		tracers.forEach((tracer) => {
			let tracerBinding = tracerBindings.get(tracer.index);

			if (!tracerBinding) {
				tracerBinding = createTracerBindings(snake, tracer.index, scale, tracer.position);
				tracerBindings.set(tracer.index, tracerBinding);
			}

			tracerBinding.update(snake, scale, boosting, isSubject);
		});

		// remove tracers that are no longer on screen
		for (const [key, tracerBinding] of tracerBindings) {
			const tracer = tracers.find((tracer) => {
				return tracer.index === tracerBinding.index;
			});

			if (!tracer) {
				tracerBinding.destroy();
				tracerBindings.delete(key);
			}
		}
	};

	const destroy = () => {
		for (const [, tracerBinding] of tracerBindings) {
			tracerBinding.destroy();
		}

		headBinding.destroy();
		tracerBindings.clear();
	};

	return { bindings: tracerBindings, head: headBinding, update, destroy };
}

export function useSnakeBindings(snakeOnScreen: SnakeOnScreen, scale: number, isSubject: boolean): SnakeBindings {
	const boosting = useSelectorCreator(selectSnakeIsBoosting, snakeOnScreen.snake.id);
	const skipNext = useRef(false);

	const bindings = useMemo(() => {
		return createSnakeBindings(snakeOnScreen.snake, scale);
	}, []);

	useEffect(() => {
		// if this is not the subject, skip every other frame
		if (!isSubject) {
			skipNext.current = !skipNext.current;

			if (skipNext.current) {
				return;
			}
		}

		bindings.update(snakeOnScreen, scale, boosting, isSubject);
	}, [snakeOnScreen, boosting, isSubject]);

	useEffect(() => {
		return () => {
			bindings.destroy();
		};
	}, []);

	return bindings;
}

================================================================================
// File: src/client/components/world/snakes/use-snakes-on-screen.ts
================================================================================
import { useCamera, useUnmountEffect } from "@rbxts/pretty-react-hooks";
import { useEffect, useMemo, useState } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { useRem } from "client/hooks";
import { selectSnakesById, SnakeEntity } from "shared/store/snakes";
import { Grid } from "shared/utils/grid";

import { SNAKE_ON_SCREEN_MARGIN } from "./constants";

export interface SnakeOnScreen {
	readonly snake: SnakeEntity;
	readonly tracers: SnakeTracer[];
	head?: SnakeTracer;
}

export interface SnakeTracer {
	readonly position: Vector2;
	readonly index: number;
}

interface TracerCell {
	readonly id: string;
	readonly type: "tracer" | "head";
	readonly index: number;
}

export function useSnakesOnScreen(scale: number, offset: Vector2) {
	const rem = useRem();
	const camera = useCamera();
	const snakes = useSelector(selectSnakesById);

	const [onScreen, setOnScreen] = useState<SnakeOnScreen[]>([]);

	const grid = useMemo(() => {
		return new Grid<TracerCell>(10);
	}, []);

	useEffect(() => {
		grid.clear();

		for (const [, snake] of pairs(snakes)) {
			grid.insert(snake.head, { id: snake.id, type: "head", index: -1 });

			snake.tracers.forEach((tracer, index) => {
				grid.insert(tracer, { id: snake.id, type: "tracer", index });
			});
		}
	}, [snakes]);

	useEffect(() => {
		// query on-screen snakes and update the state
		const viewport = camera.ViewportSize.div(rem(scale));
		const margin = new Vector2(SNAKE_ON_SCREEN_MARGIN, SNAKE_ON_SCREEN_MARGIN).div(scale);

		const boxPosition = viewport.div(2).add(offset).add(margin).mul(-1);
		const boxSize = viewport.add(margin.mul(2));

		const snakesOnScreenById = new Map<string, SnakeOnScreen>();
		const snakesOnScreen: SnakeOnScreen[] = [];

		for (const point of grid.queryBox(boxPosition, boxSize)) {
			const snake = snakes[point.metadata.id];

			if (!snake) {
				continue;
			}

			const snakeOnScreen = snakesOnScreenById.get(point.metadata.id);
			const snakeTracer: SnakeTracer = {
				position: point.position,
				index: point.metadata.index,
			};

			if (snakeOnScreen) {
				if (snakeTracer.index === -1) {
					snakeOnScreen.head = snakeTracer;
					continue;
				}

				// insert the tracer at the correct index to end up with
				// a sorted array of tracers by index
				const insertAt = snakeOnScreen.tracers.findIndex((tracer) => {
					return tracer.index > snakeTracer.index;
				});

				if (insertAt === -1) {
					snakeOnScreen.tracers.push(snakeTracer);
				} else {
					snakeOnScreen.tracers.insert(insertAt, snakeTracer);
				}

				continue;
			}

			const newSnakeOnScreen: SnakeOnScreen = {
				snake,
				tracers: snakeTracer.index === -1 ? [] : [snakeTracer],
				head: snakeTracer.index === -1 ? snakeTracer : undefined,
			};

			snakesOnScreen.push(newSnakeOnScreen);
			snakesOnScreenById.set(point.metadata.id, newSnakeOnScreen);
		}

		setOnScreen(snakesOnScreen);
	}, [snakes, scale, offset, rem]);

	useUnmountEffect(() => {
		grid.clear();
	});

	return onScreen;
}

================================================================================
// File: src/client/components/world/snakes/use-tracer-style.ts
================================================================================
import { useBindingState, useTimer } from "@rbxts/pretty-react-hooks";
import { useEffect, useMemo } from "@rbxts/react";
import { setTimeout } from "@rbxts/set-timeout";
import { useRem } from "client/hooks";
import { brighten } from "shared/utils/color-utils";

import { SNAKE_ANGLE_OFFSET } from "./constants";
import { SnakeEffectBinding, SnakeLineBinding } from "./use-snake-bindings";

function redden(color: Color3) {
	return color.Lerp(Color3.fromRGB(255, 0, 0), 0.3);
}

export function useTracerStyle(
	line: SnakeLineBinding,
	effects: SnakeEffectBinding,
	index: number,
	tint: Color3,
	boostTint?: Color3,
) {
	const rem = useRem();
	const boostTimer = useTimer();
	const boostActive = useBindingState(effects.map(({ boost }) => boost > 0.01));

	// keep a timer running while boosting to keep animations going
	useEffect(() => {
		if (boostActive) {
			boostTimer.start();
			return;
		}

		return setTimeout(() => {
			boostTimer.stop();
		}, 1);
	}, [boostActive]);

	return useMemo(() => {
		const size = line.map(({ diameter, fromX, fromY, toX, toY }) => {
			const length = new Vector2(fromX - toX, fromY - toY).Magnitude;
			return new UDim2(0, rem(diameter), 0, rem(diameter + length));
		});

		const position = line.map(({ fromX, fromY, toX, toY }) => {
			return new UDim2(0, rem((fromX + toX) / 2), 0, rem((fromY + toY) / 2));
		});

		const rotation = line.map(({ fromX, fromY, toX, toY }) => {
			return math.deg(math.atan2(toY - fromY, toX - fromX) + SNAKE_ANGLE_OFFSET);
		});

		const color = boostTimer.value.map(() => {
			const { boost, dead } = effects.getValue();

			const time = os.clock();
			const highlight = math.sin(15 * time - 0.8 * index);

			return tint.Lerp(brighten(tint, highlight), boost).Lerp(redden(tint), dead);
		});

		const boostColor =
			boostTint &&
			boostTimer.value.map(() => {
				const { boost } = effects.getValue();

				const time = os.clock();
				const highlight = math.sin(15 * time - 0.8 * index);

				return boostTint.Lerp(brighten(boostTint, highlight), boost);
			});

		const transparency = effects.map(({ dead }) => {
			return dead;
		});

		return {
			size,
			position,
			rotation,
			color,
			boostColor,
			transparency,
			boostTimer: boostTimer.value,
			boostActive,
		};
	}, [line, effects, tint, rem, boostActive]);
}

================================================================================
// File: src/client/components/world/world-border.tsx
================================================================================
import React, { useEffect, useMemo } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { CanvasGroup } from "client/components/ui/canvas-group";
import { Frame } from "client/components/ui/frame";
import { Group } from "client/components/ui/group";
import { Image } from "client/components/ui/image";
import { springs } from "client/constants/springs";
import { useRem, useSpring } from "client/hooks";
import { selectWorldCamera } from "client/store/world";
import { images } from "shared/assets";
import { WORLD_BOUNDS } from "shared/constants/core";
import { palette } from "shared/constants/palette";

export function WorldBorder() {
	const rem = useRem();
	const world = useSelector(selectWorldCamera);

	const [worldCamera, worldCameraSpring] = useSpring({
		x: -world.offset.X,
		y: -world.offset.Y,
		scale: world.scale,
	});

	// Render a world border by getting the direction from the world origin
	// and creating a rectangle WORLD_BOUNDS units away from the origin
	const { position, rotation } = useMemo(() => {
		const position = worldCamera.map(({ x, y, scale }) => {
			const offset = new Vector2(x, y);
			const direction = offset !== Vector2.zero ? offset.Unit : new Vector2(1, 0);
			const position = direction.mul(rem(WORLD_BOUNDS * scale)).sub(rem(offset.mul(scale)));
			return new UDim2(0.5, position.X, 0.5, position.Y);
		});

		const rotation = worldCamera.map(({ x, y }) => {
			const offset = new Vector2(x, y);
			const direction = offset !== Vector2.zero ? offset.Unit : new Vector2(1, 0);
			return math.deg(math.atan2(direction.Y, direction.X));
		});

		return { position, rotation };
	}, [rem]);

	useEffect(() => {
		worldCameraSpring.setGoal(
			{
				x: -world.offset.X,
				y: -world.offset.Y,
				scale: world.scale,
			},
			springs.world,
		);
	}, [world]);

	return (
		<Group
			anchorPoint={new Vector2(0.5, 0.5)}
			size={new UDim2(0, rem(150), 0, rem(150))}
			position={position}
			rotation={rotation}
			zIndex={3}
		>
			<Frame
				backgroundColor={palette.red}
				backgroundTransparency={0.5}
				size={new UDim2(0.5, rem(-2), 1, 0)}
				position={new UDim2(0.5, rem(2), 0, 0)}
			>
				<uistroke Color={palette.red} Thickness={rem(2)} Transparency={0.5} />

				<CanvasGroup size={new UDim2(1, 0, 1, 0)} backgroundTransparency={1}>
					<Image
						image={images.ui.tile_stripes}
						imageColor={palette.black}
						imageTransparency={0.75}
						scaleType="Tile"
						tileSize={new UDim2(0, rem(4), 0, rem(4))}
						anchorPoint={new Vector2(1, 0.5)}
						size={new UDim2(0, rem(256), 0, rem(512))}
						position={new UDim2(1, 0, 0.5, 0)}
						rotation={rotation.map((r) => -r)}
					/>
				</CanvasGroup>
			</Frame>
		</Group>
	);
}

================================================================================
// File: src/client/components/world/world-sounds.tsx
================================================================================
import { useDebounceEffect, usePrevious } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { useSelector, useSelectorCreator } from "@rbxts/react-reflex";
import { selectSnakeFromWorldSubject } from "client/store/world";
import { playSound, sounds } from "shared/assets";
import { selectHasLocalSnake, selectSnakeIsBoosting } from "shared/store/snakes";

const ERROR_SOUNDS = [sounds.error_1, sounds.error_2, sounds.error_3];

const random = new Random();

export function WorldSounds() {
	const snake = useSelector(selectSnakeFromWorldSubject);
	const boosting = useSelectorCreator(selectSnakeIsBoosting, snake?.id ?? "");
	const hasLocalSnake = useSelector(selectHasLocalSnake);
	const previousScore = usePrevious(snake?.score);

	const volume = hasLocalSnake ? 0.5 : 0.25;

	// Death sound
	useEffect(() => {
		if (snake?.dead) {
			const index = random.NextInteger(0, ERROR_SOUNDS.size() - 1);
			playSound(ERROR_SOUNDS[index], { volume: 2 * volume });
		}
	}, [snake?.dead]);

	// Spawn sound
	useEffect(() => {
		if (hasLocalSnake) {
			playSound(sounds.start_game);
		}
	}, [hasLocalSnake]);

	// Candy eat sound
	useEffect(() => {
		if ((snake?.score ?? 0) > (previousScore ?? 0)) {
			const speed = random.NextNumber(0.87, 1);
			playSound(sounds.whoosh, { volume: 0.6 * volume, speed });
		}
	}, [snake?.score]);

	// Boost sound
	useDebounceEffect(
		() => {
			if (snake) {
				playSound(boosting ? sounds.boost_start : sounds.boost_stop, { volume });
			}
		},
		[boosting],
		{ wait: 0.25, leading: true },
	);

	return <></>;
}

================================================================================
// File: src/client/components/world/world-subject.tsx
================================================================================
import { useInterval } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { useStore } from "client/hooks";
import { selectSnakeSpectated } from "client/store/world";
import { cycleNextSnake, selectLocalSnake } from "shared/store/snakes";

export function WorldSubject() {
	const store = useStore();
	const snakeClient = useSelector(selectLocalSnake);
	const snakeSpectated = useSelector(selectSnakeSpectated);

	useEffect(() => {
		if (snakeClient) {
			store.setWorldSubject(snakeClient.id);
		} else if (snakeSpectated) {
			store.setWorldSubject(snakeSpectated.id);
		}
	}, [snakeClient?.id, snakeSpectated?.id]);

	useInterval(() => {
		if (!snakeSpectated) {
			store.setWorldSpectating(store.getState(cycleNextSnake("")));
		}
	}, 1);

	return <></>;
}

================================================================================
// File: src/client/components/world/world.tsx
================================================================================
import React from "@rbxts/react";
import { Group } from "client/components/ui/group";
import { RemProvider } from "client/providers/rem-provider";

import { Backdrop } from "./backdrop";
import { Candy } from "./candy";
import { Snakes } from "./snakes";
import { WorldBorder } from "./world-border";
import { WorldSounds } from "./world-sounds";
import { WorldSubject } from "./world-subject";

export function World() {
	return (
		<RemProvider minimumRem={6}>
			<Group>
				<Backdrop />
				<Candy />
				<Snakes />
				<WorldSubject />
				<WorldBorder />
				<WorldSounds />
			</Group>
		</RemProvider>
	);
}

================================================================================
// File: src/client/constants/fonts.ts
================================================================================
export const fonts = {
	inter: {
		regular: new Font("rbxassetid://12187365364"),
		medium: new Font("rbxassetid://12187365364", Enum.FontWeight.Medium),
		bold: new Font("rbxassetid://12187365364", Enum.FontWeight.Bold),
	},
	robotoMono: {
		regular: Font.fromEnum(Enum.Font.RobotoMono),
	},
};

================================================================================
// File: src/client/constants/springs.ts
================================================================================
import { Animatable, config, SpringOptions } from "@rbxts/ripple";

export const springs = {
	...config,
	bubbly: { tension: 400, friction: 14 },
	responsive: { tension: 400 },
	gentle: { tension: 250, friction: 30 },
	world: { tension: 180, friction: 30 },
} satisfies { [config: string]: SpringOptions<Animatable> };

================================================================================
// File: src/client/hooks/index.ts
================================================================================
export * from "./use-character";
export * from "./use-continuous-angle";
export * from "./use-defined";
export * from "./use-input-device";
export * from "./use-orientation";
export * from "./use-premium";
export * from "./use-product-price";
export * from "./use-rem";
export * from "./use-seed";
export * from "./use-store";
export * from "@rbxts/react-ripple";

================================================================================
// File: src/client/hooks/use-character.ts
================================================================================
import { useAsync, useEventListener } from "@rbxts/pretty-react-hooks";
import { useState } from "@rbxts/react";
import { Character, promiseCharacter } from "shared/utils/player-utils";

export function useCharacter(player: Player): Character | undefined {
	const [model, setModel] = useState(player.Character);

	const [character] = useAsync(async () => {
		return model && promiseCharacter(model);
	}, [model]);

	useEventListener(player.CharacterAdded, (character) => {
		setModel(character);
	});

	useEventListener(player.CharacterRemoving, () => {
		setModel(undefined);
	});

	return character;
}

================================================================================
// File: src/client/hooks/use-continuous-angle.ts
================================================================================
import { useMemo, useRef } from "@rbxts/react";
import { subtractRadians } from "shared/utils/math-utils";

/**
 * Returns a continuous angle that is always the shortest distance from the
 * previous angle. Used to prevent angles looping around when they reach
 * 360 degrees.
 */
export function useContinuousAngle(angle: number) {
	const previousAngle = useRef(angle);
	const continuousAngle = useRef(angle);

	useMemo(() => {
		continuousAngle.current += subtractRadians(angle, previousAngle.current);
		previousAngle.current = angle;
	}, [angle]);

	return continuousAngle.current;
}

================================================================================
// File: src/client/hooks/use-defined.ts
================================================================================
import { useLatest } from "@rbxts/pretty-react-hooks";

/**
 * Returns true if the two values are equal and the new value is defined.
 * @param a The previous value.
 * @param b The new value.
 * @returns True if the two values are equal and the new value is defined.
 */
function isEqualOrUndefined(a: unknown, b: unknown) {
	return a === b || b === undefined;
}

/**
 * Returns the latest defined value.
 * @param value The value to use.
 * @returns A non-nullable value.
 */
export function useDefined<T>(value: T | undefined, initialValue: T): T;
export function useDefined<T>(value: T, initialValue?: T): T;
export function useDefined<T>(value: T, initialValue?: T) {
	return useLatest(value, isEqualOrUndefined).current ?? initialValue;
}

================================================================================
// File: src/client/hooks/use-input-device.ts
================================================================================
import { useEventListener } from "@rbxts/pretty-react-hooks";
import { useState } from "@rbxts/react";
import { UserInputService } from "@rbxts/services";

export type InputDevice = "keyboard" | "gamepad" | "touch";

const getInputType = (inputType = UserInputService.GetLastInputType()): InputDevice | undefined => {
	if (inputType === Enum.UserInputType.Keyboard || inputType === Enum.UserInputType.MouseMovement) {
		return "keyboard";
	} else if (inputType === Enum.UserInputType.Gamepad1) {
		return "gamepad";
	} else if (inputType === Enum.UserInputType.Touch) {
		return "touch";
	}
};

/**
 * Returns the current input device being used by the player.
 * @returns An InputDevice string.
 */
export function useInputDevice() {
	const [device, setDevice] = useState<InputDevice>(() => {
		return getInputType() ?? "keyboard";
	});

	useEventListener(UserInputService.LastInputTypeChanged, (inputType) => {
		const newDevice = getInputType(inputType);

		if (newDevice !== undefined) {
			setDevice(newDevice);
		}
	});

	return device;
}

================================================================================
// File: src/client/hooks/use-orientation.ts
================================================================================
import { useViewport } from "@rbxts/pretty-react-hooks";
import { useState } from "@rbxts/react";

export function useOrientation() {
	const [orientation, setOrientation] = useState<"landscape" | "portrait">("landscape");

	useViewport((viewport) => {
		setOrientation(viewport.Y > viewport.X ? "portrait" : "landscape");
	});

	return orientation;
}

================================================================================
// File: src/client/hooks/use-premium.ts
================================================================================
import { useEventListener } from "@rbxts/pretty-react-hooks";
import { useState } from "@rbxts/react";
import { Players } from "@rbxts/services";

export function usePremium() {
	const [isPremium, setIsPremium] = useState(Players.LocalPlayer.MembershipType === Enum.MembershipType.Premium);

	useEventListener(Players.PlayerMembershipChanged, (player) => {
		if (player === Players.LocalPlayer) {
			setIsPremium(player.MembershipType === Enum.MembershipType.Premium);
		}
	});

	return isPremium;
}

================================================================================
// File: src/client/hooks/use-product-price.ts
================================================================================
import { useAsync } from "@rbxts/pretty-react-hooks";
import { MarketplaceService } from "@rbxts/services";

export function useProductPrice(productId: number) {
	const [info = "N/A"] = useAsync(() => {
		return Promise.retryWithDelay(
			async () => {
				return MarketplaceService.GetProductInfo(productId, Enum.InfoType.Product).PriceInRobux;
			},
			10,
			5,
		);
	});

	return info;
}

================================================================================
// File: src/client/hooks/use-rem.ts
================================================================================
import { useCallback, useContext } from "@rbxts/react";

import { DEFAULT_REM, RemContext } from "../providers/rem-provider";

export interface RemOptions {
	minimum?: number;
	maximum?: number;
}

interface RemFunction {
	(value: number, mode?: RemScaleMode): number;
	(value: UDim2, mode?: RemScaleMode): UDim2;
	(value: UDim, mode?: RemScaleMode): UDim;
	(value: Vector2, mode?: RemScaleMode): Vector2;
}

type RemScaleMode = "pixel" | "unit";

const scaleFunctions = {
	number: (value: number, rem: number): number => {
		return value * rem;
	},

	UDim2: (value: UDim2, rem: number): UDim2 => {
		return new UDim2(value.X.Scale, value.X.Offset * rem, value.Y.Scale, value.Y.Offset * rem);
	},

	UDim: (value: UDim, rem: number): UDim => {
		return new UDim(value.Scale, value.Offset * rem);
	},

	Vector2: (value: Vector2, rem: number): Vector2 => {
		return new Vector2(value.X * rem, value.Y * rem);
	},
};

function useRemContext({ minimum = 0, maximum = math.huge }: RemOptions = {}) {
	const rem = useContext(RemContext);
	return math.clamp(rem, minimum, maximum);
}

export function useRem(options?: RemOptions): RemFunction {
	const rem = useRemContext(options);

	const remFunction: RemFunction = <T>(value: T, mode: RemScaleMode = "unit"): T => {
		const scale = scaleFunctions[typeOf(value) as never] as <T>(value: T, rem: number) => T;

		if (scale) {
			return mode === "unit" ? scale(value, rem) : scale(value, rem / DEFAULT_REM);
		} else {
			return value;
		}
	};

	return useCallback(remFunction, [rem]);
}

================================================================================
// File: src/client/hooks/use-seed.ts
================================================================================
import { useMemo } from "@rbxts/react";

/**
 * Generates a random seed unique to this function component.
 */
export function useSeed() {
	return useMemo(() => {
		const random = new Random();
		return random.NextNumber(-256, 256);
	}, []);
}

================================================================================
// File: src/client/hooks/use-store.ts
================================================================================
import { useProducer, UseProducerHook } from "@rbxts/react-reflex";
import { RootStore } from "client/store";

export const useStore: UseProducerHook<RootStore> = useProducer;

================================================================================
// File: src/client/providers/rem-provider.tsx
================================================================================
import { map, useCamera, useDebounceState, useEventListener } from "@rbxts/pretty-react-hooks";
import React, { createContext, useEffect } from "@rbxts/react";

export interface RemProviderProps extends React.PropsWithChildren {
	baseRem?: number;
	remOverride?: number;
	minimumRem?: number;
	maximumRem?: number;
}

export const DEFAULT_REM = 16;
export const MIN_REM = 8;
const BASE_RESOLUTION = new Vector2(1920, 1020);
const MAX_ASPECT_RATIO = 19 / 9;

export const RemContext = createContext<number>(DEFAULT_REM);

export function RemProvider({
	baseRem = DEFAULT_REM,
	minimumRem = MIN_REM,
	maximumRem = math.huge,
	remOverride,
	children,
}: RemProviderProps) {
	const camera = useCamera();
	const [rem, setRem] = useDebounceState(baseRem, { wait: 0.2, leading: true });

	const update = () => {
		const viewport = camera.ViewportSize;

		if (remOverride !== undefined) {
			return remOverride;
		}

		// wide screens should not scale beyond iPhone aspect ratio
		const resolution = new Vector2(math.min(viewport.X, viewport.Y * MAX_ASPECT_RATIO), viewport.Y);
		const scale = resolution.Magnitude / BASE_RESOLUTION.Magnitude;
		const desktop = resolution.X > resolution.Y || scale >= 1;

		// portrait mode should downscale slower than landscape
		const factor = desktop ? scale : map(scale, 0, 1, 0.25, 1);

		setRem(math.clamp(math.round(baseRem * factor), minimumRem, maximumRem));
	};

	useEventListener(camera.GetPropertyChangedSignal("ViewportSize"), update);

	useEffect(() => {
		update();
	}, [baseRem, minimumRem, maximumRem, remOverride]);

	return <RemContext.Provider value={rem}>{children}</RemContext.Provider>;
}

================================================================================
// File: src/client/providers/root-provider.tsx
================================================================================
import React from "@rbxts/react";
import { ReflexProvider } from "@rbxts/react-reflex";
import { store } from "client/store";

import { RemProvider, RemProviderProps } from "./rem-provider";

export function RootProvider({ baseRem, remOverride, children }: RemProviderProps) {
	return (
		<ReflexProvider producer={store}>
			<RemProvider baseRem={baseRem} remOverride={remOverride}>
				{children}
			</RemProvider>
		</ReflexProvider>
	);
}

================================================================================
// File: src/client/reset/index.client.ts
================================================================================
import { StarterGui } from "@rbxts/services";
import { remotes } from "shared/remotes";

async function setCore() {
	const resetBindable = new Instance("BindableEvent");

	resetBindable.Event.Connect(() => {
		remotes.snake.kill.fire();
	});

	StarterGui.SetCore("ResetButtonCallback", resetBindable);
}

Promise.retryWithDelay(setCore, 10, 5);

================================================================================
// File: src/client/store/alert/alert-selectors.ts
================================================================================
import { createSelector } from "@rbxts/reflex";

import { RootState } from "..";

export const selectAlerts = (state: RootState) => {
	return state.alert.alerts;
};

export const selectAlertsVisible = createSelector(selectAlerts, (alerts) => {
	return alerts.filter((alert) => alert.visible);
});

export const selectAlertIndex = (id: number) => {
	return createSelector(selectAlertsVisible, (alerts) => {
		return alerts.findIndex((alert) => alert.id === id);
	});
};

================================================================================
// File: src/client/store/alert/alert-slice.ts
================================================================================
import { createProducer } from "@rbxts/reflex";

export interface AlertState {
	readonly alerts: readonly Alert[];
}

export interface Alert {
	readonly id: number;
	readonly scope?: AlertScope;
	readonly emoji: string;
	readonly message: string;
	readonly color: Color3;
	readonly colorSecondary?: Color3;
	readonly colorMessage?: Color3;
	readonly duration: number;
	readonly visible: boolean;
	readonly sound?: string;
}

export type AlertScope = "ranking" | "money";

const initialState: AlertState = {
	alerts: [],
};

export const alertSlice = createProducer(initialState, {
	addAlert: (state, alert: Alert) => ({
		...state,
		alerts: [alert, ...state.alerts],
	}),

	removeAlert: (state, id: number) => ({
		...state,
		alerts: state.alerts.filter((alert) => alert.id !== id),
	}),

	setAlertVisible: (state, id: number, visible: boolean) => ({
		...state,
		alerts: state.alerts.map((alert) => (alert.id === id ? { ...alert, visible } : alert)),
	}),
});

================================================================================
// File: src/client/store/alert/index.ts
================================================================================
export * from "./alert-selectors";
export * from "./alert-slice";

================================================================================
// File: src/client/store/index.ts
================================================================================
import { combineProducers, InferState } from "@rbxts/reflex";
import { slices } from "shared/store";
import { profilerMiddleware } from "shared/store/middleware/profiler";

import { alertSlice } from "./alert";
import { menuSlice } from "./menu";
import { receiverMiddleware } from "./middleware/receiver";
import { worldSlice } from "./world";

export type RootStore = typeof store;

export type RootState = InferState<RootStore>;

export function createStore() {
	const store = combineProducers({
		...slices,
		alert: alertSlice,
		menu: menuSlice,
		world: worldSlice,
	});

	store.applyMiddleware(profilerMiddleware, receiverMiddleware());

	return store;
}

export const store = createStore();

================================================================================
// File: src/client/store/menu/index.ts
================================================================================
export * from "./menu-selectors";
export * from "./menu-slice";
export * from "./menu-utils";

================================================================================
// File: src/client/store/menu/menu-selectors.ts
================================================================================
import { RANDOM_SKIN } from "shared/store/saves";

import { RootState } from "..";
import { MenuPage } from "./menu-slice";

export const selectCurrentPage = (state: RootState) => {
	return state.menu.page;
};

export const selectIsMenuOpen = (state: RootState) => {
	return state.menu.open;
};

export const selectIsPage = (page: MenuPage) => {
	return (state: RootState) => state.menu.page === page;
};

export const selectMenuTransition = (state: RootState) => {
	return state.menu.transition;
};

export const selectMenuCurrentSkin = (state: RootState) => {
	return state.menu.skins.current;
};

export const selectSkinOverride = (state: RootState) => {
	return state.menu.page === "skins" && state.menu.skins.current !== RANDOM_SKIN
		? state.menu.skins.current
		: undefined;
};

export const selectMusicEnabled = (state: RootState) => {
	return state.menu.music;
};

================================================================================
// File: src/client/store/menu/menu-slice.ts
================================================================================
import { createProducer } from "@rbxts/reflex";
import { RANDOM_SKIN } from "shared/store/saves";

import { getMenuDirection } from "./menu-utils";

export interface MenuState {
	readonly page: MenuPage;
	readonly open: boolean;
	readonly music: boolean;
	readonly transition: {
		readonly direction: "left" | "right";
		readonly counter: number;
	};
	readonly skins: {
		readonly current: string;
	};
}

export type MenuPage = "support" | "home" | "skins";

const initialState: MenuState = {
	page: "home",
	open: true,
	music: true,
	transition: {
		direction: "left",
		counter: 0,
	},
	skins: {
		current: RANDOM_SKIN,
	},
};

export const menuSlice = createProducer(initialState, {
	setMenuPage: (state, page: MenuPage) => ({
		...state,
		page,
		transition: {
			direction: getMenuDirection(state.page, page),
			counter: state.transition.counter + 1,
		},
	}),

	setMenuOpen: (state, open: boolean) => ({
		...state,
		open,
	}),

	setMenuSkin: (state, skin: string) => ({
		...state,
		skins: {
			...state.skins,
			current: skin,
		},
	}),

	setMenuMusic: (state, music: boolean) => ({
		...state,
		music,
	}),
});

================================================================================
// File: src/client/store/menu/menu-utils.ts
================================================================================
import { MenuPage } from "./menu-slice";

export const MENU_PAGES: readonly MenuPage[] = ["support", "home", "skins"] as const;

/**
 * Returns the direction of the transition from one menu page to
 * another. Used for animating navigation fluidly.
 */
export function getMenuDirection(from: MenuPage, to: MenuPage) {
	const fromIndex = MENU_PAGES.indexOf(from);
	const toIndex = MENU_PAGES.indexOf(to);

	if (fromIndex === -1 || toIndex === -1) {
		throw `Invalid menu page: ${from} -> ${to}`;
	}

	return fromIndex < toIndex ? "right" : "left";
}

================================================================================
// File: src/client/store/middleware/receiver.ts
================================================================================
import { createBroadcastReceiver, ProducerMiddleware } from "@rbxts/reflex";
import { IS_EDIT } from "shared/constants/core";
import { remotes } from "shared/remotes";
import { deserializeState } from "shared/serdes";

export function receiverMiddleware(): ProducerMiddleware {
	if (IS_EDIT) {
		return () => (dispatch) => dispatch;
	}

	const receiver = createBroadcastReceiver({
		start: () => {
			remotes.store.start.fire();
		},
	});

	remotes.store.dispatch.connect((actions) => {
		receiver.dispatch(actions);
	});

	remotes.store.hydrate.connect((state) => {
		receiver.hydrate(deserializeState(state));
	});

	return receiver.middleware;
}

================================================================================
// File: src/client/store/world/index.ts
================================================================================
export * from "./world-selectors";
export * from "./world-slice";

================================================================================
// File: src/client/store/world/world-selectors.ts
================================================================================
import { createSelector } from "@rbxts/reflex";
import { describeSnakeFromScore } from "shared/store/snakes";
import { mapStrict } from "shared/utils/math-utils";

import { RootState } from "..";

export interface WorldCamera {
	readonly subject?: string;
	readonly offset: Vector2;
	readonly scale: number;
}

const WORLD_SCALE = 4;

export const selectWorldSubject = (state: RootState) => {
	return state.world.subject;
};

export const selectWorldSpectating = (state: RootState) => {
	return state.world.spectating;
};

export const selectSnakeSpectated = (state: RootState) => {
	return state.snakes[state.world.spectating];
};

export const selectWorldInputAngle = (isClient = true) => {
	return (state: RootState) => {
		return isClient ? state.world.inputAngle : 0;
	};
};

export const selectSnakeFromWorldSubject = (state: RootState) => {
	return state.snakes[state.world.subject];
};

export const selectWorldCamera = createSelector(
	[selectSnakeFromWorldSubject],
	(snake) => {
		if (!snake) {
			return {
				subject: undefined,
				offset: new Vector2(),
				scale: WORLD_SCALE,
			};
		}

		const { radius } = describeSnakeFromScore(snake.score);

		return {
			subject: snake.id,
			offset: snake.head.mul(-1),
			scale: mapStrict(radius, 0.5, 3, WORLD_SCALE, WORLD_SCALE * 0.5),
		};
	},
	{
		// only re-compute if the snake is not null
		equalityCheck: (current, previous) => current === previous || current === undefined,
	},
);

================================================================================
// File: src/client/store/world/world-slice.ts
================================================================================
import { createProducer } from "@rbxts/reflex";

export interface WorldState {
	readonly subject: string;
	readonly spectating: string;
	readonly inputAngle: number;
}

const initialState: WorldState = {
	subject: "",
	spectating: "",
	inputAngle: 0,
};

export const worldSlice = createProducer(initialState, {
	setWorldSubject: (state, subject: string) => ({
		...state,
		subject,
	}),

	setWorldSpectating: (state, spectating: string) => ({
		...state,
		spectating,
	}),

	setWorldInputAngle: (state, inputAngle: number) => ({
		...state,
		inputAngle,
	}),
});

================================================================================
// File: src/client/stories/components/alerts.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { sendAlert } from "client/alerts";
import { Alerts } from "client/components/alerts";
import { Menu } from "client/components/menu";
import { InputCapture } from "client/components/ui/input-capture";
import { Backdrop } from "client/components/world/backdrop";
import { RootProvider } from "client/providers/root-provider";
import { palette } from "shared/constants/palette";

export = hoarcekat(() => {
	const modes = ["info", "success", "warning", "error", "awesome"] as const;

	const alert = () => {
		const mode = modes[math.random(0, modes.size() - 1)];

		switch (mode) {
			case "info":
				sendAlert({ emoji: "ℹ️", color: palette.blue, message: "This is an info alert." });
				break;
			case "success":
				sendAlert({ emoji: "✅", color: palette.green, message: "This is a success alert." });
				break;
			case "warning":
				sendAlert({ emoji: "⚠️", color: palette.yellow, message: "This is a warning alert." });
				break;
			case "error":
				sendAlert({ emoji: "🚨", color: palette.red, message: "This is an error alert." });
				break;
			case "awesome":
				sendAlert({
					emoji: "🎉",
					color: palette.mauve,
					colorSecondary: palette.blue,
					message: "This is an awesome alert.",
				});
				break;
		}
	};

	return (
		<RootProvider>
			<Backdrop />
			<Alerts />
			<Menu />
			<InputCapture
				onInputBegan={(_, input) => {
					if (input.KeyCode === Enum.KeyCode.F) {
						alert();
					}
				}}
			/>
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/components/controller.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat, useInterval } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { useSelector } from "@rbxts/react-reflex";
import { Players } from "@rbxts/services";
import { Controller } from "client/components/controller";
import { Frame } from "client/components/ui/frame";
import { Group } from "client/components/ui/group";
import { Text } from "client/components/ui/text";
import { World } from "client/components/world/world";
import { useRem } from "client/hooks";
import { RootProvider } from "client/providers/root-provider";
import { store } from "client/store";
import { selectWorldCamera } from "client/store/world";
import { USER_NAME, WORLD_TICK } from "shared/constants/core";
import { palette } from "shared/constants/palette";
import { getRandomBaseSnakeSkin } from "shared/constants/skins";
import { describeSnakeFromScore, selectLocalSnake } from "shared/store/snakes";
import { createScheduler } from "shared/utils/scheduler";

import { useMockRemotes } from "../utils/use-mock-remotes";

const START_SIZE = 0;
const SIZE_INCREMENT = 100;
const DEBUG_SIZES = [0, 500, 1000, 2500, 5000, 10000, 20000, 40000, 80000, 160000];

function Debugger() {
	const rem = useRem();
	const snake = useSelector(selectLocalSnake);
	const world = useSelector(selectWorldCamera);

	if (!snake) {
		return <></>;
	}

	const description = describeSnakeFromScore(snake.score);

	return (
		<>
			<Text
				text={`Score: ${snake.score}`}
				textColor={palette.text}
				textXAlignment="Left"
				textYAlignment="Bottom"
				position={new UDim2(0, rem(2), 1, rem(-2))}
			/>

			<Text
				text={`Tracers: ${math.floor(description.length)}`}
				textColor={palette.text}
				textXAlignment="Left"
				textYAlignment="Bottom"
				position={new UDim2(0, rem(2), 1, rem(-4))}
			/>

			<Group size={new UDim2(1, 0, 0.5, 0)}>
				<uilistlayout
					FillDirection="Horizontal"
					VerticalAlignment="Center"
					HorizontalAlignment="Center"
					SortOrder="LayoutOrder"
				/>

				{DEBUG_SIZES.map((score, index) => {
					const description = describeSnakeFromScore(score);
					const diameter = rem(world.scale * description.radius * 2);

					return (
						<Frame
							key={`debug-${index}`}
							size={new UDim2(0, diameter, 0, diameter)}
							backgroundColor={palette.red}
							cornerRadius={new UDim(1, 0)}
							layoutOrder={index}
						>
							<Text
								text={`${score}\nl${math.floor(description.length)}\nd${string.format(
									"%.2f",
									description.radius,
								)}`}
								textColor={palette.crust}
								textScaled
								size={new UDim2(1, 0, 1, 0)}
							>
								<uipadding PaddingBottom={new UDim(0, rem(0.5))} PaddingTop={new UDim(0, rem(0.5))} />
								<uitextsizeconstraint MaxTextSize={rem(2)} />
							</Text>
						</Frame>
					);
				})}
			</Group>
		</>
	);
}

export = hoarcekat(() => {
	useMockRemotes();

	useEffect(() => {
		store.addSnake(USER_NAME, {
			name: Players.LocalPlayer.DisplayName,
			skin: getRandomBaseSnakeSkin().id,
			score: START_SIZE,
		});

		return createScheduler({
			name: "world-tick",
			tick: WORLD_TICK,
			onTick: store.snakeTick,
		});
	}, []);

	useInterval(() => {
		store.incrementSnakeScore(USER_NAME, SIZE_INCREMENT);
	}, 0.5);

	return (
		<RootProvider>
			<World />
			<Controller />
			<Debugger />
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/components/error.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { ErrorHandler } from "client/components/error-handler";
import { RootProvider } from "client/providers/root-provider";

function BadComponent() {
	useEffect(() => {
		throw "Bad component!";
	}, []);

	return <frame />;
}

export = hoarcekat(() => (
	<RootProvider>
		<ErrorHandler>
			<BadComponent />
		</ErrorHandler>
	</RootProvider>
));

================================================================================
// File: src/client/stories/components/game.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat, useInterval } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { Controller } from "client/components/controller";
import { Game } from "client/components/game";
import { World } from "client/components/world";
import { RootProvider } from "client/providers/root-provider";
import { store } from "client/store";
import { USER_NAME, WORLD_BOUNDS, WORLD_TICK } from "shared/constants/core";
import { getRandomAccent } from "shared/constants/palette";
import { getRandomBaseSnakeSkin } from "shared/constants/skins";
import { CandyType } from "shared/store/candy";
import { fillArray } from "shared/utils/object-utils";
import { createScheduler } from "shared/utils/scheduler";

import { useMockRemotes } from "../utils/use-mock-remotes";

const IDS = [USER_NAME, ...fillArray(10, (index) => `${index}`)];

export = hoarcekat(() => {
	useMockRemotes();

	useEffect(() => {
		for (const id of IDS) {
			store.addSnake(id, {
				name: id,
				head:
					id === USER_NAME
						? Vector2.zero
						: new Vector2(
								math.random(-WORLD_BOUNDS, WORLD_BOUNDS),
								math.random(-WORLD_BOUNDS, WORLD_BOUNDS),
							),
				skin: getRandomBaseSnakeSkin().id,
				score: math.random(0, 5000),
			});
		}

		store.populateCandy(
			fillArray(512, (index) => ({
				id: `test-${index}`,
				type: CandyType.Default,
				position: new Vector2(
					(math.random() * 2 - 1) * WORLD_BOUNDS * 0.2,
					(math.random() * 2 - 1) * WORLD_BOUNDS * 0.2,
				),
				size: math.random(1, 10),
				color: getRandomAccent(),
			})),
		);

		return createScheduler({
			name: "world-tick",
			tick: WORLD_TICK,
			onTick: store.snakeTick,
		});
	}, []);

	useInterval(() => {
		for (const id of IDS) {
			if (id !== USER_NAME) {
				store.turnSnake(id, math.random() * 2 * math.pi);
			}
		}
	}, 1.5);

	return (
		<RootProvider>
			<World />
			<Game />
			<Controller />
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/components/menu.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { Menu } from "client/components/menu";
import { InputCapture } from "client/components/ui/input-capture";
import { World } from "client/components/world";
import { RootProvider } from "client/providers/root-provider";
import { store } from "client/store";
import { USER_NAME } from "shared/constants/core";
import { selectSnakeById } from "shared/store/snakes";

import { useMockRemotes } from "../utils/use-mock-remotes";

export = hoarcekat(() => {
	useMockRemotes();

	const toggle = () => {
		const snake = store.getState(selectSnakeById(USER_NAME));

		if (snake) {
			store.removeSnake(USER_NAME);
		} else {
			store.addSnake(USER_NAME);
		}
	};

	return (
		<RootProvider>
			<InputCapture
				onInputBegan={(rbx, input) => {
					if (input.KeyCode === Enum.KeyCode.F) {
						toggle();
					}
				}}
			/>
			<World />
			<Menu />
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/components/skins.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat, useMountEffect } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { Alerts } from "client/components/alerts";
import { Menu } from "client/components/menu";
import { World } from "client/components/world";
import { RootProvider } from "client/providers/root-provider";
import { store } from "client/store";
import { USER_NAME } from "shared/constants/core";
import { defaultPlayerSave } from "shared/store/saves";

import { useMockRemotes } from "../utils/use-mock-remotes";

export = hoarcekat(() => {
	useMockRemotes();

	useMountEffect(() => {
		store.setMenuPage("skins");
		store.setPlayerSave(USER_NAME, defaultPlayerSave);
	});

	return (
		<RootProvider>
			<World />
			<Menu />
			<Alerts />
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/components/stats.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat, useMountEffect } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { Menu } from "client/components/menu";
import { Stats } from "client/components/stats";
import { Backdrop } from "client/components/world/backdrop";
import { RootProvider } from "client/providers/root-provider";
import { store } from "client/store";
import { USER_NAME } from "shared/constants/core";
import { defaultPlayerSave } from "shared/store/saves";

export = hoarcekat(() => {
	useMountEffect(() => {
		store.setPlayerSave(USER_NAME, {
			...defaultPlayerSave,
			balance: 1000,
		});
	});

	return (
		<RootProvider>
			<Backdrop />
			<Menu />
			<Stats />
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/components/support.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat, useMountEffect } from "@rbxts/pretty-react-hooks";
import React from "@rbxts/react";
import { Menu } from "client/components/menu";
import { World } from "client/components/world";
import { RootProvider } from "client/providers/root-provider";
import { store } from "client/store";
import { USER_NAME } from "shared/constants/core";
import { defaultPlayerSave } from "shared/store/saves";

import { useMockRemotes } from "../utils/use-mock-remotes";

export = hoarcekat(() => {
	useMockRemotes();

	useMountEffect(() => {
		store.setMenuPage("support");
		store.setPlayerSave(USER_NAME, {
			...defaultPlayerSave,
			balance: 0,
		});
	});

	return (
		<RootProvider>
			<World />
			<Menu />
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/components/world.story.tsx
================================================================================
import "client/app/react-config";

import { hoarcekat, useInterval } from "@rbxts/pretty-react-hooks";
import React, { useEffect } from "@rbxts/react";
import { Controller } from "client/components/controller";
import { World } from "client/components/world/world";
import { RootProvider } from "client/providers/root-provider";
import { store } from "client/store";
import { USER_NAME, WORLD_TICK } from "shared/constants/core";
import { getRandomAccent } from "shared/constants/palette";
import { getRandomBaseSnakeSkin } from "shared/constants/skins";
import { CandyType } from "shared/store/candy";
import { fillArray } from "shared/utils/object-utils";
import { createScheduler } from "shared/utils/scheduler";

import { useMockRemotes } from "../utils/use-mock-remotes";

const IDS = [USER_NAME, ...fillArray(10, (index) => `${index}`)];

export = hoarcekat(() => {
	useMockRemotes();

	useEffect(() => {
		for (const id of IDS) {
			store.addSnake(id, {
				name: id,
				head: new Vector2(math.random(-10, 10), math.random(-10, 10)),
				skin: getRandomBaseSnakeSkin().id,
				score: math.random(0, 8000),
			});
		}

		store.populateCandy(
			fillArray(50, (index) => ({
				id: `${index}`,
				position: new Vector2(math.random(-50, 50), math.random(-25, 25)),
				size: math.random(1, 50),
				color: getRandomAccent(),
				type: CandyType.Default,
			})),
		);

		return createScheduler({
			name: "world-tick",
			tick: WORLD_TICK,
			onTick: store.snakeTick,
		});
	}, []);

	useInterval(() => {
		for (const id of IDS) {
			if (id !== USER_NAME) {
				store.turnSnake(id, math.random() * 2 * math.pi);
			}
		}
	}, 1.5);

	return (
		<RootProvider>
			<World />
			<Controller />
		</RootProvider>
	);
});

================================================================================
// File: src/client/stories/utils/use-mock-remotes.ts
================================================================================
import { useEffect } from "@rbxts/react";
import { store } from "client/store";
import { USER_NAME } from "shared/constants/core";
import { getSnakeSkin } from "shared/constants/skins";
import { remotes } from "shared/remotes";
import { selectPlayerBalance } from "shared/store/saves";

export function useMockRemotes() {
	useEffect(() => {
		const connections = [
			remotes.snake.move.test.onFire((angle) => {
				store.turnSnake(USER_NAME, angle);
			}),

			remotes.snake.boost.test.onFire((boost) => {
				store.boostSnake(USER_NAME, boost);
			}),

			remotes.snake.spawn.test.onFire(() => {
				store.addSnake(USER_NAME);
			}),

			remotes.save.setSkin.test.onFire((skin) => {
				store.setPlayerSkin(USER_NAME, skin);
			}),

			remotes.save.buySkin.test.onFire((skinId) => {
				const balance = store.getState(selectPlayerBalance(USER_NAME)) ?? 0;
				const skin = getSnakeSkin(skinId);

				if (balance >= skin.price) {
					store.givePlayerSkin(USER_NAME, skinId);
					store.givePlayerBalance(USER_NAME, -skin.price);
				}
			}),
		];

		return () => {
			connections.forEach((connection) => connection());
		};
	}, []);
}

================================================================================
// File: src/client/utils/format-integer.ts
================================================================================
/**
 * Reformat a number to a string with a thousands separator.
 */
export function formatInteger(value: unknown) {
	return tostring(value).reverse().gsub("%d%d%d", "%1,")[0].reverse().gsub("^,", "")[0];
}

================================================================================
// File: src/server/bots/bot-behavior.ts
================================================================================
import Object from "@rbxts/object-utils";
import { setInterval } from "@rbxts/set-timeout";
import { store } from "server/store";
import { candyGrid, snakeGrid } from "server/world";
import { getCandy, getSnake } from "server/world/utils";
import { WORLD_BOUNDS } from "shared/constants/core";
import { CandyType } from "shared/store/candy";
import { describeSnakeFromScore, SnakeEntity } from "shared/store/snakes";
import { map } from "shared/utils/math-utils";

export enum BehaviorMode {
	Idle,
	Scavenging,
}

const BEHAVIORS = Object.values(BehaviorMode);

export class BotBehavior {
	public readonly id: string;
	private readonly seed: number;
	private readonly cleanup: () => void;

	constructor(id: string) {
		this.id = id;
		this.seed = math.random() * 255;

		// Updates once per
		this.cleanup = setInterval(() => {
			this.update();
		}, 1);
	}

	public destroy() {
		this.cleanup();
	}

	private idle(snake: SnakeEntity) {
		const head = snake.head;
		if (WORLD_BOUNDS - head.Magnitude <= 20) {
			const angle = math.atan2(head.Y, head.X) + math.rad(180);
			store.turnSnake(this.id, angle);
			return;
		}

		const range = math.random() > 0.2 ? 20 : 180;
		// Max turn of 20 degrees away from current angle
		store.turnSnake(this.id, snake.angle + math.rad(math.random(-range, range)));
	}

	private scavenge(snake: SnakeEntity) {
		const head = snake.head;

		let target = candyGrid.nearest(head, 15, (point) => {
			const candy = getCandy(point.metadata.id);
			return candy !== undefined && !candy.eatenAt && candy.type === CandyType.Loot;
		});

		if (!target) {
			target = candyGrid.nearest(head, 15, (point) => {
				const candy = getCandy(point.metadata.id);
				return candy !== undefined && !candy.eatenAt;
			});
		}

		const candy = target && getCandy(target.metadata.id);
		if (!candy) {
			this.idle(snake);
			return;
		}

		const angle = math.atan2(candy.position.Y - head.Y, candy.position.X - head.X);
		store.turnSnake(this.id, angle);
	}

	private flee(snake: SnakeEntity, direction: Vector2) {
		// Go 180 (plus or minus some variance) degrees in opposite direction
		const angle = math.atan2(direction.Y, direction.X) + math.rad(180 + math.random(-10, 10));
		store.turnSnake(snake.id, angle);
	}

	private update() {
		const snake = getSnake(this.id);
		const behavior = this.getBehavior();

		if (!snake) {
			return;
		}

		const nearbyEnemy = this.directionToNearestEnemy(snake);
		if (nearbyEnemy) {
			this.flee(snake, nearbyEnemy);
			return;
		}

		switch (behavior) {
			case BehaviorMode.Idle: {
				this.idle(snake);
				break;
			}
			case BehaviorMode.Scavenging: {
				this.scavenge(snake);
				break;
			}
		}
	}

	private directionToNearestEnemy(snake: SnakeEntity): Vector2 | undefined {
		const radius = describeSnakeFromScore(snake.score).radius;

		const nearest = snakeGrid.nearest(snake.head, radius * 10 + 3, (hit) => {
			const enemy = getSnake(hit.metadata.id);
			return enemy !== undefined && !enemy.dead && enemy.id !== snake.id;
		});

		const enemy = nearest && getSnake(nearest.metadata.id);

		if (!enemy) {
			return;
		}

		const enemyRadius = describeSnakeFromScore(enemy.score).radius;
		const direction = nearest.position.sub(snake.head);
		const distance = direction.Magnitude;

		if (distance <= 5 * (radius + enemyRadius)) {
			return direction.Unit;
		}
	}

	private getBehavior() {
		const noise = math.noise(this.seed, time() / 10);
		const index = math.round(map(noise, -0.5, 0.5, 0, BEHAVIORS.size() - 1));

		return BEHAVIORS[index] ?? BehaviorMode.Idle;
	}
}

================================================================================
// File: src/server/bots/bot-factory.ts
================================================================================
import { store } from "server/store";
import { getSafePointInWorld } from "server/world/utils";
import { getRandomBaseSnakeSkin } from "shared/constants/skins";
import { selectSnakeCount, selectSnakeIsDead } from "shared/store/snakes";

import { BotBehavior } from "./bot-behavior";
import { generateBotName } from "./bot-names";

const MIN_SNAKES = 25;

let nextBotId = 0;

export function initBotFactory() {
	store.subscribe(
		selectSnakeCount,
		(count) => count < MIN_SNAKES,
		(count) => createBots(MIN_SNAKES - count),
	);

	createBots(MIN_SNAKES);
}

export function createBots(amount: number) {
	for (const _ of $range(0, amount)) {
		createBot();
	}
}

export function createBot() {
	const id = `bot-${nextBotId++}`;
	const name = generateBotName();
	const behavior = new BotBehavior(id);

	store.addSnake(id, {
		name,
		head: getSafePointInWorld(),
		skin: getRandomBaseSnakeSkin().id,
	});

	store.once(selectSnakeIsDead(id), () => {
		behavior.destroy();
	});

	return id;
}

================================================================================
// File: src/server/bots/bot-names.ts
================================================================================
const adjectives = [
	// taken mostly from https://gist.github.com/hugsy/8910dc78d208e40de42deb29e62df913
	"Adventurous",
	"Accurate",
	"Admirable",
	"Advanced",
	"Agile",
	"Amazing",
	"Ancient",
	"Angry",
	"Anxious",
	"Athletic",
	"Average",
	"Awful",
	"Awkward",
	"Basic",
	"Beautiful",
	"Beneficial",
	"Big",
	"Blissful",
	"Boring",
	"Brave",
	"Brilliant",
	"Calm",
	"Caring",
	"Charming",
	"Colossal",
	"Crazy",
	"Cute",
	"Dapper",
	"Defiant",
	"Determined",
	"Dry",
	"Eager",
	"Elegant",
	"Embarassed",
	"Enchanted",
	"Energetic",
	"Enlightened",
	"Enormous",
	"Evil",
	"Exotic",
	"Fabulous",
	"Faithful",
	"Famous",
	"Fancy",
	"Fantastic",
	"Fearless",
	"Flashy",
	"Flawless",
	"Funky",
	"Funny",
	"Fuzzy",
	"Genuine",
	"Giant",
	"Gigantic",
	"Glorious",
	"Golden",
	"Graceful",
	"Happy",
	"Hasty",
	"Healthy",
	"Heavenly",
	"Honest",
	"Honorable",
	"Huge",
	"Illustrious",
	"Impeccable",
	"Impressive",
	"Incredible",
	"Infamous",
	"Innocent",
	"Intelligent",
	"Interesting",
	"Joyful",
	"Kind",
	"Lovable",
	"Loyal",
	"Luminous",
	"Lustrous",
	"Luxurious",
	"Magnificent",
	"Majestic",
	"Marvelous",
	"Massive",
	"Mysterious",
	"Nautical",
	"Nervous",
	"Noisy",
	"Opulent",
	"Outstanding",
	"Passionate",
	"Peaceful",
	"Pleasant",
	"Powerful",
	"Prestigious",
	"Precious",
	"Proud",
	"Pure",
	"Quick",
	"Quiet",
	"Quintessential",
	"Radiant",
	"Rapid",
	"Rare",
	"Regal",
	"Remarkable",
	"Respectful",
	"Rich",
	"Royal",
	"Scientific",
	"Serene",
	"Serious",
	"Serpentine",
	"Sharp",
	"Shimmering",
	"Shiny",
	"Shocked",
	"Shocking",
	"Shy",
	"Silent",
	"Silky",
	"Silly",
	"Silver",
	"Simple",
	"Sleepy",
	"Small",
	"Smart",
	"Sneaky",
	"Sophisticated",
	"Sparkling",
	"Speedy",
	"Spicy",
	"Striking",
	"Strong",
	"Studious",
	"Stunning",
	"Stupendous",
	"Sunny",
	"Super",
	"Superb",
	"Superior",
	"Surprised",
	"Suspicious",
	"Swift",
	"Terrific",
	"Thunderous",
	"Tremendous",
	"True",
	"Ultimate",
	"Uncommon",
	"Unique",
	"Unknown",
	"Unrivaled",
	"Upbeat",
	"Useful",
	"Valuable",
	"Vast",
	"Venerated",
	"Vibrant",
	"Vicious",
	"Victorious",
	"Vigilant",
	"Vigorous",
	"Vital",
	"Vivid",
	"Warm",
	"Wary",
	"Watchful",
	"Weary",
	"Wild",
	"Wise",
	"Witty",
	"Zealous",
];

const nouns = [
	// base words
	"Rhythm",
	"Viper",
	"Cobra",
	"Python",
	"Snake",
	// taken from https://gist.github.com/atduskgreg/3cf8ef48cb0d29cf151bedad81553a54
	// some subspecies removed, etc.
	"Alligator",
	"Ant",
	"Anteater",
	"Antelope",
	"Armadillo",
	"Baboon",
	"Badger",
	"Bat",
	"Beagle",
	"Bear",
	"Beaver",
	"Bee",
	"Beetle",
	"Bird",
	"Bison",
	"Boar",
	"Bobcat",
	"Buffalo",
	"Bullfrog",
	"Butterfly",
	"Camel",
	"Capybara",
	"Cat",
	"Caterpillar",
	"Catfish",
	"Centipede",
	"Chameleon",
	"Cheetah",
	"Chicken",
	"Chimpanzee",
	"Chinchilla",
	"Chipmunk",
	"Cockroach",
	"Cougar",
	"Cow",
	"Coyote",
	"Crab",
	"Crane",
	"Cuttlefish",
	"Deer",
	"Dingo",
	"Dodo",
	"Dog",
	"Dolphin",
	"Donkey",
	"Dragon",
	"Dragonfly",
	"Drever",
	"Duck",
	"Eagle",
	"Eel",
	"Elephant",
	"Emu",
	"Falcon",
	"Ferret",
	"Fish",
	"Flamingo",
	"Fox",
	"Frog",
	"Gecko",
	"Gerbil",
	"Giraffe",
	"Goat",
	"Goose",
	"Gopher",
	"Gorilla",
	"Grasshopper",
	"Hamster",
	"Hedgehog",
	"Hippopotamus",
	"Horse",
	"Hummingbird",
	"Hyena",
	"Iguana",
	"Jackal",
	"Jaguar",
	"Jellyfish",
	"Kangaroo",
	"Koala",
	"Lemur",
	"Leopard",
	"Lion",
	"Lizard",
	"Llama",
	"Lobster",
	"Lynx",
	"Macaw",
	"Mammoth",
	"Meerkat",
	"Millipede",
	"Mole",
	"Mongoose",
	"Monkey",
	"Moose",
	"Moth",
	"Mouse",
	"Mule",
	"Newt",
	"Ocelot",
	"Octopus",
	"Opossum",
	"Orangutan",
	"Ostrich",
	"Otter",
	"Owl",
	"Oyster",
	"Panther",
	"Parrot",
	"Peacock",
	"Pelican",
	"Penguin",
	"Pig",
	"Piranha",
	"Porcupine",
	"Possum",
	"Prawn",
	"Puffin",
	"Puma",
	"Rabbit",
	"Raccoon",
	"Rat",
	"Rattlesnake",
	"Reindeer",
	"Rhinoceros",
	"Robin",
	"Salamander",
	"Scorpion",
	"Seahorse",
	"Seal",
	"Shark",
	"Sheep",
	"Shrimp",
	"Skunk",
	"Sloth",
	"Snail",
	"Sparrow",
	"Sponge",
	"Squid",
	"Squirrel",
	"Stingray",
	"Swan",
	"Tarantula",
	"Termite",
	"Tiger",
	"Toad",
	"Tortoise",
	"Toucan",
	"Turkey",
	"Turtle",
	"Vulture",
	"Walrus",
	"Warthog",
	"Wasp",
	"Weasel",
	"Whale",
	"Wolf",
	"Woodpecker",
	"Yak",
	"Zebra",
];

const emojis = ["🤖", "🖥️", "💻", "🖨️"];

export function generateBotName() {
	const random = new Random();

	const adjective = adjectives[random.NextInteger(0, adjectives.size() - 1)];
	const noun = nouns[random.NextInteger(0, nouns.size() - 1)];
	const emoji = emojis[random.NextInteger(0, emojis.size() - 1)];

	return `${emoji} ${adjective} ${noun}`;
}

================================================================================
// File: src/server/bots/bots.server.ts
================================================================================
import { initBotFactory } from "./bot-factory";

initBotFactory();

================================================================================
// File: src/server/bots/index.ts
================================================================================
export * from "./bot-factory";

================================================================================
// File: src/server/commands/create-command.ts
================================================================================
import { Players, RunService } from "@rbxts/services";

import { getTextChatCommands } from "./utils";

const ADMINS = new ReadonlySet([
	48203430, // @LITTENSY
	96035249, // @NeoInversion
]);

export async function createCommand(alias: string, handler: (player: Player, argument: string) => void) {
	const container = await getTextChatCommands();
	const command = new Instance("TextChatCommand");

	command.Triggered.Connect((origin, unfilteredText) => {
		const player = Players.GetPlayerByUserId(origin.UserId);

		if (player && (ADMINS.has(origin.UserId) || RunService.IsStudio())) {
			const argument = unfilteredText.sub(2 + alias.size());
			handler(player, argument);
		}
	});

	command.Name = `GameCommand_${alias}`;
	command.PrimaryAlias = alias;
	command.Parent = container;
}

================================================================================
// File: src/server/commands/index.server.ts
================================================================================
import { createBot } from "server/bots";
import { store } from "server/store";
import { getSnake, killSnake } from "server/world";
import { defaultPlayerSave } from "shared/store/saves";
import { selectSnakes } from "shared/store/snakes";

import { createCommand } from "./create-command";

createCommand("/score", (player, argument) => {
	store.patchSnake(player.Name, { score: tonumber(argument) });
});

createCommand("/bot", (player, argument) => {
	const score = tonumber(argument);
	const snake = getSnake(player.Name);
	const id = createBot();

	store.patchSnake(id, {
		score,
		head: snake ? snake.head.add(new Vector2(0, 7)) : undefined,
		angle: math.rad(90),
		desiredAngle: math.rad(90),
	});
});

createCommand("/purge", (player, argument) => {
	let snakes = store.getState(selectSnakes).filter((snake) => {
		return snake.id !== player.Name;
	});

	if (argument.sub(1, 3) === "bot") {
		snakes = snakes.filter((snake) => snake.id.sub(1, 3) === "bot");
	}

	for (const snake of snakes) {
		killSnake(snake.id);
	}
});

createCommand("/money", (player, argument) => {
	store.givePlayerBalance(player.Name, tonumber(argument) ?? 0);
});

createCommand("/force-reset", (player) => {
	store.setPlayerSave(player.Name, defaultPlayerSave);
});

================================================================================
// File: src/server/commands/utils.ts
================================================================================
import { TextChatService } from "@rbxts/services";
import { promiseTree } from "@rbxts/validate-tree";

interface EnhancedTextChatService extends TextChatService {
	TextChannels: Folder & {
		RBXGeneral: TextChannel;
		RBXSystem: TextChannel;
	};
	TextChatCommands: Folder;
}

const textChatServiceSchema = {
	$className: "TextChatService",
	TextChannels: {
		$className: "Folder",
		RBXGeneral: "TextChannel",
		RBXSystem: "TextChannel",
	},
	TextChatCommands: "Folder",
} as const;

async function promiseTextChatService(): Promise<EnhancedTextChatService> {
	return promiseTree(TextChatService, textChatServiceSchema);
}

export async function getTextChannels() {
	const { TextChannels } = await promiseTextChatService();
	return TextChannels;
}

export async function getTextChatCommands() {
	const { TextChatCommands } = await promiseTextChatService();
	return TextChatCommands;
}

================================================================================
// File: src/server/players/index.server.ts
================================================================================
import { initPlayerServices } from "./services";

initPlayerServices();

================================================================================
// File: src/server/players/services/character.ts
================================================================================
import { Character, onPlayerAdded, promiseCharacter, promisePlayerDisconnected } from "shared/utils/player-utils";

export async function initCharacterService() {
	function onSpawn(character: Character) {
		character.HumanoidRootPart.SetNetworkOwner(undefined);
		character.HumanoidRootPart.Anchored = true;
		character.Humanoid.SetStateEnabled(Enum.HumanoidStateType.Dead, false);

		for (const part of character.GetDescendants()) {
			if (part.IsA("BasePart") || part.IsA("Decal")) {
				part.Transparency = 1;
			}
		}
	}

	onPlayerAdded((player) => {
		const characterAdded = player.CharacterAdded.Connect((character) => {
			promiseCharacter(character).then(onSpawn);

			player.ClearCharacterAppearance();
		});

		promisePlayerDisconnected(player).then(() => {
			characterAdded.Disconnect();
		});
	});
}

================================================================================
// File: src/server/players/services/index.ts
================================================================================
import { runOnce } from "shared/utils/run-once";

import { initCharacterService } from "./character";
import { initRemoteService } from "./remotes";
import { initSaveService } from "./save";
import { initScoreboardService } from "./scoreboard";

export const initPlayerServices = runOnce(async () => {
	initCharacterService();
	initRemoteService();
	initSaveService();
	initScoreboardService();
});

================================================================================
// File: src/server/players/services/remotes.ts
================================================================================
import { store } from "server/store";
import { sounds } from "shared/assets";
import { palette } from "shared/constants/palette";
import { findSnakeSkin } from "shared/constants/skins";
import { remotes } from "shared/remotes";
import { RANDOM_SKIN, selectPlayerBalance, selectPlayerSkins } from "shared/store/saves";

export async function initRemoteService() {
	remotes.save.buySkin.connect((player, skinId) => {
		const skin = findSnakeSkin(skinId);
		const balance = store.getState(selectPlayerBalance(player.Name));

		if (skin && balance !== undefined && balance >= skin.price) {
			store.givePlayerSkin(player.Name, skinId);
			store.givePlayerBalance(player.Name, -skin.price);

			remotes.client.alert.fire(player, {
				emoji: "💵",
				color: palette.green,
				message: `You bought the <font color="#fff">${skin.id}</font> skin for <font color="#fff">$${skin.price}</font>. Thank you!`,
				sound: sounds.alert_money,
			});
		} else {
			remotes.client.alert.fire(player, {
				emoji: "🚨",
				color: palette.red,
				message: `Sorry, you cannot afford the <font color="#fff">${skinId}</font> skin yet.`,
				sound: sounds.alert_bad,
			});
		}
	});

	remotes.save.setSkin.connect((player, skinId) => {
		const skin = findSnakeSkin(skinId);
		const inventory = store.getState(selectPlayerSkins(player.Name));

		if (inventory?.includes(skinId)) {
			store.setPlayerSkin(player.Name, skinId);

			remotes.client.alert.fire(player, {
				emoji: "🌈",
				color: skin?.primary || skin?.tint[0] || palette.mauve,
				colorSecondary: skin?.secondary || (skinId === RANDOM_SKIN ? palette.blue : undefined),
				colorMessage: skin?.primary || skin?.tint[0] || palette.mauve,
				message:
					skinId === RANDOM_SKIN
						? 'You are now wearing a <font color="#fff">random</font> skin!'
						: `You are now wearing the <font color="#fff">${skinId}</font> skin!`,
			});
		} else {
			remotes.client.alert.fire(player, {
				emoji: "🚨",
				color: palette.red,
				message: `Sorry, you do not own the <font color="#fff">${skinId}</font> skin.`,
				sound: sounds.alert_bad,
			});
		}
	});
}

================================================================================
// File: src/server/players/services/save.ts
================================================================================
import { createCollection } from "@rbxts/lapis";
import { Players } from "@rbxts/services";
import { store } from "server/store";
import { sounds } from "shared/assets";
import { palette } from "shared/constants/palette";
import { remotes } from "shared/remotes";
import { defaultPlayerSave, playerSaveSchema, selectPlayerSave } from "shared/store/saves";
import { onPlayerAdded, promisePlayerDisconnected } from "shared/utils/player-utils";

const collection = createCollection("players", {
	defaultData: defaultPlayerSave,
	validate: playerSaveSchema,
});

export async function initSaveService() {
	onPlayerAdded(loadPlayerSave);
}

async function loadPlayerSave(player: Player) {
	try {
		const document = await collection.load(`${player.UserId}`);

		if (!player.IsDescendantOf(Players)) {
			return document.close();
		}

		const disconnect = store.subscribe(selectPlayerSave(player.Name), (newSave) => {
			if (newSave) {
				document.write(newSave);
			}
		});

		promisePlayerDisconnected(player).then(() => {
			store.deletePlayerSave(player.Name);
			disconnect();
			document.close();
		});

		store.setPlayerSave(player.Name, document.read());
	} catch (e) {
		warn(`Failed to load data for ${player.Name}: ${e}`);
		fallbackPlayerSave(player);
	}
}

async function fallbackPlayerSave(player: Player) {
	promisePlayerDisconnected(player).then(() => {
		store.deletePlayerSave(player.Name);
	});

	store.setPlayerSave(player.Name, defaultPlayerSave);

	remotes.client.alert.fire(player, {
		emoji: "🚨",
		color: palette.red,
		message: "Roblox may be having issues with your save data. Sorry for the inconvenience!",
		duration: 10,
		sound: sounds.alert_bad,
	});
}

================================================================================
// File: src/server/products/index.server.ts
================================================================================
import { initProductServices } from "./services";

initProductServices();

================================================================================
// File: src/server/products/services/index.ts
================================================================================
import { initMoneyService } from "./money";
import { initProcessReceiptService } from "./process-receipt";

export async function initProductServices() {
	initMoneyService();
	initProcessReceiptService();
}

================================================================================
// File: src/server/products/services/money.ts
================================================================================
import { grantMoney } from "server/rewards";
import { DevProduct, sounds } from "shared/assets";
import { palette } from "shared/constants/palette";
import { remotes } from "shared/remotes";

import { createProduct } from "./process-receipt";

export async function initMoneyService() {
	createProduct(DevProduct.MONEY_100, (player) => giveMoney(player, 100));
	createProduct(DevProduct.MONEY_250, (player) => giveMoney(player, 250));
	createProduct(DevProduct.MONEY_500, (player) => giveMoney(player, 500));
	createProduct(DevProduct.MONEY_1000, (player) => giveMoney(player, 1000));
	createProduct(DevProduct.MONEY_5000, (player) => giveMoney(player, 5000));
}

function giveMoney(player: Player, amount: number) {
	amount = grantMoney(player, amount);

	remotes.client.alert.fire(player, {
		scope: "money",
		emoji: "💸",
		message: `Your purchase of <font color="#fff">$${amount}</font> succeeded! Thank you  ❤️`,
		color: palette.green,
		sound: sounds.alert_money,
	});
}

================================================================================
// File: src/server/products/services/process-receipt.ts
================================================================================
import { MarketplaceService, Players } from "@rbxts/services";

type ProductHandler = (player: Player) => void;

const productHandlers = new Map<number, ProductHandler>();

export async function initProcessReceiptService() {
	MarketplaceService.ProcessReceipt = (receipt) => {
		const player = Players.GetPlayerByUserId(receipt.PlayerId);
		const handler = productHandlers.get(receipt.ProductId);

		if (!player || !handler) {
			return Enum.ProductPurchaseDecision.NotProcessedYet;
		}

		const [success, message] = pcall(handler, player);

		if (!success) {
			warn(message);
			return Enum.ProductPurchaseDecision.NotProcessedYet;
		}

		return Enum.ProductPurchaseDecision.PurchaseGranted;
	};
}

export function createProduct(id: number, handler: ProductHandler) {
	productHandlers.set(id, handler);
}

================================================================================
// File: src/server/rewards/index.ts
================================================================================
export * from "./services";
export * from "./utils";

================================================================================
// File: src/server/rewards/rewards.server.ts
================================================================================
import { initRewardServices } from "./services";

initRewardServices();

================================================================================
// File: src/server/rewards/services/badges.ts
================================================================================
import { BadgeService } from "@rbxts/services";
import { store } from "server/store";
import {
	identifyMilestone,
	ScoreMilestone,
	selectMilestoneRanking,
	selectMilestones,
	selectMilestoneScore,
} from "server/store/milestones";
import { Badge } from "shared/assets";
import { getPlayerByName } from "shared/utils/player-utils";

import { shouldGrantBadge } from "../utils";

const RANKING_BADGES: { [K in number]?: Badge } = {
	1: Badge.FIRST_PLACE,
	2: Badge.SECOND_PLACE,
	3: Badge.THIRD_PLACE,
};

const SCORE_BADGES: { [K in ScoreMilestone]?: Badge } = {
	25_000: Badge.SCORE_25000,
	50_000: Badge.SCORE_50000,
	100_000: Badge.SCORE_100000,
};

export async function initBadgeService() {
	store.observe(selectMilestones, identifyMilestone, (_, id) => {
		return observeMilestone(id);
	});
}

function observeMilestone(id: string) {
	const unsubscribeRanking = store.subscribe(selectMilestoneRanking(id), (ranking) => {
		if (ranking !== undefined && ranking in RANKING_BADGES) {
			tryGrantBadge(id, RANKING_BADGES[ranking]!);
		}
	});

	const unsubscribeScore = store.subscribe(selectMilestoneScore(id), (score) => {
		if (score !== undefined && score in SCORE_BADGES) {
			tryGrantBadge(id, SCORE_BADGES[score]!);
		}
	});

	return () => {
		unsubscribeRanking();
		unsubscribeScore();
	};
}

async function tryGrantBadge(playerName: string, badgeId: number) {
	const player = getPlayerByName(playerName);

	if (player && shouldGrantBadge()) {
		try {
			BadgeService.AwardBadge(player.UserId, badgeId);
		} catch (e) {
			warn(`Failed to grant badge ${Badge[badgeId]} to ${player}: ${e}`);
		}
	}
}

================================================================================
// File: src/server/rewards/services/index.ts
================================================================================
import { runOnce } from "shared/utils/run-once";

import { initBadgeService } from "./badges";
import { initMilestoneService } from "./milestones";
import { initRewardService } from "./rewards";

export const initRewardServices = runOnce(async () => {
	initBadgeService();
	initMilestoneService();
	initRewardService();
});

================================================================================
// File: src/server/rewards/services/milestones.ts
================================================================================
import { store } from "server/store";
import { identifySnake, selectPlayerSnakesById, selectSnakeRanking, selectSnakeScore } from "shared/store/snakes";

import { shouldGrantReward } from "../utils";

export async function initMilestoneService() {
	store.observe(selectPlayerSnakesById, identifySnake, (snake) => {
		return observePlayer(snake.id);
	});
}

function observePlayer(id: string) {
	const unsubscribeRanking = store.subscribe(selectSnakeRanking(id), (ranking) => {
		if (ranking !== undefined && shouldGrantReward()) {
			store.setMilestoneRank(id, ranking);
		}
	});

	const unsubscribeScore = store.subscribe(selectSnakeScore(id), (score) => {
		if (score !== undefined && shouldGrantReward()) {
			store.setMilestoneScore(id, score);
		}
	});

	store.addMilestone(id);

	return () => {
		unsubscribeRanking();
		unsubscribeScore();
		store.removeMilestone(id);
	};
}

================================================================================
// File: src/server/rewards/services/rewards.ts
================================================================================
import { setInterval } from "@rbxts/set-timeout";
import { store } from "server/store";
import {
	identifyMilestone,
	ScoreMilestone,
	selectMilestoneLastKilled,
	selectMilestoneRanking,
	selectMilestones,
	selectMilestoneScore,
} from "server/store/milestones";
import { getSnake } from "server/world";
import { sounds } from "shared/assets";
import { palette } from "shared/constants/palette";
import { remotes } from "shared/remotes";
import { describeSnakeFromScore, selectSnakeRanking } from "shared/store/snakes";
import { getPlayerByName } from "shared/utils/player-utils";

import { grantMoney, shouldGrantReward } from "../utils";

const SCORE_REWARDS: { readonly [K in ScoreMilestone]: number } = {
	1_000: 20,
	5_000: 50,
	10_000: 100,
	25_000: 250,
	50_000: 500,
	100_000: 1_000,
	250_000: 2_500,
	500_000: 5_000,
	1_000_000: 10_000,
};

const RANK_REWARDS: { readonly [ranking: number]: number | undefined } = {
	1: 100,
	2: 75,
	3: 50,
};

const RANK_REWARDS_PASSIVE: { readonly [ranking: number]: number | undefined } = {
	1: 20,
	2: 10,
	3: 5,
};

export async function initRewardService() {
	store.observe(selectMilestones, identifyMilestone, (_, id) => {
		return observeMilestone(id);
	});
}

function observeMilestone(id: string) {
	// When the player hits a new top ranking they haven't hit
	// during their current life, grant them a reward
	const unsubscribeRanking = store.subscribe(selectMilestoneRanking(id), (ranking = 0) => {
		const reward = RANK_REWARDS[ranking];

		if (reward !== undefined && shouldGrantReward()) {
			grantMoneyReward(id, reward, `making <font color="#fff">top ${ranking}</font>`);
		}
	});

	// When the player hits a new score milestone they haven't hit
	// during their current life, grant them a reward
	const unsubscribeScore = store.subscribe(selectMilestoneScore(id), (score) => {
		const reward = score && SCORE_REWARDS[score];

		if (reward !== undefined && shouldGrantReward()) {
			grantMoneyReward(id, reward, `hitting a score of <font color="#fff">${score}</font>`);
		}
	});

	// When the player kills a snake, grant them a reward based on the
	// length of the snake they killed
	const unsubscribeKill = store.observeWhile(selectMilestoneLastKilled(id), (enemyId) => {
		const enemy = getSnake(enemyId);

		if (enemy && shouldGrantReward()) {
			const length = describeSnakeFromScore(enemy.score).length;
			const bounty = math.ceil(length / 3);
			grantMoneyReward(id, bounty, `eliminating <font color="#fff">${enemy.name}</font>`, true);
		}

		store.clearMilestoneKillScore(id);
	});

	// While the player is in the top 3, grant them a reward every minute
	// as long as they stay in the top 3
	const unsubscribePassive = store.observeWhile(
		selectSnakeRanking(id),
		(rank = 4) => rank <= 3,
		() => {
			return setInterval(() => {
				const rank = store.getState(selectSnakeRanking(id)) ?? 0;
				const reward = RANK_REWARDS_PASSIVE[rank];

				if (reward !== undefined && shouldGrantReward()) {
					grantMoneyReward(id, reward, `staying in the <font color="#fff">top ${rank}</font>`);
				}
			}, 180);
		},
	);

	return () => {
		unsubscribeRanking();
		unsubscribeScore();
		unsubscribeKill();
		unsubscribePassive();
	};
}

function grantMoneyReward(id: string, amount: number, reason: string, immediate = false) {
	const player = getPlayerByName(id);

	if (!player) {
		return;
	}

	amount = grantMoney(player, amount);

	// Delay the alert so that it doesn't appear at the same time as
	// other alerts
	Promise.delay(immediate ? 0 : 0.5).then(() => {
		remotes.client.alert.fire(player, {
			scope: "money",
			emoji: "💵",
			color: palette.green,
			message: `You got <font color="#fff">$${amount}</font> for ${reason}!`,
			sound: sounds.alert_money,
		});
	});
}

================================================================================
// File: src/server/rewards/utils.ts
================================================================================
import { store } from "server/store";
import { PREMIUM_BENEFIT } from "shared/constants/core";

export function grantMoney(player: Player, amount: number) {
	if (player.MembershipType === Enum.MembershipType.Premium) {
		amount = math.round(amount * PREMIUM_BENEFIT);
	} else {
		amount = math.round(amount);
	}

	store.givePlayerBalance(player.Name, amount);

	return amount;
}

export function shouldGrantReward() {
	// TODO: use strict behavior once player count is stable
	// return IS_CANARY || IS_EDIT || store.getState(selectPlayerCountIsAbove(5));
	return true;
}

export function shouldGrantBadge() {
	// return IS_CANARY || IS_EDIT || store.getState(selectPlayerCountIsAbove(10));
	return true;
}

================================================================================
// File: src/server/store/index.ts
================================================================================
import { combineProducers, InferState } from "@rbxts/reflex";
import { slices } from "shared/store";
import { profilerMiddleware } from "shared/store/middleware/profiler";

import { broadcasterMiddleware } from "./middleware/broadcaster";
import { milestoneSlice } from "./milestones";

export type RootState = InferState<typeof store>;

export function createStore() {
	const store = combineProducers({
		...slices,
		milestones: milestoneSlice,
	});

	store.applyMiddleware(profilerMiddleware, broadcasterMiddleware());

	return store;
}

export const store = createStore();

================================================================================
// File: src/server/store/middleware/broadcaster.ts
================================================================================
import { createBroadcaster, ProducerMiddleware } from "@rbxts/reflex";
import { Players } from "@rbxts/services";
import { IS_EDIT, WORLD_TICK } from "shared/constants/core";
import { remotes } from "shared/remotes";
import { serializeState, SharedStateSerialized } from "shared/serdes";
import { SharedState, slices } from "shared/store";

export function broadcasterMiddleware(): ProducerMiddleware {
	if (IS_EDIT) {
		return () => (dispatch) => dispatch;
	}

	const hydrated = new Set<number>();

	const broadcaster = createBroadcaster({
		producers: slices,
		dispatchRate: WORLD_TICK,
		hydrateRate: 60,
		dispatch: (player, actions) => {
			remotes.store.dispatch.fire(player, actions);
		},
		hydrate: (player, state) => {
			remotes.store.hydrate.fire(player, state as unknown as SharedStateSerialized);
		},
		beforeHydrate: (player, state) => {
			const isInitialHydrate = !hydrated.has(player.UserId);
			const serialized = serializeState(state, isInitialHydrate) as unknown as SharedState;

			if (isInitialHydrate) {
				hydrated.add(player.UserId);
				return serialized;
			}

			// exclude candy to reduce network traffic
			return {
				...serialized,
				candy: undefined,
			};
		},
	});

	remotes.store.start.connect((player) => {
		broadcaster.start(player);
	});

	Players.PlayerRemoving.Connect((player) => {
		hydrated.delete(player.UserId);
	});

	return broadcaster.middleware;
}

================================================================================
// File: src/server/store/milestones/index.ts
================================================================================
export * from "./milestone-selectors";
export * from "./milestone-slice";

================================================================================
// File: src/server/store/milestones/milestone-selectors.ts
================================================================================
import { RootState } from "..";
import { MilestoneEntity } from "./milestone-slice";

export const identifyMilestone = (milestone: MilestoneEntity, index: string) => {
	return index;
};

export const selectMilestones = (state: RootState) => {
	return state.milestones;
};

export const selectMilestone = (playerId: string) => {
	return (state: RootState) => {
		return state.milestones[playerId];
	};
};

export const selectMilestoneRanking = (playerId: string) => {
	return (state: RootState) => {
		return state.milestones[playerId]?.topRank;
	};
};

export const selectMilestoneScore = (playerId: string) => {
	return (state: RootState) => {
		return state.milestones[playerId]?.topScore;
	};
};

export const selectMilestoneLastKilled = (playerId: string) => {
	return (state: RootState) => {
		return state.milestones[playerId]?.lastKilled;
	};
};

================================================================================
// File: src/server/store/milestones/milestone-slice.ts
================================================================================
import { createProducer } from "@rbxts/reflex";
import { mapProperty } from "shared/utils/object-utils";

export type MilestoneState = {
	readonly [K in string]?: MilestoneEntity;
};

export interface MilestoneEntity {
	readonly topScore?: ScoreMilestone;
	readonly topRank: number;
	readonly lastKilled?: string;
}

export type ScoreMilestone = (typeof SCORE_MILESTONES)[number];

export const SCORE_MILESTONES = [1_000, 5_000, 10_000, 25_000, 50_000, 100_000, 250_000, 500_000, 1_000_000] as const;

const SCORE_MILESTONES_REVERSE = SCORE_MILESTONES.reduce<ScoreMilestone[]>((acc, score, index) => {
	acc[SCORE_MILESTONES.size() - index] = score;
	return acc;
}, []);

const defaultEntity: MilestoneEntity = {
	topRank: 4,
};

const initialState: MilestoneState = {};

export const milestoneSlice = createProducer(initialState, {
	addMilestone: (state, playerId: string) => ({
		...state,
		[playerId]: { ...defaultEntity },
	}),

	removeMilestone: (state, playerId: string) => ({
		...state,
		[playerId]: undefined,
	}),

	clearMilestoneKillScore: (state, playerId: string) => {
		return mapProperty(state, playerId, (milestone) => ({
			...milestone,
			lastKilled: undefined,
		}));
	},

	setMilestoneRank: (state, playerId: string, ranking: number) => {
		return mapProperty(state, playerId, (milestone) => ({
			...milestone,
			topRank: math.min(ranking, milestone.topRank),
		}));
	},

	setMilestoneScore: (state, playerId: string, score: number) => {
		return mapProperty(state, playerId, (milestone) => {
			const nextMilestone = math.max(
				SCORE_MILESTONES_REVERSE.find((milestone) => score >= milestone) || 0,
				milestone.topScore || 0,
			);

			if (nextMilestone === 0) {
				return milestone;
			}

			return {
				...milestone,
				topScore: nextMilestone as ScoreMilestone,
			};
		});
	},

	playerKilledSnake: (state, playerId: string, lastKilled: string) => {
		return mapProperty(state, playerId, (milestone) => ({
			...milestone,
			lastKilled,
		}));
	},
});

================================================================================
// File: src/server/world/constants.ts
================================================================================
import { WORLD_TICK } from "shared/constants/core";
import { CandyType } from "shared/store/candy";

// The world updates every world tick, which is less than the server's
// heartbeat rate. This means that we can schedule different cycles to run
// on different frames to reduce the load on a single frame.
export const SNAKE_TICK_PHASE = 0;
export const CANDY_TICK_PHASE = 0.33 * WORLD_TICK;
export const COLLISION_TICK_PHASE = 0.66 * WORLD_TICK;

export const CANDY_LIMITS: { readonly [K in CandyType]: number } = {
	[CandyType.Default]: 2048,
	[CandyType.Dropping]: 256,
	[CandyType.Loot]: 256,
};

================================================================================
// File: src/server/world/index.ts
================================================================================
export * from "./constants";
export * from "./services";
export * from "./services/candy";
export * from "./services/collision";
export * from "./services/snakes";
export * from "./utils";

================================================================================
// File: src/server/world/services/candy/candy-helpers.ts
================================================================================
import { setInterval, setTimeout } from "@rbxts/set-timeout";
import { store } from "server/store";
import { CANDY_LIMITS } from "server/world/constants";
import { getCandy, getRandomPointNearWorldOrigin, getSnake } from "server/world/utils";
import { getRandomAccent } from "shared/constants/palette";
import { getSnakeSkinForTracer } from "shared/constants/skins";
import { CandyEntity, CandyType, selectCandyById, selectCandyCount } from "shared/store/candy";
import { describeSnakeFromScore, selectSnakeIsBoosting } from "shared/store/snakes";
import { Grid } from "shared/utils/grid";
import { fillArray } from "shared/utils/object-utils";

const random = new Random();

export const candyGrid = new Grid<{ id: string }>(5);

let nextCandyId = 0;

export function createCandy(patch?: Partial<CandyEntity>): CandyEntity {
	const random = new Random();

	const candy: CandyEntity = {
		id: `${nextCandyId++}`,
		type: CandyType.Default,
		size: math.min(random.NextInteger(1, 4), random.NextInteger(1, 5)),
		position: getRandomPointNearWorldOrigin(0.98),
		color: getRandomAccent(),
		...patch,
	};

	candyGrid.insert(candy.position, { id: candy.id });

	return candy;
}

export function removeCandy(id: string, eatenAt?: Vector2) {
	const candy = store.getState(selectCandyById(id));

	if (!candy) {
		return;
	}

	store.setCandyEatenAt(id, eatenAt ?? candy.position);
	candyGrid.remove(candy.position);

	setTimeout(() => {
		store.removeCandy(id);
	}, 5);
}

export function eatCandy(candyId: string, snakeId: string) {
	const candy = getCandy(candyId);
	const snake = getSnake(snakeId);

	if (snake && candy && !candy.eatenAt) {
		removeCandy(candy.id, snake.head);
		store.incrementSnakeScore(snake.id, candy.size);
	}
}

export function populateCandy(amount: number) {
	store.populateCandy(fillArray(amount, () => createCandy()));
}

export function removeCandyIfAtLimit(candyType: CandyType) {
	const max = CANDY_LIMITS[candyType];
	const count = store.getState(selectCandyCount(candyType));

	if (count > max) {
		store.bulkRemoveStaleCandy(candyType, count - max);
	}
}

export function dropCandyWhileBoosting(id: string) {
	return store.observeWhile(selectSnakeIsBoosting(id), () => {
		let previousTail = Vector2.zero;

		const dropCandy = () => {
			const snake = getSnake(id);

			if (snake) {
				const description = describeSnakeFromScore(snake.score);
				const tail: Vector2 | undefined = snake.tracers[snake.tracers.size() - 1];

				if (tail && tail.sub(previousTail).Magnitude > description.radius * 2) {
					previousTail = tail;
					store.addCandy(createCandy({ position: tail, type: CandyType.Dropping }));
				}
			}
		};

		const decrementScore = () => {
			const snake = getSnake(id);

			if (snake) {
				const maxDecrease = math.clamp(math.round(3 + 0.001 * snake.score), 2, 10);
				store.incrementSnakeScore(id, random.NextInteger(-maxDecrease, -1));
			}
		};

		decrementScore();

		return setInterval(() => {
			decrementScore();
			dropCandy();
		}, 0.15);
	});
}

export function dropCandyOnDeath(id: string): void {
	const snake = getSnake(id);

	if (!snake) {
		return;
	}

	const tracers = [...snake.tracers, snake.head];
	const tracerRadius = describeSnakeFromScore(snake.score).radius;
	const candyPositions: Vector2[] = [];
	let lastTracer: Vector2 | undefined;

	for (const tracer of tracers) {
		// to prevent candy bunching up in certain areas, don't insert the
		// position of the tracer if it's too close to the last spawned candy
		if (lastTracer && tracer.sub(lastTracer).Magnitude < 0.25 * tracerRadius) {
			continue;
		}

		lastTracer = tracer;

		// create multiple candies on this tracer based on radius
		const amount = math.round(random.NextNumber(1, math.max(tracerRadius, 1)));

		for (const _ of $range(1, amount)) {
			const x = random.NextNumber(-1, 1) * tracerRadius;
			const y = random.NextNumber(-1, 1) * tracerRadius;

			candyPositions.push(tracer.add(new Vector2(x, y)));
		}
	}

	// the total worth of the loot should scale logarithmically with the
	// snake's score, but not exceed the score itself
	const sum = math.min(8000 * math.log10(snake.score / 3000 + 1), snake.score);
	const total = candyPositions.size();

	const candies = candyPositions.mapFiltered((position, index) => {
		const skin = getSnakeSkinForTracer(snake.skin, index);

		return createCandy({
			position,
			type: CandyType.Loot,
			size: math.ceil(sum / total),
			color: skin.boostTint || skin.tint,
		});
	});

	store.populateCandy(candies);
}

================================================================================
// File: src/server/world/services/candy/candy-tick.ts
================================================================================
import { store } from "server/store";
import { getCandy } from "server/world/utils";
import { describeSnakeFromScore, selectSnakesById } from "shared/store/snakes";

import { candyGrid, eatCandy } from "./candy-helpers";

export function onCandyTick() {
	const snakes = store.getState(selectSnakesById);

	for (const [, snake] of pairs(snakes)) {
		if (snake.dead) {
			continue;
		}

		const range = describeSnakeFromScore(snake.score).radius * 1.25 + 1;

		const nearest = candyGrid.nearest(snake.head, range, (point) => {
			const candy = getCandy(point.metadata.id);
			return candy !== undefined && !candy.eatenAt;
		});

		if (nearest) {
			eatCandy(nearest.metadata.id, snake.id);
		}
	}
}

================================================================================
// File: src/server/world/services/candy/candy.ts
================================================================================
import { store } from "server/store";
import { CANDY_LIMITS, CANDY_TICK_PHASE } from "server/world/constants";
import { WORLD_TICK } from "shared/constants/core";
import { CandyType, selectCandyCount } from "shared/store/candy";
import { identifySnake, selectAliveSnakesById } from "shared/store/snakes";
import { createScheduler } from "shared/utils/scheduler";

import { dropCandyOnDeath, dropCandyWhileBoosting, populateCandy, removeCandyIfAtLimit } from "./candy-helpers";
import { onCandyTick } from "./candy-tick";

export async function initCandyService() {
	createScheduler({
		name: "candy",
		tick: WORLD_TICK,
		phase: CANDY_TICK_PHASE,
		onTick: onCandyTick,
	});

	// keep the amount of candy in the world at a constant size
	// if the amount of candy is less than the max, create more
	store.subscribe(
		selectCandyCount(CandyType.Default),
		(count) => count < CANDY_LIMITS[CandyType.Default],
		(count) => populateCandy(CANDY_LIMITS[CandyType.Default] - count),
	);

	// delete excess loot candy if it is over the limit
	store.subscribe(
		selectCandyCount(CandyType.Loot),
		(count) => count > CANDY_LIMITS[CandyType.Loot],
		() => removeCandyIfAtLimit(CandyType.Loot),
	);

	// delete excess boost candy if it is over the limit
	store.subscribe(
		selectCandyCount(CandyType.Dropping),
		(count) => count > CANDY_LIMITS[CandyType.Dropping],
		() => removeCandyIfAtLimit(CandyType.Dropping),
	);

	store.observe(selectAliveSnakesById, identifySnake, ({ id }) => {
		// while boosting, decrement the snake's score and create candy
		// on the snake's tail
		const disconnect = dropCandyWhileBoosting(id);

		// when the snake dies, create candy on the snake's tracers
		return () => {
			disconnect();
			dropCandyOnDeath(id);
		};
	});

	populateCandy(CANDY_LIMITS[CandyType.Default]);
}

================================================================================
// File: src/server/world/services/candy/index.ts
================================================================================
export * from "./candy";
export * from "./candy-helpers";
export * from "./candy-tick";

================================================================================
// File: src/server/world/services/collision/collision-tick.ts
================================================================================
import { store } from "server/store";
import { getSnake, killSnake } from "server/world/utils";
import { WORLD_BOUNDS } from "shared/constants/core";
import { describeSnakeFromScore, selectSnakesSorted, SnakeEntity } from "shared/store/snakes";

import { snakeGrid } from "../snakes";

export function onCollisionTick() {
	// in a head-on collision, the snake with the lowest score is killed
	const snakes = store.getState(selectSnakesSorted((a, b) => a.score < b.score));

	for (const snake of snakes) {
		if (snake.dead) {
			continue;
		}

		if (isCollidingWithWall(snake)) {
			killSnake(snake.id);
			continue;
		}

		const enemy = isCollidingWithSnake(snake);

		if (enemy) {
			killSnake(snake.id);
			store.playerKilledSnake(enemy.id, snake.id);
			store.incrementSnakeEliminations(enemy.id);
		}
	}
}

function isCollidingWithWall(snake: SnakeEntity) {
	const radius = describeSnakeFromScore(snake.score).radius;
	return snake.head.Magnitude + radius > WORLD_BOUNDS;
}

function isCollidingWithSnake(snake: SnakeEntity) {
	const radius = describeSnakeFromScore(snake.score).radius;

	const nearest = snakeGrid.nearest(snake.head, radius + 5, (data) => {
		const enemy = getSnake(data.metadata.id);
		return enemy !== undefined && !enemy.dead && enemy.id !== snake.id;
	});

	const enemy = nearest && getSnake(nearest.metadata.id);

	if (!enemy) {
		return;
	}

	const enemyRadius = describeSnakeFromScore(enemy.score).radius;
	const distance = nearest.position.sub(snake.head).Magnitude;

	if (distance <= 0.8 * (radius + enemyRadius)) {
		return enemy;
	}
}

================================================================================
// File: src/server/world/services/collision/collision.ts
================================================================================
import { COLLISION_TICK_PHASE } from "server/world/constants";
import { WORLD_TICK } from "shared/constants/core";
import { createScheduler } from "shared/utils/scheduler";

import { onCollisionTick } from "./collision-tick";

export async function initCollisionService() {
	createScheduler({
		name: "collision",
		tick: WORLD_TICK,
		phase: COLLISION_TICK_PHASE,
		onTick: onCollisionTick,
	});
}

================================================================================
// File: src/server/world/services/collision/index.ts
================================================================================
export * from "./collision";
export * from "./collision-tick";

================================================================================
// File: src/server/world/services/index.ts
================================================================================
import { runOnce } from "shared/utils/run-once";

import { initCandyService } from "./candy";
import { initCollisionService } from "./collision";
import { initSnakeService } from "./snakes";

export const initWorldServices = runOnce(async () => {
	initCandyService();
	initCollisionService();
	initSnakeService();
});

================================================================================
// File: src/server/world/services/snakes/index.ts
================================================================================
export * from "./snake-grid";
export * from "./snake-tick";
export * from "./snakes";

================================================================================
// File: src/server/world/services/snakes/snake-grid.ts
================================================================================
import { store } from "server/store";
import { selectSnakesById } from "shared/store/snakes";
import { Grid } from "shared/utils/grid";

export const snakeGrid = new Grid<{ id: string }>(10);

export function updateSnakeGrid() {
	const snakes = store.getState(selectSnakesById);

	snakeGrid.clear();

	for (const [, snake] of pairs(snakes)) {
		if (snake.dead) {
			continue;
		}

		snakeGrid.insert(snake.head, { id: snake.id });

		for (const tracer of snake.tracers) {
			snakeGrid.insert(tracer, { id: snake.id });
		}
	}
}

================================================================================
// File: src/server/world/services/snakes/snake-tick.ts
================================================================================
import { store } from "server/store";

import { updateSnakeGrid } from "./snake-grid";

const nextSnakeInputs = new Map<string, number>();

export function onSnakeTick() {
	consumeNextSnakeInputs();
	store.snakeTick();
	updateSnakeGrid();
}

export function registerSnakeInput(id: string, angle: number) {
	nextSnakeInputs.set(id, angle);
}

export function deleteSnakeInput(id: string) {
	nextSnakeInputs.delete(id);
}

function consumeNextSnakeInputs() {
	for (const [id, angle] of nextSnakeInputs) {
		store.turnSnake(id, angle);
	}

	nextSnakeInputs.clear();
}

================================================================================
// File: src/server/world/services/snakes/snakes.ts
================================================================================
import { Players } from "@rbxts/services";
import { store } from "server/store";
import { SNAKE_TICK_PHASE } from "server/world/constants";
import { getSafePointInWorld, killSnake, playerIsSpawned } from "server/world/utils";
import { WORLD_TICK } from "shared/constants/core";
import { remotes } from "shared/remotes";
import { defaultPlayerSave, RANDOM_SKIN, selectPlayerSave } from "shared/store/saves";
import { createScheduler } from "shared/utils/scheduler";

import { deleteSnakeInput, onSnakeTick, registerSnakeInput } from "./snake-tick";

export async function initSnakeService() {
	createScheduler({
		name: "snake",
		tick: WORLD_TICK,
		phase: SNAKE_TICK_PHASE,
		onTick: onSnakeTick,
	});

	remotes.snake.spawn.connect((player) => {
		if (playerIsSpawned(player)) {
			return;
		}

		const save = store.getState(selectPlayerSave(player.Name)) || defaultPlayerSave;

		// random skin starts at one because zero is reserved
		const randomSkin = save.skins[math.random(1, save.skins.size() - 1)];
		const currentSkin = save.skin;

		store.addSnake(player.Name, {
			name: player.DisplayName,
			head: getSafePointInWorld(),
			skin: currentSkin !== RANDOM_SKIN ? currentSkin : randomSkin,
			score: 10,
		});
	});

	remotes.snake.move.connect((player, angle) => {
		registerSnakeInput(player.Name, angle);
	});

	remotes.snake.boost.connect((player, boost) => {
		store.boostSnake(player.Name, boost);
	});

	remotes.snake.kill.connect((player) => {
		killSnake(player.Name);
	});

	Players.PlayerRemoving.Connect((player) => {
		deleteSnakeInput(player.Name);
		killSnake(player.Name);
	});
}

================================================================================
// File: src/server/world/utils.ts
================================================================================
import { setTimeout } from "@rbxts/set-timeout";
import { store } from "server/store";
import { WORLD_BOUNDS } from "shared/constants/core";
import { selectCandyById } from "shared/store/candy";
import { selectSnakeById } from "shared/store/snakes";

import { snakeGrid } from "./services/snakes/snake-grid";

const MIN_SAFE_DISTANCE = 10;

export function getSnake(snakeId: string) {
	return store.getState(selectSnakeById(snakeId));
}

export function getCandy(candyId: string) {
	return store.getState(selectCandyById(candyId));
}

export function killSnake(snakeId: string) {
	store.setSnakeIsDead(snakeId);

	setTimeout(() => {
		store.removeSnake(snakeId);
	}, 2);
}

export function playerIsSpawned(player: Player) {
	return getSnake(player.Name) !== undefined;
}

/**
 * Returns a random point in the world. If the margin is specified,
 * the point will be within this percentage of the world bounds.
 */
export function getRandomPointInWorld(margin = 1) {
	const random = new Random();
	let position = new Vector2();

	do {
		const x = random.NextNumber(-margin, margin);
		const y = random.NextNumber(-margin, margin);
		position = new Vector2(x, y).mul(WORLD_BOUNDS);
	} while (position.Magnitude > WORLD_BOUNDS);

	return position;
}

/**
 * Returns a random point in the world that is more likely to be
 * closer to the origin.
 */
export function getRandomPointNearWorldOrigin(margin = 1, passes = 2) {
	let currentPosition = new Vector2();
	let currentDistance = math.huge;

	for (const _ of $range(0, passes)) {
		const position = getRandomPointInWorld(margin);
		const distance = position.Magnitude;

		if (distance < currentDistance) {
			currentPosition = position;
			currentDistance = distance;
		}
	}

	return currentPosition;
}

/**
 * Returns a safe point in the world. This should be a point that is
 * not too close to any other snake, but not the farthest point either.
 */
export function getSafePointInWorld() {
	const spawns: { position: Vector2; safety: number }[] = [];

	const scoreSafety = (spawn: Vector2) => {
		const nearest = snakeGrid.nearest(spawn, MIN_SAFE_DISTANCE * 2);
		const distance = nearest ? nearest.position.sub(spawn).Magnitude : math.huge;
		return distance;
	};

	for (const _ of $range(0, 10)) {
		const position = getRandomPointNearWorldOrigin(0.8);
		const safety = scoreSafety(position);
		spawns.push({ position, safety });
	}

	const sorted = spawns.sort((a, b) => a.safety < b.safety);

	// Find the first safe spawn that is still close to another snake
	for (const spawn of sorted) {
		if (spawn.safety > MIN_SAFE_DISTANCE) {
			return spawn.position;
		}
	}

	return sorted[sorted.size() - 1].position;
}

================================================================================
// File: src/server/world/world.server.ts
================================================================================
import { initWorldServices } from "./services";

initWorldServices();

================================================================================
// File: src/shared/assets/badges/index.ts
================================================================================
import { IS_PROD } from "shared/constants/core";

export enum Badge {
	SCORE_25000 = IS_PROD ? 2152586187 : 2152587210,
	SCORE_50000 = IS_PROD ? 2152586186 : 2152587209,
	SCORE_100000 = IS_PROD ? 2152586185 : 2152587208,
	THIRD_PLACE = IS_PROD ? 2152586184 : 2152587207,
	SECOND_PLACE = IS_PROD ? 2152586183 : 2152587206,
	FIRST_PLACE = IS_PROD ? 2152586182 : 2152587205,
}

================================================================================
// File: src/shared/assets/images/index.d.ts
================================================================================
export const images: {
	readonly skins: {
		readonly snake_eye_left: string;
		readonly snake_eye_right: string;
		readonly snake_no_eye: string;
		readonly snake_main: string;
		readonly snake_stars: string;
		readonly snake_jelly: string;
		readonly snake_jelly_red: string;
		readonly snake_jelly_blue: string;
		readonly snake_canada: string;
		readonly snake_outlined: string;
		readonly snake_black_ice: string;
		readonly snake_awesome_body: string;
		readonly snake_awesome_head: string;
		readonly snake_stare_body: string;
		readonly snake_stare_head: string;
		readonly snake_vamp_body: string;
		readonly snake_vamp_head: string;
	};
	readonly ui: {
		readonly alert_dismiss: string;
		readonly backdrop: string;
		readonly blur: string;
		readonly button_glow_top: string;
		readonly circle: string;
		readonly heart: string;
		readonly heart_glow: string;
		readonly map_crosshair: string;
		readonly map_cursor: string;
		readonly menu_title: string;
		readonly nav_skins: string;
		readonly nav_skins_alt: string;
		readonly nav_heart: string;
		readonly nav_heart_alt: string;
		readonly nav_home: string;
		readonly nav_home_alt: string;
		readonly skin_card_gradient: string;
		readonly skin_indicator: string;
		readonly skin_indicator_locked: string;
		readonly vignette: string;
		readonly tile_stripes: string;
		readonly leader_pointer: string;
	};
};

================================================================================
// File: src/shared/assets/images/init.lua
================================================================================
-- This file was @generated by Tarmac. It is not intended for manual editing.
return {
	images = {
		skins = {
			snake_awesome_body = "rbxassetid://14884183308",
			snake_awesome_head = "rbxassetid://14884183395",
			snake_black_ice = "rbxassetid://14836390041",
			snake_canada = "rbxassetid://14884212831",
			snake_eye_left = "rbxassetid://14835197016",
			snake_eye_right = "rbxassetid://14835197048",
			snake_jelly = "rbxassetid://14835608619",
			snake_jelly_blue = "rbxassetid://14836431074",
			snake_jelly_red = "rbxassetid://14836431136",
			snake_main = "rbxassetid://14884217464",
			snake_no_eye = "rbxassetid://14883700305",
			snake_outlined = "rbxassetid://14884183614",
			snake_stare_body = "rbxassetid://14884183698",
			snake_stare_head = "rbxassetid://14884183771",
			snake_stars = "rbxassetid://14884212936",
			snake_vamp_body = "rbxassetid://14884117497",
			snake_vamp_head = "rbxassetid://14884117564",
		},
		ui = {
			alert_dismiss = "rbxassetid://14402269904",
			backdrop = "rbxassetid://14921324346",
			blur = "rbxassetid://14120516187",
			button_glow_top = "rbxassetid://14367671668",
			circle = "rbxassetid://14120516288",
			heart = "rbxassetid://14789182848",
			heart_glow = "rbxassetid://14789182940",
			leader_pointer = "rbxassetid://14917242400",
			map_crosshair = "rbxassetid://14127467312",
			map_cursor = "rbxassetid://14127465927",
			menu_title = "rbxassetid://14120569384",
			nav_heart = "rbxassetid://14183565399",
			nav_heart_alt = "rbxassetid://14916522329",
			nav_home = "rbxassetid://14183565573",
			nav_home_alt = "rbxassetid://14183565737",
			nav_skins = "rbxassetid://14916522483",
			nav_skins_alt = "rbxassetid://14916522599",
			skin_card_gradient = "rbxassetid://14271107508",
			skin_indicator = "rbxassetid://14282707759",
			skin_indicator_locked = "rbxassetid://14282707833",
			tile_stripes = "rbxassetid://14137143166",
			vignette = "rbxassetid://14120516929",
		},
	},
}

================================================================================
// File: src/shared/assets/index.ts
================================================================================
export * from "./badges";
export * from "./images";
export * from "./products";
export * from "./sounds";

================================================================================
// File: src/shared/assets/products/index.ts
================================================================================
import { IS_PROD } from "shared/constants/core";

export enum DevProduct {
	MONEY_100 = IS_PROD ? 1645763196 : 1645608670,
	MONEY_250 = IS_PROD ? 1645763141 : 1645608591,
	MONEY_500 = IS_PROD ? 1645763105 : 1645608558,
	MONEY_1000 = IS_PROD ? 1645763169 : 1645608626,
	MONEY_5000 = IS_PROD ? 1645763080 : 1645608526,
}

================================================================================
// File: src/shared/assets/sounds/index.ts
================================================================================
export * from "./play-button-sound";
export * from "./play-sound";
export * from "./sounds";

================================================================================
// File: src/shared/assets/sounds/play-button-sound.ts
================================================================================
import { throttle } from "@rbxts/set-timeout";

import { playSound } from "./play-sound";
import { sounds } from "./sounds";

export type ButtonSoundVariant = "default" | "alt" | "none";

const BUTTON_DELAY = 0.1;

let lastPressed: number | undefined;

export const playButtonDown = throttle((variant: ButtonSoundVariant = "default") => {
	if (variant === "none" || (lastPressed !== undefined && os.clock() - lastPressed < 2 * BUTTON_DELAY)) {
		return;
	}

	lastPressed = os.clock();

	return playSound(variant === "default" ? sounds.button_down : sounds.button_down_alt, {
		volume: 0.25,
	});
}, 2 * BUTTON_DELAY);

export async function playButtonUp(variant: ButtonSoundVariant = "default") {
	if (variant === "none" || lastPressed === undefined) {
		return;
	}

	const difference = os.clock() - lastPressed;

	lastPressed = undefined;

	if (difference < BUTTON_DELAY) {
		task.wait(BUTTON_DELAY - difference);
	}

	return playSound(variant === "default" ? sounds.button_up : sounds.button_up_alt, {
		volume: 0.25,
	});
}

================================================================================
// File: src/shared/assets/sounds/play-sound.ts
================================================================================
import { SoundService } from "@rbxts/services";
import { IS_EDIT } from "shared/constants/core";

export interface SoundOptions {
	volume?: number;
	speed?: number;
	looped?: boolean;
	parent?: Instance;
}

export function createSound(
	soundId: string,
	{ volume = 0.5, speed = 1, looped = false, parent = SoundService }: SoundOptions = {},
) {
	const sound = new Instance("Sound");

	sound.SoundId = soundId;
	sound.Volume = volume;
	sound.PlaybackSpeed = speed;
	sound.Looped = looped;
	sound.Parent = parent;

	return sound;
}

export function playSound(soundId: string, options?: SoundOptions) {
	if (IS_EDIT) {
		return;
	}

	const sound = createSound(soundId, options);

	sound.Ended.Connect(() => sound.Destroy());
	sound.Play();

	return sound;
}

================================================================================
// File: src/shared/assets/sounds/sounds.ts
================================================================================
/**
 * @see https://kenney.nl/assets/interface-sounds
 */
export const sounds = {
	alert_bad: "rbxgameasset://Audio/alert_bad",
	alert_dismiss: "rbxgameasset://Audio/alert_dismiss",
	alert_money: "rbxgameasset://Audio/alert_money",
	alert_neutral: "rbxgameasset://Audio/alert_neutral",
	boost_start: "rbxgameasset://Audio/boost_start",
	boost_stop: "rbxgameasset://Audio/boost_stop",
	button_down_alt: "rbxgameasset://Audio/button_down_alt",
	button_down: "rbxgameasset://Audio/button_down",
	button_up_alt: "rbxgameasset://Audio/button_up_alt",
	button_up: "rbxgameasset://Audio/button_up",
	error_1: "rbxgameasset://Audio/error_1",
	error_2: "rbxgameasset://Audio/error_2",
	error_3: "rbxgameasset://Audio/error_3",
	navigate: "rbxgameasset://Audio/navigate",
	start_game: "rbxgameasset://Audio/start_game",
	whoosh: "rbxgameasset://Audio/whoosh",
};

================================================================================
// File: src/shared/constants/palette.ts
================================================================================
import Object from "@rbxts/object-utils";

/**
 * Catppuccin Mocha Accents
 * @see https://github.com/catppuccin/catppuccin
 */
export const accents = {
	rosewater: Color3.fromRGB(245, 224, 220),
	flamingo: Color3.fromRGB(242, 205, 205),
	pink: Color3.fromRGB(245, 194, 231),
	mauve: Color3.fromRGB(203, 166, 247),
	red: Color3.fromRGB(243, 139, 168),
	maroon: Color3.fromRGB(235, 160, 172),
	peach: Color3.fromRGB(250, 179, 135),
	yellow: Color3.fromRGB(249, 226, 175),
	green: Color3.fromRGB(166, 227, 161),
	teal: Color3.fromRGB(148, 226, 213),
	sky: Color3.fromRGB(137, 220, 235),
	sapphire: Color3.fromRGB(116, 199, 236),
	blue: Color3.fromRGB(137, 180, 250),
	lavender: Color3.fromRGB(180, 190, 254),
} as const;

/**
 * Catppuccin Mocha Neutrals
 * @see https://github.com/catppuccin/catppuccin
 */
export const neutrals = {
	text: Color3.fromRGB(205, 214, 244),
	subtext1: Color3.fromRGB(186, 194, 222),
	subtext0: Color3.fromRGB(166, 173, 200),
	overlay2: Color3.fromRGB(147, 153, 178),
	overlay1: Color3.fromRGB(127, 132, 156),
	overlay0: Color3.fromRGB(108, 112, 134),
	surface2: Color3.fromRGB(88, 91, 112),
	surface1: Color3.fromRGB(69, 71, 90),
	surface0: Color3.fromRGB(49, 50, 68),
	base: Color3.fromRGB(30, 30, 46),
	mantle: Color3.fromRGB(24, 24, 37),
	crust: Color3.fromRGB(17, 17, 27),
} as const;

const base = {
	white: Color3.fromRGB(255, 255, 255),
	offwhite: Color3.fromRGB(234, 238, 253),
	black: Color3.fromRGB(0, 0, 0),
};

/**
 * Catppuccin Mocha Palette
 * @see https://github.com/catppuccin/catppuccin
 */
export const palette = {
	...accents,
	...neutrals,
	...base,
} as const;

/**
 * An ordered list of all the accent colors
 */
export const accentList = [
	"rosewater",
	"flamingo",
	"pink",
	"mauve",
	"red",
	"maroon",
	"peach",
	"yellow",
	"green",
	"teal",
	"sky",
	"sapphire",
	"blue",
	"lavender",
] as const;

export function getRandomAccent(): Color3 {
	const values = Object.values(accents);
	return values[math.random(0, values.size() - 1)];
}

================================================================================
// File: src/shared/constants/skins/index.ts
================================================================================
import { baseSnakeSkins, snakeSkins } from "./skins";
import { SnakeSkin } from "./types";

export * from "./skins";
export * from "./types";

const snakeSkinsById = new Map(snakeSkins.map((skin) => [skin.id, skin]));

/**
 * Returns the snake skin with the given id, or a default skin
 * if the id is invalid.
 */
export function getSnakeSkin(id: string): SnakeSkin {
	return snakeSkinsById.get(id) || baseSnakeSkins[0];
}

/**
 * Returns the snake skin with the given id, or undefined.
 */
export function findSnakeSkin(id: string): SnakeSkin | undefined {
	return snakeSkinsById.get(id);
}

/**
 * Returns the texture and tint of a snake tracer at this index.
 * Used to apply repeating patterns to the snake.
 */
export function getSnakeSkinForTracer(
	id: string,
	index: number,
): { readonly texture: string; readonly tint: Color3; readonly boostTint?: Color3 } {
	const { texture, tint, boostTint } = getSnakeSkin(id);

	return {
		texture: texture[index % texture.size()],
		tint: tint[index % tint.size()],
		boostTint: boostTint && boostTint[index % boostTint.size()],
	};
}

/**
 * Returns a random default snake skin.
 */
export function getRandomBaseSnakeSkin(): SnakeSkin {
	return baseSnakeSkins[math.random(0, baseSnakeSkins.size() - 1)];
}

================================================================================
// File: src/shared/constants/skins/skins.ts
================================================================================
import { images } from "shared/assets";
import { darken } from "shared/utils/color-utils";

import { accentList, accents, palette } from "../palette";
import { defaultSnakeSkin, SnakeSkin } from "./types";
import { blendColorSequence, duplicate } from "./utils";

const catppuccinSnakeSkins: readonly SnakeSkin[] = accentList.map((id) => {
	return {
		...defaultSnakeSkin,
		id,
		tint: blendColorSequence([accents[id], accents[id].Lerp(palette.black, 0.1)], 12),
	};
});

export const snakeSkins: readonly SnakeSkin[] = [
	...catppuccinSnakeSkins,

	{
		...defaultSnakeSkin,
		id: "silver",
		price: 100,
		tint: [palette.text],
	},

	{
		...defaultSnakeSkin,
		id: "usa",
		price: 100,
		tint: [...duplicate([palette.red, palette.offwhite], 4), ...duplicate([palette.white], 8)],
		texture: [...duplicate([images.skins.snake_main], 8), ...duplicate([images.skins.snake_stars], 8)],
		boostTint: [...duplicate([palette.red, palette.offwhite], 4), ...duplicate([palette.blue], 8)],
		primary: Color3.fromRGB(59, 77, 138),
		secondary: Color3.fromRGB(43, 57, 105),
	},

	{
		...defaultSnakeSkin,
		id: "canada",
		price: 100,
		tint: [palette.red, palette.white, palette.offwhite],
		texture: [images.skins.snake_main, images.skins.snake_canada, images.skins.snake_main],
		boostTint: [palette.red, palette.red, palette.white],
	},

	{
		...defaultSnakeSkin,
		id: "uk",
		price: 100,
		tint: [palette.red, palette.red, palette.offwhite, palette.blue, palette.blue, palette.offwhite],
	},

	{
		...defaultSnakeSkin,
		id: "france",
		price: 100,
		tint: [
			palette.blue,
			palette.blue,
			palette.offwhite,
			palette.offwhite,
			palette.red,
			palette.red,
			palette.offwhite,
			palette.offwhite,
		],
	},

	{
		...defaultSnakeSkin,
		id: "germany",
		price: 100,
		tint: [palette.surface1, palette.surface1, palette.red, palette.red, palette.yellow, palette.yellow],
	},

	{
		...defaultSnakeSkin,
		id: "japan",
		price: 100,
		tint: [palette.offwhite, palette.offwhite, palette.red],
	},

	{
		...defaultSnakeSkin,
		id: "south-korea",
		price: 100,
		tint: [palette.offwhite, palette.offwhite, palette.blue, palette.red],
	},

	{
		...defaultSnakeSkin,
		id: "mexico",
		price: 100,
		tint: [palette.blue, palette.blue, palette.offwhite, palette.offwhite, palette.red, palette.red],
	},

	{
		...defaultSnakeSkin,
		id: "brazil",
		price: 100,
		tint: [palette.green, palette.green, palette.yellow, palette.yellow, palette.blue, palette.blue],
	},

	{
		...defaultSnakeSkin,
		id: "australia",
		price: 100,
		tint: [
			palette.blue,
			palette.blue,
			palette.blue,
			palette.white,
			palette.white,
			palette.offwhite,
			palette.red,
			palette.red,
			palette.offwhite,
		],
		texture: [
			images.skins.snake_main,
			images.skins.snake_main,
			images.skins.snake_main,
			images.skins.snake_stars,
			images.skins.snake_stars,
			images.skins.snake_main,
			images.skins.snake_main,
			images.skins.snake_main,
			images.skins.snake_main,
		],
	},

	{
		...defaultSnakeSkin,
		id: "estonia",
		price: 100,
		tint: [palette.blue, palette.blue, palette.surface1, palette.surface1, palette.offwhite, palette.offwhite],
	},

	{
		...defaultSnakeSkin,
		id: "finland",
		price: 100,
		tint: [palette.offwhite, palette.offwhite, palette.offwhite, palette.blue],
	},

	{
		...defaultSnakeSkin,
		id: "norway",
		price: 100,
		tint: [palette.red, palette.red, palette.offwhite, palette.blue, palette.blue],
	},

	{
		...defaultSnakeSkin,
		id: "denmark",
		price: 100,
		tint: [palette.red, palette.red, palette.offwhite],
	},

	{
		...defaultSnakeSkin,
		id: "sweden",
		price: 100,
		tint: [palette.blue, palette.blue, palette.yellow],
	},

	{
		...defaultSnakeSkin,
		id: "poland",
		price: 100,
		tint: [palette.offwhite, palette.offwhite, palette.red, palette.red],
	},

	{
		...defaultSnakeSkin,
		id: "czech",
		price: 100,
		tint: [
			palette.offwhite,
			palette.offwhite,
			palette.offwhite,
			palette.blue,
			palette.blue,
			palette.red,
			palette.red,
			palette.red,
		],
	},

	{
		...defaultSnakeSkin,
		id: "ukraine",
		price: 100,
		tint: [palette.blue, palette.blue, palette.blue, palette.yellow, palette.yellow, palette.yellow],
	},

	{
		...defaultSnakeSkin,
		id: "hungary",
		price: 100,
		tint: [palette.red, palette.red, palette.offwhite, palette.offwhite, palette.green, palette.green],
	},

	{
		...defaultSnakeSkin,
		id: "south-africa",
		price: 100,
		tint: [
			palette.red,
			palette.red,
			palette.offwhite,
			palette.green,
			palette.green,
			palette.yellow,
			palette.crust,
			palette.crust,
			palette.yellow,
			palette.green,
			palette.green,
			palette.offwhite,
			palette.blue,
			palette.blue,
			palette.offwhite,
		],
	},

	{
		...defaultSnakeSkin,
		id: "pride",
		price: 100,
		tint: [
			Color3.fromHex("#ed5352"),
			Color3.fromHex("#ef8c3d"),
			Color3.fromHex("#f8c654"),
			Color3.fromHex("#7cb788"),
			Color3.fromHex("#4b98cb"),
			Color3.fromHex("#bc59be"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "bi-pride",
		price: 100,
		tint: [
			Color3.fromHex("#ea4689"),
			Color3.fromHex("#ea4689"),
			Color3.fromHex("#ea4689"),
			Color3.fromHex("#b08dfb"),
			Color3.fromHex("#3059bb"),
			Color3.fromHex("#3059bb"),
			Color3.fromHex("#3059bb"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "pan-pride",
		price: 100,
		tint: [
			Color3.fromHex("#ea4689"),
			Color3.fromHex("#ea4689"),
			Color3.fromHex("#f4c757"),
			Color3.fromHex("#f4c757"),
			Color3.fromHex("#60b4ea"),
			Color3.fromHex("#60b4ea"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "lesbian-pride",
		price: 100,
		tint: [
			Color3.fromHex("#e86366"),
			Color3.fromHex("#e58f3f"),
			Color3.fromHex("#e8ba64"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#d2a8cd"),
			Color3.fromHex("#b95bbd"),
			Color3.fromHex("#862b6b"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "ace-pride",
		price: 100,
		tint: [palette.base, Color3.fromHex("#bcb6ba"), Color3.fromHex("#fcfffe"), Color3.fromHex("#b95bbd")],
	},

	{
		...defaultSnakeSkin,
		id: "aro-pride",
		price: 100,
		tint: [
			Color3.fromHex("#78b88b"),
			Color3.fromHex("#a3dbb2"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#bcb6ba"),
			palette.base,
		],
	},

	{
		...defaultSnakeSkin,
		id: "agender-pride",
		price: 100,
		tint: [
			palette.base,
			Color3.fromHex("#bcb6ba"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#78b88b"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#bcb6ba"),
			palette.base,
		],
	},

	{
		...defaultSnakeSkin,
		id: "genderfluid-pride",
		price: 100,
		tint: [
			Color3.fromHex("#e88599"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#b95bbd"),
			palette.base,
			Color3.fromHex("#2c5bbb"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "genderqueer-pride",
		price: 100,
		tint: [
			Color3.fromHex("#b85cb9"),
			Color3.fromHex("#b85cb9"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#79b78a"),
			Color3.fromHex("#79b78a"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "trans-pride",
		price: 100,
		tint: [
			Color3.fromHex("#94c8e5"),
			Color3.fromHex("#f5cfc8"),
			Color3.fromHex("#fcfffe"),
			Color3.fromHex("#f5cfc8"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "nonbinary-pride",
		price: 100,
		tint: [Color3.fromHex("#f4c757"), Color3.fromHex("#fcfffe"), Color3.fromHex("#b95bbd"), palette.base],
	},

	{
		...defaultSnakeSkin,
		id: "intersex-pride",
		price: 100,
		tint: [
			Color3.fromHex("#f6c754"),
			Color3.fromHex("#f6c754"),
			Color3.fromHex("#f6c754"),
			Color3.fromHex("#b95bbd"),
		],
	},

	{
		...defaultSnakeSkin,
		id: "peppermint",
		price: 150,
		tint: [palette.red, palette.red, palette.offwhite, palette.offwhite],
	},

	{
		...defaultSnakeSkin,
		id: "candycorn",
		price: 150,
		tint: [palette.yellow, palette.yellow, palette.peach, palette.peach, palette.offwhite],
	},

	{
		...defaultSnakeSkin,
		id: "zebra",
		price: 250,
		tint: [palette.overlay0, palette.text],
	},

	{
		...defaultSnakeSkin,
		id: "honeybee",
		price: 350,
		tint: [palette.mantle, palette.mantle, palette.yellow],
	},

	{
		...defaultSnakeSkin,
		id: "space-cat",
		price: 450,
		tint: [palette.surface0, palette.offwhite, palette.mauve],
	},

	{
		...defaultSnakeSkin,
		id: "berries-and-cherries",
		price: 750,
		tint: blendColorSequence([palette.red, palette.mauve, palette.blue, palette.mauve], 16),
	},

	{
		...defaultSnakeSkin,
		id: "sunset",
		price: 750,
		tint: blendColorSequence([palette.mauve, palette.red, palette.peach, palette.red], 16),
	},

	{
		...defaultSnakeSkin,
		id: "siamese",
		price: 750,
		tint: blendColorSequence([Color3.fromRGB(99, 74, 61), palette.yellow], 16),
		primary: Color3.fromRGB(125, 94, 76),
		secondary: Color3.fromRGB(92, 69, 56),
	},

	{
		...defaultSnakeSkin,
		id: "stare",
		price: 750,
		tint: blendColorSequence([palette.white, darken(palette.white, 0.25)], 10),
		boostTint: [palette.yellow],
		texture: [images.skins.snake_stare_body],
		headTexture: images.skins.snake_stare_head,
		eyeTextureLeft: images.skins.snake_no_eye,
		eyeTextureRight: images.skins.snake_no_eye,
		primary: darken(palette.peach, 0.5, 0.5),
		secondary: darken(palette.peach, 0.7, 0.5),
	},

	{
		...defaultSnakeSkin,
		id: "rainbow",
		price: 1000,
		tint: blendColorSequence(
			[
				palette.red,
				palette.peach,
				palette.yellow,
				palette.green,
				palette.teal,
				palette.sky,
				palette.sapphire,
				palette.blue,
				palette.mauve,
			],
			30,
		),
		primary: Color3.fromRGB(186, 51, 84),
		secondary: Color3.fromRGB(217, 97, 125),
	},

	{
		...defaultSnakeSkin,
		id: "watermelon",
		price: 1500,
		tint: blendColorSequence([palette.white, Color3.fromRGB(97, 143, 122)], 12),
		boostTint: [Color3.fromRGB(97, 224, 148)],
		texture: [images.skins.snake_jelly],
		primary: Color3.fromRGB(70, 140, 102),
		secondary: Color3.fromRGB(54, 117, 68),
	},

	{
		...defaultSnakeSkin,
		id: "red-cherry",
		price: 1500,
		tint: blendColorSequence([palette.white, Color3.fromRGB(140, 97, 110)], 12),
		boostTint: [Color3.fromRGB(232, 107, 130)],
		texture: [images.skins.snake_jelly_red],
		primary: Color3.fromRGB(135, 48, 71),
		secondary: Color3.fromRGB(112, 38, 51),
	},

	{
		...defaultSnakeSkin,
		id: "blue-raspberry",
		price: 1500,
		tint: blendColorSequence([palette.white, Color3.fromRGB(97, 97, 140)], 12),
		boostTint: [Color3.fromRGB(97, 117, 219)],
		texture: [images.skins.snake_jelly_blue],
		primary: Color3.fromRGB(51, 64, 140),
		secondary: Color3.fromRGB(38, 38, 112),
	},

	{
		...defaultSnakeSkin,
		id: "black-ice",
		price: 2750,
		tint: [palette.white],
		boostTint: [palette.crust],
		texture: [images.skins.snake_black_ice],
		primary: palette.mantle,
		secondary: palette.crust,
	},

	{
		...defaultSnakeSkin,
		id: "neon",
		price: 3500,
		tint: blendColorSequence([Color3.fromRGB(186, 51, 84), Color3.fromRGB(94, 41, 153)], 16),
		texture: [images.skins.snake_outlined],
	},

	{
		...defaultSnakeSkin,
		id: "nightwish",
		price: 3750,
		tint: blendColorSequence([Color3.fromRGB(61, 199, 207), Color3.fromRGB(166, 61, 186), palette.base], 16),
		texture: [images.skins.snake_outlined],
	},

	{
		...defaultSnakeSkin,
		id: "epic",
		price: 7331,
		tint: [palette.white],
		boostTint: [Color3.fromRGB(224, 179, 89)],
		texture: [images.skins.snake_awesome_body],
		headTexture: images.skins.snake_awesome_head,
		eyeTextureLeft: images.skins.snake_no_eye,
		eyeTextureRight: images.skins.snake_no_eye,
		primary: palette.surface2,
		secondary: palette.surface0,
	},

	{
		...defaultSnakeSkin,
		id: "devious",
		price: 13337,
		tint: [palette.white],
		boostTint: [Color3.fromRGB(186, 51, 69)],
		texture: [images.skins.snake_vamp_body],
		headTexture: images.skins.snake_vamp_head,
		eyeTextureLeft: images.skins.snake_no_eye,
		eyeTextureRight: images.skins.snake_no_eye,
		primary: palette.mantle,
		secondary: palette.crust,
	},
];

export const baseSnakeSkins = snakeSkins.filter((skin) => {
	return skin.price === 0;
});

================================================================================
// File: src/shared/constants/skins/types.ts
================================================================================
import { images } from "shared/assets";

export interface SnakeSkin {
	readonly id: string;
	readonly price: number;
	readonly size: Vector2;
	readonly tint: readonly Color3[];
	readonly boostTint?: readonly Color3[];
	readonly texture: readonly string[];
	readonly eyeTextureLeft: string;
	readonly eyeTextureRight: string;
	readonly headTexture?: string;
	readonly headColor?: Color3;
	readonly primary?: Color3;
	readonly secondary?: Color3;
}

export const defaultSnakeSkin: SnakeSkin = {
	id: "default",
	price: 0,
	size: new Vector2(512, 512),
	tint: [Color3.fromRGB(255, 255, 255)],
	texture: [images.skins.snake_main],
	eyeTextureLeft: images.skins.snake_eye_left,
	eyeTextureRight: images.skins.snake_eye_right,
};

================================================================================
// File: src/shared/constants/skins/utils.ts
================================================================================
import { lerp, lerpRadians, map } from "shared/utils/math-utils";

const TAU = 2 * math.pi;

function lerpHue(from: number, to: number, alpha: number) {
	return (lerpRadians(from * TAU, to * TAU, alpha) / TAU) % 1;
}

export function lerpColor(from: Color3, to: Color3, alpha: number) {
	const [fromH, fromS, fromV] = Color3.toHSV(from);
	const [toH, toS, toV] = Color3.toHSV(to);

	return Color3.fromHSV(lerpHue(fromH, toH, alpha), lerp(fromS, toS, alpha), lerp(fromV, toV, alpha));
}

export function blendColorSequence(colors: Color3[], length: number, looped = true): Color3[] {
	if (looped) {
		colors = [...colors, colors[0]];
	}

	const pattern = new Array<Color3>(length);
	const colorCount = colors.size();

	for (const index of $range(0, length - 1)) {
		const indexScaled = map(index, 0, length - 1, 0, colorCount - 1);
		const indexInArray = math.floor(indexScaled);

		const from = colors[indexInArray];
		const to = colors[(indexInArray + 1) % colorCount];

		pattern[index] = lerpColor(from, to, indexScaled % 1);
	}

	return pattern;
}

export function duplicate<T extends defined>(sequence: T[], repeatCount: number): T[] {
	const pattern: T[] = [];

	for (const _ of $range(0, repeatCount - 1)) {
		for (const value of sequence) {
			pattern.push(value);
		}
	}

	return pattern;
}

================================================================================
// File: src/shared/remotes.ts
================================================================================
import { BroadcastAction } from "@rbxts/reflex";
import { Client, createRemotes, namespace, remote, Server, throttleMiddleware } from "@rbxts/remo";
import { t } from "@rbxts/t";
import type { Alert } from "client/store/alert";

import { WORLD_TICK } from "./constants/core";
import { SharedStateSerialized } from "./serdes";

export const remotes = createRemotes({
	store: namespace({
		dispatch: remote<Client, [actions: BroadcastAction[]]>(),
		hydrate: remote<Client, [state: SharedStateSerialized]>(),
		start: remote<Server>(),
	}),

	snake: namespace({
		spawn: remote<Server>(),
		kill: remote<Server>(),
		move: remote<Server, [angle: number]>(t.numberConstrained(-math.pi, math.pi)),
		boost: remote<Server, [boost: boolean]>(t.boolean).middleware(
			throttleMiddleware({ throttle: WORLD_TICK, trailing: true }),
		),
	}),

	save: namespace({
		setSkin: remote<Server, [skin: string]>(t.string),
		buySkin: remote<Server, [skin: string]>(t.string),
	}),

	client: namespace({
		alert: remote<Client, [params: Partial<Alert>]>(),
	}),
});

================================================================================
// File: src/shared/serdes/handlers/serdes-candy.ts
================================================================================
import BitBuffer from "@rbxts/bitbuffer2";
import { CandyState } from "shared/store/candy";
import { countProperties } from "shared/utils/object-utils";

import { readColor3, readVector2, writeColor3, writeVector2 } from "../utils";

export function serializeCandy(state: CandyState): string {
	const buffer = new BitBuffer();

	buffer.WriteUInt(16, countProperties(state));

	for (const [, candy] of pairs(state)) {
		buffer.WriteString(candy.id);
		buffer.WriteInt(8, candy.type);
		buffer.WriteFloat32(candy.size);
		writeVector2(buffer, candy.position);
		writeColor3(buffer, candy.color);
	}

	return buffer.ToString();
}

export function deserializeCandy(data: string): CandyState {
	const state: Writable<CandyState> = {};
	const buffer = BitBuffer.FromString(data);
	const size = buffer.ReadUInt(16);

	for (const _ of $range(1, size)) {
		const id = buffer.ReadString();

		state[id] = {
			id,
			type: buffer.ReadInt(8),
			size: buffer.ReadFloat32(),
			position: readVector2(buffer),
			color: readColor3(buffer),
		};
	}

	return state;
}

================================================================================
// File: src/shared/serdes/handlers/serdes-snake.ts
================================================================================
import BitBuffer from "@rbxts/bitbuffer2";
import { SnakesState } from "shared/store/snakes";
import { countProperties } from "shared/utils/object-utils";

import { readArray, readVector2, writeArray, writeVector2 } from "../utils";

export function serializeSnakes(state: SnakesState): string {
	const buffer = new BitBuffer();

	buffer.WriteUInt(16, countProperties(state));

	for (const [, snake] of pairs(state)) {
		buffer.WriteString(snake.id);
		buffer.WriteString(snake.name);
		writeVector2(buffer, snake.head);
		buffer.WriteFloat32(snake.angle);
		buffer.WriteFloat32(snake.desiredAngle);
		buffer.WriteUInt(32, snake.score);
		buffer.WriteBool(snake.boost);
		writeArray(buffer, snake.tracers, writeVector2);
		buffer.WriteString(snake.skin);
		buffer.WriteBool(snake.dead);
		buffer.WriteUInt(16, snake.eliminations);
	}

	return buffer.ToString();
}

export function deserializeSnakes(data: string): SnakesState {
	const state: Writable<SnakesState> = {};
	const buffer = BitBuffer.FromString(data);
	const size = buffer.ReadUInt(16);

	for (const _ of $range(1, size)) {
		const id = buffer.ReadString();

		state[id] = {
			id,
			name: buffer.ReadString(),
			head: readVector2(buffer),
			angle: buffer.ReadFloat32(),
			desiredAngle: buffer.ReadFloat32(),
			score: buffer.ReadUInt(32),
			boost: buffer.ReadBool(),
			tracers: readArray(buffer, readVector2),
			skin: buffer.ReadString(),
			dead: buffer.ReadBool(),
			eliminations: buffer.ReadUInt(16),
		};
	}

	return state;
}

================================================================================
// File: src/shared/serdes/index.ts
================================================================================
import { SharedState } from "shared/store";
import { CandyState } from "shared/store/candy";
import { SnakesState } from "shared/store/snakes";

import { deserializeCandy, serializeCandy } from "./handlers/serdes-candy";
import { deserializeSnakes, serializeSnakes } from "./handlers/serdes-snake";

export interface SharedStateSerialized extends Omit<SharedState, "candy" | "snakes"> {
	candy?: string;
	snakes?: string;
}

interface SharedStateForSerdes extends Omit<SharedState, "candy" | "snakes"> {
	candy?: CandyState;
	snakes?: SnakesState;
}

// Store the last serialized state to avoid unnecessary re-computations
let lastSerialized: SharedStateSerialized | undefined;
let lastCandy: CandyState | undefined;
let lastSnakes: SnakesState | undefined;

export function serializeState(state: SharedStateForSerdes, includeCandy = true): SharedStateSerialized {
	if (state.candy === lastCandy && state.snakes === lastSnakes) {
		return lastSerialized!;
	}

	const serialized = {
		...state,
		candy: state.candy && includeCandy ? serializeCandy(state.candy) : undefined,
		snakes: state.snakes && serializeSnakes(state.snakes),
	};

	lastSerialized = serialized;
	lastCandy = state.candy;
	lastSnakes = state.snakes;

	return serialized;
}

export function deserializeState(state: SharedStateSerialized): SharedStateForSerdes {
	return {
		...state,
		candy: state.candy !== undefined ? deserializeCandy(state.candy) : undefined,
		snakes: state.snakes !== undefined ? deserializeSnakes(state.snakes) : undefined,
	};
}

================================================================================
// File: src/shared/serdes/utils.ts
================================================================================
import BitBuffer from "@rbxts/bitbuffer2";

export function writeVector2(buffer: BitBuffer, vector: Vector2) {
	buffer.WriteFloat32(vector.X);
	buffer.WriteFloat32(vector.Y);
}

export function readVector2(buffer: BitBuffer) {
	const x = buffer.ReadFloat32();
	const y = buffer.ReadFloat32();
	return new Vector2(x, y);
}

export function writeColor3(buffer: BitBuffer, color: Color3) {
	const hex = color.ToHex();
	const int = tonumber(hex, 16) ?? 0;
	buffer.WriteUInt(24, int);
}

export function readColor3(buffer: BitBuffer) {
	const int = buffer.ReadUInt(24);
	const hex = string.format("%x", int);
	return Color3.fromHex(hex);
}

export function writeArray<T extends defined>(
	buffer: BitBuffer,
	array: readonly T[],
	write: (buffer: BitBuffer, value: T) => void,
) {
	buffer.WriteUInt(16, array.size());

	for (const value of array) {
		write(buffer, value);
	}
}

export function readArray<T extends defined>(buffer: BitBuffer, read: (buffer: BitBuffer) => T): T[] {
	const size = buffer.ReadUInt(16);
	const array: T[] = [];

	for (const _ of $range(1, size)) {
		array.push(read(buffer));
	}

	return array;
}

================================================================================
// File: src/shared/store/candy/candy-selectors.ts
================================================================================
import Object from "@rbxts/object-utils";
import { createSelector } from "@rbxts/reflex";
import { mapProperties } from "shared/utils/object-utils";

import { SharedState } from "..";
import { CandyEntity, CandyType } from "./candy-slice";

export const identifyCandy = (candy: CandyEntity) => {
	return candy.id;
};

export const selectCandiesById = (state: SharedState) => {
	return state.candy;
};

export const selectCandies = createSelector(selectCandiesById, (byId) => {
	return Object.values(byId);
});

export const selectCandiesByIdOfType = (candyType: CandyType) => {
	return createSelector(selectCandiesById, (byId) => {
		return mapProperties(byId, (candy) => {
			return candy.type === candyType && !candy.eatenAt ? candy : undefined;
		});
	});
};

export const selectCandiesUneaten = createSelector(selectCandies, (candies) => {
	return candies.filter((candy) => !candy.eatenAt);
});

export const selectCandyCount = (filter?: CandyType) => {
	return createSelector(selectCandiesById, (byId) => {
		let size = 0;

		for (const [, candy] of pairs(byId)) {
			if (candy.eatenAt || (filter !== undefined && candy.type !== filter)) {
				continue;
			}

			size += 1;
		}

		return size;
	});
};

export const selectCandyById = (id: string) => {
	return (state: SharedState) => {
		return state.candy[id];
	};
};

================================================================================
// File: src/shared/store/candy/candy-slice.ts
================================================================================
import { createProducer } from "@rbxts/reflex";
import { assign, mapProperties, mapProperty } from "shared/utils/object-utils";

export interface CandyState {
	readonly [id: string]: CandyEntity | undefined;
}

export interface CandyEntity {
	readonly id: string;
	readonly size: number;
	readonly position: Vector2;
	readonly color: Color3;
	readonly type: CandyType;
	readonly eatenAt?: Vector2;
}

export enum CandyType {
	Default,
	Loot,
	Dropping,
}

const initialState: CandyState = {};

export const candySlice = createProducer(initialState, {
	populateCandy: (state, candy: CandyEntity[]) => {
		return assign(
			state,
			candy.reduce<{ [id: string]: CandyEntity }>((map, candy) => {
				map[candy.id] = candy;
				return map;
			}, {}),
		);
	},

	addCandy: (state, candy: CandyEntity) => {
		return assign(state, { [candy.id]: candy });
	},

	removeCandy: (state, id: string) => {
		return mapProperty(state, id, () => undefined);
	},

	setCandyEatenAt: (state, id: string, eatenAt: Vector2) => {
		return mapProperty(state, id, (candy) => ({
			...candy,
			eatenAt,
		}));
	},

	bulkRemoveStaleCandy: (state, candyType: CandyType, amount: number) => {
		const staleIds = new Set<string>();
		const candyList: CandyEntity[] = [];
		let candyListSize = 0;

		// reconstruct a list of candy, lower id = older
		for (const [id, candy] of pairs(state)) {
			if (candy.type !== candyType) {
				continue;
			}

			const insertAt = candyList.findIndex((otherCandy) => {
				return tonumber(otherCandy.id)! > tonumber(id)!;
			});

			if (insertAt !== -1) {
				candyList.insert(insertAt, candy);
			} else {
				candyList.push(candy);
			}

			candyListSize += 1;
		}

		// pick the amount of candy to remove, oldest first
		for (const index of $range(0, math.min(amount, candyListSize) - 1)) {
			staleIds.add(candyList[index].id);
		}

		return mapProperties(state, (candy) => {
			return !staleIds.has(candy.id) ? candy : undefined;
		});
	},
});

================================================================================
// File: src/shared/store/candy/index.ts
================================================================================
export * from "./candy-selectors";
export * from "./candy-slice";

================================================================================
// File: src/shared/store/index.ts
================================================================================
import { CombineStates } from "@rbxts/reflex";

import { candySlice } from "./candy";
import { saveSlice } from "./saves";
import { snakesSlice } from "./snakes";

export type SharedState = CombineStates<typeof slices>;

export const slices = {
	candy: candySlice,
	snakes: snakesSlice,
	saves: saveSlice,
};

================================================================================
// File: src/shared/store/middleware/profiler.ts
================================================================================
import { ProducerMiddleware } from "@rbxts/reflex";
import { IS_PROD } from "shared/constants/core";

export const profilerMiddleware: ProducerMiddleware = () => {
	return (dispatch, name) => {
		if (IS_PROD) {
			return dispatch;
		}

		return (...args) => {
			debug.profilebegin(name);
			const result = dispatch(...args);
			debug.profileend();
			return result;
		};
	};
};

================================================================================
// File: src/shared/store/saves/index.ts
================================================================================
export * from "./save-selectors";
export * from "./save-slice";
export * from "./save-types";

================================================================================
// File: src/shared/store/saves/save-selectors.ts
================================================================================
import { SharedState } from "..";

export const selectPlayerSaves = (state: SharedState) => {
	return state.saves;
};

export const selectPlayerSave = (id: string) => {
	return (state: SharedState) => state.saves[id];
};

export const selectPlayerBalance = (id: string) => {
	return (state: SharedState) => state.saves[id]?.balance;
};

export const selectPlayerSkins = (id: string) => {
	return (state: SharedState) => state.saves[id]?.skins;
};

export const selectCurrentPlayerSkin = (id: string) => {
	return (state: SharedState) => state.saves[id]?.skin;
};

export const selectPlayerOwnsSkin = (id: string, skinId: string) => {
	return (state: SharedState) => state.saves[id]?.skins.includes(skinId);
};

export const selectPlayerEquippedSkin = (id: string, skinId: string) => {
	return (state: SharedState) => state.saves[id]?.skin === skinId;
};

================================================================================
// File: src/shared/store/saves/save-slice.ts
================================================================================
import { createProducer } from "@rbxts/reflex";
import { mapProperty } from "shared/utils/object-utils";

import { PlayerSave } from "./save-types";

export interface SaveState {
	readonly [id: string]: PlayerSave | undefined;
}

const initialState: SaveState = {};

export const saveSlice = createProducer(initialState, {
	setPlayerSave: (state, player: string, save: PlayerSave) => ({
		...state,
		[player]: save,
	}),

	deletePlayerSave: (state, player: string) => ({
		...state,
		[player]: undefined,
	}),

	patchPlayerSave: (state, player: string, patch: Partial<PlayerSave>) => {
		return mapProperty(state, player, (save) => ({
			...save,
			...patch,
		}));
	},

	givePlayerBalance: (state, player: string, amount: number) => {
		return mapProperty(state, player, (save) => ({
			...save,
			balance: math.max(save.balance + amount, 0),
		}));
	},

	givePlayerSkin: (state, player: string, skin: string) => {
		return mapProperty(state, player, (save) => ({
			...save,
			skins: [...save.skins, skin],
		}));
	},

	setPlayerSkin: (state, player: string, skin: string) => {
		return mapProperty(state, player, (save) => ({
			...save,
			skin,
		}));
	},
});

================================================================================
// File: src/shared/store/saves/save-types.ts
================================================================================
import { t } from "@rbxts/t";
import { baseSnakeSkins } from "shared/constants/skins";

export interface PlayerSave {
	readonly balance: number;
	readonly skins: readonly string[];
	readonly skin: string;
}

export const RANDOM_SKIN = "__random__";

export const defaultPlayerSave: PlayerSave = {
	balance: 100,
	skins: [RANDOM_SKIN, ...baseSnakeSkins.map((skin) => skin.id)],
	skin: RANDOM_SKIN,
};

export const playerSaveSchema: t.check<PlayerSave> = t.interface({
	balance: t.number,
	skins: t.array(t.string),
	skin: t.string,
});

================================================================================
// File: src/shared/store/snakes/index.ts
================================================================================
export * from "./snake-selectors";
export * from "./snake-slice";
export * from "./snake-utils";

================================================================================
// File: src/shared/store/snakes/snake-selectors.ts
================================================================================
import Object from "@rbxts/object-utils";
import { createSelector, shallowEqual } from "@rbxts/reflex";
import { USER_NAME } from "shared/constants/core";
import { SharedState } from "shared/store";
import { mapProperties } from "shared/utils/object-utils";
import { getPlayerByName } from "shared/utils/player-utils";

import { SnakeEntity } from "./snake-slice";
import { snakeIsBoosting } from "./snake-utils";

export const identifySnake = (snake: SnakeEntity) => {
	return snake.id;
};

export const cycleNextSnake = (currentId: string) => (state: SharedState) => {
	const snakes = selectSnakesSorted((a, b) => a.score > b.score)(state);
	const index = snakes.findIndex((snake) => snake.id === currentId);

	if (index !== -1) {
		return snakes[(index + 1) % snakes.size()]?.id;
	} else {
		return snakes[0]?.id;
	}
};

export const selectSnakesById = (state: SharedState) => {
	return state.snakes;
};

export const selectSnakeCount = createSelector(selectSnakesById, (snakesById) => {
	let count = 0;

	for (const [,] of pairs(snakesById)) {
		count++;
	}

	return count;
});

export const selectDeadSnakesById = createSelector(selectSnakesById, (snakesById) => {
	return mapProperties(snakesById, (snake) => (snake.dead ? snake : undefined));
});

export const selectAliveSnakesById = createSelector(selectSnakesById, (snakesById) => {
	return mapProperties(snakesById, (snake) => (!snake.dead ? snake : undefined));
});

export const selectPlayerSnakesById = createSelector(selectSnakesById, (snakesById) => {
	return mapProperties(snakesById, (snake) => (getPlayerByName(snake.id) ? snake : undefined));
});

export const selectPlayerCountIsAbove = (count: number) => {
	return createSelector(selectPlayerSnakesById, (snakesById) => {
		let playerCount = 0;

		for (const [,] of pairs(snakesById)) {
			playerCount++;

			if (playerCount >= count) {
				return true;
			}
		}

		return false;
	});
};

export const selectLocalSnake = (state: SharedState) => {
	return state.snakes[USER_NAME];
};

export const selectLocalScore = (state: SharedState) => {
	return state.snakes[USER_NAME]?.score;
};

export const selectLocalEliminations = (state: SharedState) => {
	return state.snakes[USER_NAME]?.eliminations;
};

export const selectHasLocalSnake = (state: SharedState) => {
	return USER_NAME in state.snakes;
};

export const selectSnakes = createSelector(selectSnakesById, (snakesById) => {
	return Object.values(snakesById);
});

export const selectTopSnake = createSelector(selectSnakesById, (snakesById) => {
	let topSnake: SnakeEntity | undefined;

	for (const [, snake] of pairs(snakesById)) {
		if (topSnake === undefined || snake.score > topSnake.score) {
			topSnake = snake;
		}
	}

	return topSnake;
});

export const selectSnakesSorted = (comparator: (current: SnakeEntity, existing: SnakeEntity) => boolean) => {
	return createSelector(selectSnakesById, (snakesById) => {
		const topSnakes: SnakeEntity[] = [];

		for (const [, snake] of pairs(snakesById)) {
			const index = topSnakes.findIndex((topSnake) => comparator(snake, topSnake));

			if (index === -1) {
				topSnakes.push(snake);
			} else {
				topSnakes.insert(index, snake);
			}
		}

		return topSnakes;
	});
};

export const selectSnakeIds = createSelector(
	[selectSnakesById],
	(snakesById) => {
		return Object.keys(snakesById) as readonly string[];
	},
	shallowEqual,
);

export const selectSnakeById = (id: string) => {
	return (state: SharedState) => state.snakes[id];
};

export const selectSnakeScore = (id: string) => {
	return (state: SharedState) => state.snakes[id]?.score;
};

export const selectSnakeIsDead = (id: string) => {
	return (state: SharedState) => {
		const snake = state.snakes[id];
		return snake ? snake.dead : true;
	};
};

export const selectSnakeIsBoosting = (id: string) => {
	return (state: SharedState) => {
		const snake = state.snakes[id];
		return snake ? snakeIsBoosting(snake) : false;
	};
};

export const selectSnakeRanking = (id: string) => {
	const comparator = (current: SnakeEntity, existing: SnakeEntity) => {
		return current.score > existing.score;
	};

	return createSelector(selectSnakesSorted(comparator), (snakes) => {
		const index = snakes.findIndex((snake) => snake.id === id);

		return index === -1 ? undefined : index + 1;
	});
};

export const selectLocalSnakeRanking = selectSnakeRanking(USER_NAME);

export const selectRankForDisplay = (state: SharedState) => {
	const ranking = selectLocalSnakeRanking(state);

	if (ranking === undefined) {
		return;
	}

	const lastDigit = ranking % 10;
	const lastTwoDigits = ranking % 100;

	if (lastTwoDigits >= 11 && lastTwoDigits <= 13) {
		return `${ranking}th`;
	} else if (lastDigit === 1) {
		return `${ranking}st`;
	} else if (lastDigit === 2) {
		return `${ranking}nd`;
	} else if (lastDigit === 3) {
		return `${ranking}rd`;
	} else {
		return `${ranking}th`;
	}
};

================================================================================
// File: src/shared/store/snakes/snake-slice.ts
================================================================================
import { createProducer } from "@rbxts/reflex";
import { SNAKE_BOOST_SPEED, SNAKE_SPEED, WORLD_TICK } from "shared/constants/core";
import { map, turnRadians } from "shared/utils/math-utils";
import { mapProperties, mapProperty } from "shared/utils/object-utils";

import { describeSnakeFromScore, snakeIsBoosting } from "./snake-utils";

export interface SnakesState {
	readonly [id: string]: SnakeEntity | undefined;
}

export interface SnakeEntity {
	readonly id: string;
	readonly name: string;
	readonly head: Vector2;
	readonly angle: number;
	readonly desiredAngle: number;
	readonly score: number;
	readonly boost: boolean;
	readonly tracers: readonly Vector2[];
	readonly skin: string;
	readonly dead: boolean;
	readonly eliminations: number;
}

// Used to prevent tracers from overlapping
const TINY = 0.0001;

const defaultEntity: SnakeEntity = {
	id: "",
	name: "",
	head: new Vector2(),
	angle: 0,
	desiredAngle: 0,
	score: 10,
	boost: false,
	tracers: [],
	skin: "",
	dead: false,
	eliminations: 0,
};

const initialState: SnakesState = {};

export const snakesSlice = createProducer(initialState, {
	addSnake: (state, id: string, patch?: Partial<SnakeEntity>) => ({
		...state,
		[id]: { ...defaultEntity, id, name: id, ...patch },
	}),

	removeSnake: (state, id: string) => ({
		...state,
		[id]: undefined,
	}),

	snakeTick: (state, deltaTime: number = WORLD_TICK) => {
		return mapProperties(state, (snake) => {
			if (snake.dead) {
				return snake;
			}

			if (snake.score < 0) {
				// It's possible for score to be patched to a negative value, so
				// correct it here
				snake = { ...snake, score: 0 };
			}

			const description = describeSnakeFromScore(snake.score);

			const speed = snakeIsBoosting(snake) ? SNAKE_BOOST_SPEED : SNAKE_SPEED;
			const angle = turnRadians(snake.angle, snake.desiredAngle, description.turnSpeed * deltaTime);
			const direction = new Vector2(math.cos(angle), math.sin(angle));
			const head = snake.head.add(direction.mul(speed * deltaTime));

			const currentLength = snake.tracers.size();
			const desiredLength = math.floor(description.length);
			let tail = head;

			const tracers = snake.tracers.mapFiltered((tracer, index) => {
				if (index >= desiredLength) {
					return;
				}

				const previous = snake.tracers[index - 1] || snake.head;

				// spacing should be longer near the end of the snake to allow longer
				// snakes but with less tracers
				const spacing = map(index, 0, currentLength, description.spacingAtHead, description.spacingAtTail);

				// the alpha of the interpolation that will decide the space between
				// the current tracer and the previous tracer
				const alpha = math.clamp((deltaTime * speed) / spacing, TINY, 1 - TINY);

				if (index === desiredLength - 1) {
					// the tail's spacing from the previous tracer should be proportional
					// to the score needed to reach the next length
					tail = tail.Lerp(tracer.Lerp(previous, alpha), math.max(description.length % 1, TINY));
				} else {
					tail = tracer.Lerp(previous, alpha);
				}

				return tail;
			});

			if (currentLength < desiredLength) {
				for (const index of $range(currentLength, desiredLength - 1)) {
					tracers.push(tail.add(new Vector2(TINY * (index + 1), 0)));
				}
			}

			return { ...snake, head, angle, tracers };
		});
	},

	turnSnake: (state, id: string, desiredAngle: number) => {
		return mapProperty(state, id, (snake) => ({
			...snake,
			desiredAngle,
		}));
	},

	boostSnake: (state, id: string, boost: boolean) => {
		return mapProperty(state, id, (snake) => ({
			...snake,
			boost,
		}));
	},

	setSnakeIsDead: (state, id: string) => {
		return mapProperty(state, id, (snake) => ({
			...snake,
			dead: true,
		}));
	},

	patchSnake: (state, id: string, intersection: Partial<SnakeEntity>) => {
		return mapProperty(state, id, (snake) => ({
			...snake,
			...intersection,
		}));
	},

	incrementSnakeScore: (state, id: string, amount: number) => {
		return mapProperty(state, id, (snake) => ({
			...snake,
			score: math.max(snake.score + amount, 0),
		}));
	},

	incrementSnakeEliminations: (state, id: string) => {
		return mapProperty(state, id, (snake) => ({
			...snake,
			eliminations: snake.eliminations + 1,
		}));
	},
});

================================================================================
// File: src/shared/store/snakes/snake-utils.ts
================================================================================
import { SnakeEntity } from "./snake-slice";

interface SnakeDescription {
	readonly length: number;
	readonly radius: number;
	readonly spacingAtHead: number;
	readonly spacingAtTail: number;
	readonly turnSpeed: number;
}

export function snakeIsBoosting(snake: SnakeEntity) {
	return snake.boost && snake.score > 10;
}

export function describeSnakeFromScore(score: number): SnakeDescription {
	const radius = math.max(0.7 * math.log10(score / 300 + 2), 0.5);

	return {
		radius,
		spacingAtHead: math.max(0.75 * radius, 0.5),
		spacingAtTail: 2.5 * radius,
		length: 64 * math.log10(score / 256 + 1) + 3,
		turnSpeed: math.rad(math.max(360 - 100 * math.log10(score / 150 + 1), 45)),
	};
}

================================================================================
// File: src/shared/utils/benchmark.ts
================================================================================
interface Benchmark<T> {
	readonly parameters?: () => T;
	readonly functions: {
		readonly [key: string]: (profiler: BenchmarkProfiler, parameters: T) => void;
	};
}

export interface BenchmarkProfiler {
	readonly Begin: (name: string) => void;
	readonly End: () => void;
}

const noop = () => undefined as never;

/**
 * Create a benchmarker for the Benchmarker plugin by boatbomber.
 */
export function benchmark<T>({ parameters = noop, functions }: Benchmark<T>): unknown {
	return {
		ParameterGenerator: parameters,
		Functions: functions,
	};
}

================================================================================
// File: src/shared/utils/color-utils.ts
================================================================================
const lerpAlpha = (a: number, b: number, t: number) => math.clamp(a + (b - a) * t, 0, 1);

export function brighten(color: Color3, amount: number, desaturation = 0.25 * amount) {
	const [h, s, v] = color.ToHSV();

	return Color3.fromHSV(h, lerpAlpha(s, 0, desaturation), lerpAlpha(v, 1, 0.7 * amount));
}

export function darken(color: Color3, amount: number, saturation = 0.25 * amount) {
	const [h, s, v] = color.ToHSV();

	return Color3.fromHSV(h, lerpAlpha(s, 1, saturation), lerpAlpha(v, 0, 0.7 * amount));
}

export function brightness(color: Color3) {
	const [r, g, b] = [color.R, color.G, color.B];

	return (r * 299 + g * 587 + b * 114) / 1000;
}

export function brightenIfDark(color: Color3) {
	const darkness = 1 - brightness(color);

	return darkness > 0.5 ? brighten(color, darkness, 0.5) : color;
}

================================================================================
// File: src/shared/utils/grid.ts
================================================================================
type GridCell<T> = Map<Vector3, GridPoint<T>>;

interface GridPoint<T> {
	readonly position: Vector2;
	readonly metadata: T;
}

/**
 * Cast this object to a Vector3 to use it as a key.
 */
function vectorize({ X, Y }: Vector2) {
	if (X !== X) X = 0;
	if (Y !== Y) Y = 0;
	return new Vector3(X, Y, 0);
}

export class Grid<T = void> {
	public readonly cells = new Map<Vector3, GridCell<T>>();
	public readonly resolution: number;

	constructor(resolution: number) {
		this.resolution = resolution;
	}

	public insert(vector: Vector2, metadata: T) {
		const key = vectorize(this.snapToGrid(vector));
		const cell = this.cells.get(key) || new Map<Vector3, GridPoint<T>>();

		cell.set(vectorize(vector), {
			position: vector,
			metadata,
		});

		this.cells.set(key, cell);
	}

	public remove(vector: Vector2) {
		const key = vectorize(this.snapToGrid(vector));
		const cell = this.cells.get(key);

		if (!cell) {
			return;
		}

		cell.delete(vectorize(vector));

		if (cell.isEmpty()) {
			this.cells.delete(key);
		}
	}

	public replace(oldVector: Vector2, newVector: Vector2, metadata: T) {
		this.remove(oldVector);
		this.insert(newVector, metadata);
	}

	public nearest(
		vector: Vector2,
		range: number,
		predicate?: (point: GridPoint<T>) => boolean,
	): GridPoint<T> | undefined {
		const cellsInRange = this.getCellsInRange(vector, range);
		let nearestPoint: GridPoint<T> | undefined;
		let nearestDistance = range;

		for (const cell of cellsInRange) {
			for (const [, point] of cell) {
				const distance = vector.sub(point.position).Magnitude;

				if (distance < nearestDistance && (!predicate || predicate(point))) {
					nearestPoint = point;
					nearestDistance = distance;
				}
			}
		}

		return nearestPoint;
	}

	public queryBox(position: Vector2, size: Vector2, predicate?: (point: GridPoint<T>) => boolean): GridPoint<T>[] {
		const cellsInBox = this.getCellsInBox(position, size);
		const points: GridPoint<T>[] = [];

		for (const cell of cellsInBox) {
			for (const [, point] of cell) {
				const isInsideRect =
					point.position.X >= position.X &&
					point.position.Y >= position.Y &&
					point.position.X <= position.X + size.X &&
					point.position.Y <= position.Y + size.Y;

				if (isInsideRect && (!predicate || predicate(point))) {
					points.push(point);
				}
			}
		}

		return points;
	}

	public queryRange(position: Vector2, range: number, predicate?: (point: GridPoint<T>) => boolean): GridPoint<T>[] {
		const cellsInRange = this.getCellsInRange(position, range);
		const points: GridPoint<T>[] = [];

		for (const cell of cellsInRange) {
			for (const [, point] of cell) {
				const distance = position.sub(point.position).Magnitude;

				if (distance <= range && (!predicate || predicate(point))) {
					points.push(point);
				}
			}
		}

		return points;
	}

	public size() {
		let size = 0;

		for (const [, cell] of this.cells) {
			size += cell.size();
		}

		return size;
	}

	public clear() {
		this.cells.clear();
	}

	private snapToGrid(value: Vector2) {
		const x = math.floor(value.X / this.resolution);
		const y = math.floor(value.Y / this.resolution);
		return new Vector2(x, y);
	}

	private roundToGrid(value: Vector2) {
		const x = math.round(value.X / this.resolution);
		const y = math.round(value.Y / this.resolution);
		return new Vector2(x, y);
	}

	private getCellsInRange(vector: Vector2, range: number) {
		const cellsInRange: GridCell<T>[] = [];

		vector = this.snapToGrid(vector);
		range = math.ceil(range / this.resolution);

		for (const i of $range(-range, range)) {
			for (const j of $range(-range, range)) {
				const cell = this.cells.get(new Vector3(vector.X + i, vector.Y + j));
				cellsInRange.push(cell!);
			}
		}

		return cellsInRange;
	}

	private getCellsInBox(position: Vector2, size: Vector2) {
		const cellsInBox: GridCell<T>[] = [];

		position = this.snapToGrid(position);
		size = this.roundToGrid(size);

		for (const i of $range(-1, size.X + 1)) {
			for (const j of $range(-1, size.Y + 1)) {
				const cell = this.cells.get(new Vector3(position.X + i, position.Y + j));
				cellsInBox.push(cell!);
			}
		}

		return cellsInBox;
	}
}

================================================================================
// File: src/shared/utils/math-utils.ts
================================================================================
export function lerp(a: number, b: number, t: number) {
	return a + (b - a) * t;
}

export function lerpStrict(a: number, b: number, t: number) {
	return math.clamp(lerp(a, b, t), math.min(a, b), math.max(a, b));
}

export function map(value: number, min: number, max: number, newMin: number, newMax: number) {
	if (min === max) {
		return newMin;
	}
	return lerp(newMin, newMax, (value - min) / (max - min));
}

export function mapStrict(value: number, min: number, max: number, newMin: number, newMax: number) {
	if (min === max) {
		return newMin;
	}
	return lerpStrict(newMin, newMax, (value - min) / (max - min));
}

export function subtractRadians(a: number, b: number) {
	return math.atan2(math.sin(a - b), math.cos(a - b));
}

export function addRadians(a: number, b: number) {
	return math.atan2(math.sin(a + b), math.cos(a + b));
}

export function lerpRadians(a: number, b: number, t: number) {
	return addRadians(a, subtractRadians(b, a) * t);
}

export function turnRadians(current: number, target: number, angle: number) {
	const difference = subtractRadians(target, current);
	const sign = math.sign(difference);
	const amount = math.min(math.abs(difference), angle);
	return current + amount * sign;
}

================================================================================
// File: src/shared/utils/object-utils.ts
================================================================================
/**
 * Maps an object to a new object with the same keys, but values are
 * mapped using the provided mapper function.
 */
export function mapProperties<K extends string, V, T>(
	object: { readonly [Key in K]: V | undefined },
	mapper: (value: V, key: K) => T | undefined,
): { readonly [key in K]?: T };

export function mapProperties<K extends string, V, T>(
	object: { readonly [Key in K]: V },
	mapper: (value: V, key: K) => T,
): { readonly [key in K]: T };

export function mapProperties<K extends string, V, T>(
	object: { readonly [Key in K]: V | undefined },
	mapper: (value: V, key: K) => T | undefined,
): { readonly [key in K]?: T } {
	const result: { [key in K]?: T } = {};

	for (const [key, value] of object as unknown as Map<K, V>) {
		result[key] = mapper(value, key);
	}

	return result;
}

/**
 * Replaces a property on an object with a new value. Only changes the
 * property if the value is not undefined.
 */
export function mapProperty<T extends object, K extends keyof T>(
	object: T,
	key: K,
	mapper: (value: NonNullable<T[K]>) => T[K] | undefined,
): T {
	if (object[key] !== undefined) {
		const copy = table.clone(object);
		copy[key] = mapper(object[key]!)!;
		return copy;
	}

	return object;
}

/**
 * Creates a new array of values given a length and a mapper function.
 */
export function fillArray<T extends defined>(length: number, mapper: (index: number) => T): T[] {
	return new Array(length, 0).map((_, index) => mapper(index));
}

/**
 * Clones the first object and merges the second object into it. Useful
 * for creating a new object without iterating over the first object.
 */
export function assign<K extends string, V>(object: { [key in K]: V }, patch: { [key in K]: V }): { [key in K]: V } {
	const result = table.clone(object);

	for (const [key, value] of patch as unknown as Map<K, V>) {
		result[key] = value;
	}

	return result;
}

/**
 * Returns a shuffled copy of the given array.
 */
export function shuffle<T extends defined>(array: T[]): T[] {
	const result = table.clone(array);
	const random = new Random();

	for (const index of $range(result.size() - 1, 1, -1)) {
		const randomIndex = random.NextInteger(0, index);
		const temp = result[index];
		result[index] = result[randomIndex];
		result[randomIndex] = temp;
	}

	return result;
}

export function countProperties(object: object): number {
	let size = 0;

	for (const [_] of pairs(object)) {
		size += 1;
	}

	return size;
}

================================================================================
// File: src/shared/utils/player-utils.ts
================================================================================
import { Players } from "@rbxts/services";
import { promiseTree } from "@rbxts/validate-tree";

const characterSchema = {
	$className: "Model",
	HumanoidRootPart: "BasePart",
	Humanoid: {
		$className: "Humanoid",
		Animator: "Animator",
	},
} as const;

export interface Character extends Model {
	HumanoidRootPart: BasePart;
	Humanoid: Humanoid & {
		Animator: Animator;
	};
}

export async function promiseCharacter(character: Model): Promise<Character> {
	return promiseTree(character, characterSchema).timeout(30, "Character timed out");
}

export async function promisePlayerDisconnected(player: Player): Promise<void> {
	if (!player.IsDescendantOf(Players)) {
		return;
	}

	await Promise.fromEvent(Players.PlayerRemoving, (playerWhoLeft) => playerWhoLeft === player);
}

export function getPlayerByName(name: string) {
	const player = Players.FindFirstChild(name);

	if (player?.IsA("Player")) {
		return player;
	}
}

export function onPlayerAdded(callback: (player: Player) => void) {
	const connection = Players.PlayerAdded.Connect(callback);

	for (const player of Players.GetPlayers()) {
		callback(player);
	}

	return () => connection.Disconnect();
}

================================================================================
// File: src/shared/utils/run-once.ts
================================================================================
/**
 * Wraps a function so that it can only be called once.
 * Subsequent calls will not execute the function.
 */
export function runOnce<Args extends unknown[], Result>(callback: (...args: Args) => Result) {
	let result: Result;
	let ran = false;

	return (...args: Args): Result => {
		if (!ran) {
			ran = true;
			result = callback(...args);
		}

		return result;
	};
}

================================================================================
// File: src/shared/utils/scheduler.ts
================================================================================
import { RunService } from "@rbxts/services";

interface SchedulerOptions {
	readonly name: string;
	readonly tick: number;
	readonly phase?: number;
	readonly onTick?: (deltaTime: number) => void;
	readonly onRender?: (deltaTime: number, alpha: number) => void;
}

const connected = new Set<RBXScriptConnection>();

export function createScheduler({ name, tick, phase, onTick, onRender }: SchedulerOptions) {
	let timer = phase ?? 0;

	const connection = RunService.Heartbeat.Connect((deltaTime) => {
		const frameTime = math.min(deltaTime, tick);

		timer += frameTime;

		while (timer >= tick) {
			timer -= tick;
			debug.profilebegin(name);
			onTick?.(tick);
			debug.profileend();
		}

		onRender?.(frameTime, timer / tick);
	});

	connected.add(connection);

	return () => {
		connection.Disconnect();
		connected.delete(connection);
	};
}

export function disconnectAllSchedulers() {
	for (const connection of connected) {
		connection.Disconnect();
	}

	connected.clear();
}

================================================================================
// File: tarmac-manifest.toml
================================================================================
[inputs."assets/images/skins/snake_awesome_body.png"]
hash = "8d7bd157761c33b955ea7890c8688a373312e44f54c169f37da1726fadee7844"
id = 14884183308
packable = false

[inputs."assets/images/skins/snake_awesome_head.png"]
hash = "2e93b0da41edad20d3eaf103892f75488adea7e1b080b3844f9db236605ff686"
id = 14884183395
packable = false

[inputs."assets/images/skins/snake_black_ice.png"]
hash = "b966800fd1331404a732c31f79e12c5bf94b79d0e8d3f7ff2923f433e06dc7a3"
id = 14836390041
packable = false

[inputs."assets/images/skins/snake_canada.png"]
hash = "e328654b7fa2b819790a28dd72298700f5b81e47bc4de83d1445523cd3614626"
id = 14884212831
packable = false

[inputs."assets/images/skins/snake_eye_left.png"]
hash = "0a28ff35791484c782ea7351df7efbf0885fc4419c46a464f115781ed8d6a643"
id = 14835197016
packable = false

[inputs."assets/images/skins/snake_eye_right.png"]
hash = "41700be12f2287484ea0515770de5d56137e39d9fa644e055497580072ccedb0"
id = 14835197048
packable = false

[inputs."assets/images/skins/snake_jelly.png"]
hash = "1ebf971d90be603dbb6e2222d2c2abe7f195ae3a9db13083ba3d97763b733d83"
id = 14835608619
packable = false

[inputs."assets/images/skins/snake_jelly_blue.png"]
hash = "ff83b6f70ffe3287698ddcf650c8ed3870dfe56beb87ed64076df35123ed8196"
id = 14836431074
packable = false

[inputs."assets/images/skins/snake_jelly_red.png"]
hash = "ca8d21c51f5315f3b23bffb6bab6649510118590ce5d6ea62d93922f6874df4e"
id = 14836431136
packable = false

[inputs."assets/images/skins/snake_main.png"]
hash = "eab72850c3c072a09399d9a4dcc7710d10a5cb0a3f245a32940052ef1a622ed4"
id = 14884217464
packable = false

[inputs."assets/images/skins/snake_no_eye.png"]
hash = "f19a7a9044ddb730bd2ca5bd6dd80320cc8b4615bc49db8f216eace741acb324"
id = 14883700305
packable = false

[inputs."assets/images/skins/snake_outlined.png"]
hash = "6266d866585cf0967179f308dfe7c8ed57699b176dc3567dfa40f1a78078da4b"
id = 14884183614
packable = false

[inputs."assets/images/skins/snake_stare_body.png"]
hash = "caacaf5c35e3d05a81590692c96432bb8fcc3ab964a2e7fac18a4d46ec07d4f8"
id = 14884183698
packable = false

[inputs."assets/images/skins/snake_stare_head.png"]
hash = "fd8390d50902ad8133d41b5afb0a05a6ab274a3638ae656549c779d2e5dd644c"
id = 14884183771
packable = false

[inputs."assets/images/skins/snake_stars.png"]
hash = "93bb25b18efacbee6605468897277db4f5198528f9305a7991c2b54f1717a3ec"
id = 14884212936
packable = false

[inputs."assets/images/skins/snake_vamp_body.png"]
hash = "4ce5cca037d85758a97521ccfedd2f596413d7d33e588dd23a34b1ee808f1bc4"
id = 14884117497
packable = false

[inputs."assets/images/skins/snake_vamp_head.png"]
hash = "ab290c60aa28352ac984c34956f5d04b7cc0500c9c58d9f6e1036473ecaa31de"
id = 14884117564
packable = false

[inputs."assets/images/ui/alert_dismiss.png"]
hash = "df13be92780e30383b63d718d005351605ad0ab00e836b24aca4e3392f8e05d5"
id = 14402269904
packable = false

[inputs."assets/images/ui/backdrop.png"]
hash = "dd4394d34569a6fac785244bb6e4b7da17a900d504f04fede5a692cd5396e690"
id = 14921324346
packable = false

[inputs."assets/images/ui/blur.png"]
hash = "d1b211a8eaaf1a834836d63b984aaf85538b10e34a714d06fc65ba0faf440af6"
id = 14120516187
packable = false

[inputs."assets/images/ui/button_glow_top.png"]
hash = "e121274fed0760cf0d12ad9d0ca76dfeb14a3ec473699ea0aefd5864a9cb008f"
id = 14367671668
packable = false

[inputs."assets/images/ui/circle.png"]
hash = "f09bf69c83b01c4545a27118082cf0aa4eab4d930d8b30a50f633e023536ebe8"
id = 14120516288
packable = false

[inputs."assets/images/ui/heart.png"]
hash = "d9a29e2adce7d63f3a7ae69ee97dfa03a83d589c32f93584008eddb904cd578e"
id = 14789182848
packable = false

[inputs."assets/images/ui/heart_glow.png"]
hash = "8498cfac2c85d6b8dea5b650ca12e479f57bd1c298f322a132a232185cde866c"
id = 14789182940
packable = false

[inputs."assets/images/ui/leader_pointer.png"]
hash = "bf9bbfcac07db2ce7b20db172c335e7d8ec3c1790907bf37e7a9f36d76d2d98c"
id = 14917242400
packable = false

[inputs."assets/images/ui/map_crosshair.png"]
hash = "cf91f362ff6af65cf1aaa1c1f05681001fdc2d7af9a71c1f9162100e6a400a76"
id = 14127467312
packable = false

[inputs."assets/images/ui/map_cursor.png"]
hash = "ccd68193219542e81475ff1426d77ea45fa7e44c5b85194f6950c8e6492c6379"
id = 14127465927
packable = false

[inputs."assets/images/ui/menu_title.png"]
hash = "64020170b0236890947e4ea28e15592699351f7d9d9a3825b05b030fb8a3d3f0"
id = 14120569384
packable = false

[inputs."assets/images/ui/nav_heart.png"]
hash = "7d3d964b46383cd6a6134c3a95fb9c473d23140e7a3c74317f736cda98e64069"
id = 14183565399
packable = false

[inputs."assets/images/ui/nav_heart_alt.png"]
hash = "c5ef63cad11ff4eb160fe0024f46fd479d1cd04996c49364f172c47964b3b24e"
id = 14916522329
packable = false

[inputs."assets/images/ui/nav_home.png"]
hash = "f41eb520f2c02d41c571caa04df8786fc7658ef4a500b75967569c97a26f8b7c"
id = 14183565573
packable = false

[inputs."assets/images/ui/nav_home_alt.png"]
hash = "ca351de75ba52f1bc7798f46e6ca173ef3a4d6c95d1d6b3413faff6a930e3a40"
id = 14183565737
packable = false

[inputs."assets/images/ui/nav_skins.png"]
hash = "ff92c83ed23a25fdd0dff665d9b13e76d2d7406f8dfc54499dfbedeb9a797317"
id = 14916522483
packable = false

[inputs."assets/images/ui/nav_skins_alt.png"]
hash = "ea9e2ea0b3acb8bba7bcc0c23888114514f8c1538926491b759e3ed01adc7ada"
id = 14916522599
packable = false

[inputs."assets/images/ui/skin_card_gradient.png"]
hash = "7ca3caba207e589aaffbb0087cd0da5a1970be6825ec18d3ef9bf515da350f29"
id = 14271107508
packable = false

[inputs."assets/images/ui/skin_indicator.png"]
hash = "b44e81a1842b4b0c699f57f18e4033ffff9135e87d29a150b4fee4fa5305f05f"
id = 14282707759
packable = false

[inputs."assets/images/ui/skin_indicator_locked.png"]
hash = "aeef0862af12b91eae150cd7f0ec1f429e8d58c4b183d8fd83ac21e3fbfed18c"
id = 14282707833
packable = false

[inputs."assets/images/ui/tile_stripes.png"]
hash = "f579f8ad1ad2b59967bcf7c31e758b7e103b0267177352175cf57f7d184eecf0"
id = 14137143166
packable = false

[inputs."assets/images/ui/vignette.png"]
hash = "82cd560e5759d23863dfeef00411ccae3135d7c3509852b1ca0055d6b1061503"
id = 14120516929
packable = false

================================================================================
// File: tarmac.toml
================================================================================
name = "tarmac"

# Most projects will define some 'inputs'.
# This tells Tarmac where to find assets that we'll use in our game.
[[inputs]]
glob = "assets/images/**/*.png"
codegen = true
codegen-path = "src/shared/assets/images/init.lua"
codegen-base-path = "assets"

================================================================================
// File: testez-companion.toml
================================================================================
roots = [
	"ReplicatedStorage/TS/test",
	"ServerScriptService/TS/test",
	"StarterPlayer/StarterPlayerScripts/TS/test",
]

