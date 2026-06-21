cask "tamag0" do
  version "0.1.367"

  on_arm do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-#{version}-arm64.dmg"
    sha256 "328d1eda892d5c74fe7a2f948da240ff4fed1d779dfc12c74f1987c51670d95d"
  end

  on_intel do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-#{version}-x64.dmg"
    sha256 "859b12b609d466a7967bdee8e9c801f1d0098ac2ddc5c7fc2bcf7c8cb105429f"
  end

  name "Tamag0"
  desc "AI companion app for agent-memory — desktop client for tamag0"
  homepage "https://tamag0.ai"

  app "Tamag0.app"

  zap trash: [
    "~/Library/Application Support/tamag0-desktop",
    "~/Library/Logs/tamag0-desktop",
    "~/Library/Preferences/com.softizy.tamag0.plist",
    "~/Library/Saved Application State/com.softizy.tamag0.savedState",
  ]
end
