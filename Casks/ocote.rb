cask "ocote" do
  version "0.5.4"
  sha256 "28fb74ea7afe59f37ad5d8f71f063c67cd321a569eb134fd6438caa608e1bee4"

  url "https://github.com/Teshre/Ocote/releases/download/v#{version}/Ocote_aarch64.app.tar.gz",
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
