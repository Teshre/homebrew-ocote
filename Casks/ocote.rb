cask "ocote" do
  version "0.5.5"
  sha256 "485384ff242e998d8b74ddcfc6d502a070ece9eb37673ac188738c9a301b1caf"

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
