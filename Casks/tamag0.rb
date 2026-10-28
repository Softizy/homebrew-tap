cask "tamag0" do
  version "1.65.1"

  on_arm do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-arm64.dmg"
    sha256 "b74ae0df96e03281b627b050d7b1fa174b5a1b3e726873ea3fc8e94a6f63fc8c"
  end

  on_intel do
    url "https://github.com/Softizy/tamag0-releases/releases/download/v#{version}/Tamag0-x64.dmg"
    sha256 "0276b64a0ffe12ba6004645a0fd7d48f54f0691324d509654bb07011221cd695"
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
