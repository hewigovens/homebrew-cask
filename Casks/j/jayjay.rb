cask "jayjay" do
  version "0.3.24"
  sha256 "c85d095387422d518e1bb18b61851690abf141e143e34d986dd38c0ccb5a8eb9"

  url "https://github.com/hewigovens/jayjay/releases/download/v#{version}/JayJay-#{version}.zip"
  name "JayJay"
  desc "Native GUI for Jujutsu version control"
  homepage "https://github.com/hewigovens/jayjay"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on formula: "jj"
  depends_on macos: :tahoe

  app "JayJay.app"
  binary "#{appdir}/JayJay.app/Contents/MacOS/jayjay-cli", target: "jayjay"

  zap trash: [
    "~/Library/Application Support/dev.hewig.jayjay",
    "~/Library/Caches/dev.hewig.jayjay",
    "~/Library/Preferences/dev.hewig.jayjay.plist",
    "~/Library/Saved Application State/dev.hewig.jayjay.savedState",
    "~/Library/WebKit/dev.hewig.jayjay",
  ]
end
