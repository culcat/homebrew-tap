cask "battery-bar" do
  version "0.2.0"
  sha256 "1e163c88b4409ad45d913c303ffd287b8b63a4c53fa4a4a86855dcde6eb46885"

  url "https://github.com/culcat/BatteryBar-MacOS/releases/download/v#{version}/BatteryBar-#{version}.dmg"
  name "BatteryBar"
  desc "Ultra-lightweight native macOS Menu Bar battery time remaining and telemetry widget"
  homepage "https://github.com/culcat/BatteryBar-MacOS"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "BatteryBar.app"

  zap trash: [
    "~/Library/LaunchAgents/com.culcat.batterybar.plist",
    "~/Library/Preferences/com.culcat.batterybar.plist",
  ]
end
