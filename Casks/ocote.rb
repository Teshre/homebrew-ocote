cask "ocote" do
  version "0.5.8"
  sha256 "cd662d744351e44aeef2429c8b69e0e7158bbc75014c52462fab83637c289c0f"

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
