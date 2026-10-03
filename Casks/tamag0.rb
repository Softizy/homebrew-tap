cask "tamag0" do
  version "1.41.2"

  on_arm do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-arm64.dmg"
    sha256 "85bb6c8651c86ba36c17be0749c1d79c767a9eea8024c08b97c1229a8c469b61"
  end

  on_intel do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-x64.dmg"
    sha256 "8c18f9e48bb137c181291a46af5a3eabb8fbb4845f36ba952a0aecc0b5c18dc2"
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
