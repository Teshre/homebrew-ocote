cask "ocote" do
  version "0.5.6"
  sha256 "73f195c98c1d651906faf4e8f1c87429e42fffa695fe6f6f94cf870337bf6e35"

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
