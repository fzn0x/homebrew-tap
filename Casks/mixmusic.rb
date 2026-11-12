# Written for each release by tools/cask of github.com/fzn0x/mixmusic, from
# packaging/homebrew/mixmusic.rb.tmpl: change that, not this.
cask "mixmusic" do
  version "0.5.10"
  sha256 "6729a1da5a66b5e6fbe133ab1502c073cd2f9022099ddfedd9090a578971e70d"

  url "https://github.com/fzn0x/mixmusic/releases/download/v#{version}/mixmusic-#{version}-macos-universal.dmg"
  name "MixMusic"
  desc "Spotify and YouTube Music in one customizable player"
  homepage "https://fzn0x.github.io/mixmusic/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # No auto_updates, though MixMusic updates itself: `brew upgrade` updates
  # it too.
  depends_on macos: :monterey

  app "MixMusic.app"

  zap trash: [
    "~/Library/Application Support/MixMusic",
    "~/Library/Caches/app.mixmusic.desktop",
    "~/Library/Caches/MixMusic",
    "~/Library/HTTPStorages/app.mixmusic.desktop",
    "~/Library/Logs/MixMusic",
    "~/Library/Preferences/app.mixmusic.desktop.plist",
    "~/Library/Saved Application State/app.mixmusic.desktop.savedState",
    "~/Library/WebKit/app.mixmusic.desktop",
  ]

  caveats <<~EOS
    MixMusic is not notarized by Apple yet, so macOS can't check it and
    blocks it the first time you open it. Allow it once in System Settings ›
    Privacy & Security › Open Anyway, or run:
      xattr -dr com.apple.quarantine #{appdir}/MixMusic.app
  EOS
end
