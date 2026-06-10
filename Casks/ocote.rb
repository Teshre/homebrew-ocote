cask "ocote" do
  version "0.5.9"
  sha256 "a28b8c3b0c65d57d6d9ecdb22767dcc8b6e1c11557a683ddfecc32f8f5dba2d0"

  url "https://github.com/Teshre/Ocote/releases/download/v#{version}/Ocote_#{version}_aarch64.dmg",
      verified: "github.com/Teshre/Ocote/"
  name "Ocote"
  desc "Terminal offline, sin IA, hecha para humanos"
  homepage "https://ocote.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Ocote.app"

  zap trash: [
    "~/Library/Application Support/mx.ocote.terminal",
    "~/Library/Preferences/mx.ocote.terminal.plist",
    "~/Library/Saved Application State/mx.ocote.terminal.savedState",
  ]
end
