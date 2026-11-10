# culcat Homebrew Tap

Official [Homebrew](https://brew.sh) tap for macOS applications and utilities by [@culcat](https://github.com/culcat).

## Available Packages

### 🔋 [BatteryBar for macOS](https://github.com/culcat/BatteryBar-MacOS) (`v0.2.0`)
Ultra-lightweight, energy-efficient native macOS Menu Bar widget displaying battery time remaining and hardware telemetry.

#### Install macOS App Bundle (`.app` in `/Applications` — Recommended)
```bash
brew tap culcat/tap
brew install --cask battery-bar
```
Or in a single command:
```bash
brew install --cask culcat/tap/battery-bar
```

#### Install via Formula (with `brew services` background agent support)
```bash
brew install culcat/tap/battery-bar
brew services start battery-bar
```
