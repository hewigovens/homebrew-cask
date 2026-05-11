cask "ghosttile" do
  version "2.0.9"
  sha256 "e069ab7d636c7bae8bb0246a050bd40111c73b1ad925c63a7b35cf1436c96894"

  url "https://github.com/hewigovens/ghosttile-cli/releases/download/v#{version}/GhostTile-#{version}.zip",
      verified: "github.com/hewigovens/ghosttile-cli/"
  name "GhostTile"
  desc "Hide your running applications from Dock"
  homepage "https://ghosttile.hewig.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "GhostTile.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/im.kernelpanic.ghosttile.sfl*",
    "~/Library/Application Support/GhostTile",
    "~/Library/Application Support/im.kernelpanic.GhostTile",
    "~/Library/HTTPStorages/im.kernelpanic.GhostTile",
    "~/Library/Logs/GhostTile",
    "~/Library/Preferences/im.kernelpanic.GhostTile.plist",
  ]
end
