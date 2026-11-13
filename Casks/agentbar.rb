cask "agentbar" do
  version "0.1.0"
  sha256 "8a394ea8acba75b561cbccf5e96759f5bec7d9757091f49de14f83cc03639d07"

  url "https://github.com/culcat/AgentBar/releases/download/v#{version}/AgentBar-#{version}.dmg"
  name "AgentBar"
  desc "Native macOS menu bar monitor and launcher for AI coding agents"
  homepage "https://github.com/culcat/AgentBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "AgentBar.app"

  zap trash: [
    "~/Library/Preferences/com.culcat.agentbar.plist",
  ]
end
