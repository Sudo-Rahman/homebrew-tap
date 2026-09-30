# Homebrew tap for Ultra Explorer

[Ultra Explorer](https://ultra-explorer.app/) is a cross-platform rclone GUI and cloud file manager.

## Install

```bash
brew install --cask sudo-rahman/tap/ultra-explorer
```

The cask currently targets Apple silicon Macs. It installs the signed and notarized DMG published
on [UltraExplorer-Releases](https://github.com/Sudo-Rahman/UltraExplorer-Releases/releases).

## Updates

Ultra Explorer updates itself from its interface, so `brew upgrade` leaves it alone. To let
Homebrew update it anyway:

```bash
brew upgrade --cask --greedy ultra-explorer
```

The cask follows the latest public release automatically: an hourly workflow updates its version
and checksum, verifies the downloaded DMG and audits the cask before committing.

## Uninstall

```bash
brew uninstall --cask ultra-explorer
```

`brew uninstall --zap --cask ultra-explorer` also removes the application's settings, caches and
local data.
