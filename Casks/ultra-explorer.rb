cask "ultra-explorer" do
  version "1.3.0"
  sha256 "69fc130510c34c2beae1dc6c00852a7d585c25a4594e04d158909f8f0258a9a7"

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
