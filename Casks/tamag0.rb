cask "tamag0" do
  version "1.80.1"

  on_arm do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-arm64.dmg"
    sha256 "940431526299cacc6354490dedf57f1b69f8f312a51638dddf10c8d50e72a2af"
  end

  on_intel do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-x64.dmg"
    sha256 "b86340ed8f4048c73d69cc3478d161ed088b32908b071c6bb8114f9f858cdef6"
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
