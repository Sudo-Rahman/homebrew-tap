cask "ultra-explorer" do
  version "1.0.5"
  sha256 "1884c343f988e675694670de63a12442ac3a1e1b9ce8f80e061c44159f330a33"

  url "https://github.com/Sudo-Rahman/UltraExplorer-Releases/releases/download/v#{version}/UltraExplorer_#{version}_macOS_arm64.dmg"
  name "Ultra Explorer"
  desc "Cross-platform rclone GUI and cloud file manager"
  homepage "https://ultra-explorer.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The application updates itself through its signed Tauri updater.
  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Ultra Explorer.app"

  zap trash: [
    "~/Library/Application Support/com.ultraexplorer.desktop",
    "~/Library/Caches/com.ultraexplorer.desktop",
    "~/Library/Preferences/com.ultraexplorer.desktop.plist",
    "~/Library/Saved Application State/com.ultraexplorer.desktop.savedState",
    "~/Library/WebKit/com.ultraexplorer.desktop",
  ]
end
