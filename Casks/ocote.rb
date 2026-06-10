cask "ocote" do
  version "0.6.0"
  sha256 "d4574586d0c00406d31747a6dc1a970a40a595cfc3c304676f13cd8ddb0d3b15"

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
