cask "tamag0" do
  version "1.49.3"

  on_arm do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-arm64.dmg"
    sha256 "fb3b0603f7913d2d331200a899501e555153cf6e4eef2af549e37d0adc5781b0"
  end

  on_intel do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-x64.dmg"
    sha256 "1535535d904f2252b521018c53430085940561a28e3810e9bf91c048e727d8a4"
  end

  name "Tamag0"
  desc "Desktop App for tamag0.ai"
  homepage "https://tamag0.ai"

  app "Tamag0.app"

  zap trash: [
    "~/Library/Application Support/tamag0-desktop",
    "~/Library/Logs/tamag0-desktop",
    "~/Library/Preferences/com.softizy.tamag0.plist",
    "~/Library/Saved Application State/com.softizy.tamag0.savedState",
  ]
end
