cask "tamag0" do
  version "1.66.0"

  on_arm do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-arm64.dmg"
    sha256 "8354f325d9e0df35f64d9775dd42a784ba1f57f455549edd1f569648ae03847d"
  end

  on_intel do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-x64.dmg"
    sha256 "e0d5ad2dc1efb64d003b5adde5a30dc0e2a8e5208d22b5d93bdc166c26d461f2"
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
