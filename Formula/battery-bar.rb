class BatteryBar < Formula
  desc "Ultra-lightweight native macOS Menu Bar battery time remaining and telemetry widget"
  homepage "https://github.com/culcat/BatteryBar-MacOS"
  url "https://github.com/culcat/BatteryBar-MacOS/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2a6d8cb545d93642a015c47b9e4fc1a1ae84c6327eb0f8a8c5197e94ab78f1f0"
  license "MIT"
  head "https://github.com/culcat/BatteryBar-MacOS.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    run [opt_bin/"battery-bar"]
    keep_alive true
    process_type :interactive
  end

  test do
    assert_predicate bin/"battery-bar", :exist?
  end
end
