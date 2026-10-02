cask "ultra-explorer" do
  version "1.0.2"
  sha256 "e4e5d20e449b2b06d02da414fd21c084cdd845261e06eaef26c802f17c58c9b0"

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
