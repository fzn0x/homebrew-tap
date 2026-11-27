# Written for each release by packaging/render-packages.sh of
# github.com/fzn0x/FastEmu, from packaging/homebrew/fastemu.rb.in: change
# that, not this.
cask "fastemu" do
  version "0.1.1"
  sha256 "fd63d2d9eb54ca8374798fa023846d2cdc404430bd3e32eafb68fc3661b68dac"

  url "https://github.com/fzn0x/FastEmu/releases/download/v#{version}/fastemu-#{version}-macos-universal.dmg"
  name "FastEmu"
  desc "Java ME emulator that runs many games at once"
  homepage "https://fastemu.functionx.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "FastEmu.app"
  # The command line, for `fastemu run`.
  binary "#{appdir}/FastEmu.app/Contents/MacOS/fastemu"

  # The library, the games' saves and the settings are all in
  # Application Support, so only --zap removes them.
  zap trash: [
    "~/Library/Application Support/FastEmu",
    "~/Library/Caches/io.github.fzn0x.fastemu",
    "~/Library/Preferences/io.github.fzn0x.fastemu.plist",
    "~/Library/Saved Application State/io.github.fzn0x.fastemu.savedState",
  ]

  caveats <<~EOS
    FastEmu is not notarized by Apple, so macOS blocks it the first time
    you open it. Allow it once in System Settings > Privacy & Security >
    Open Anyway, or run:
      xattr -dr com.apple.quarantine #{appdir}/FastEmu.app
  EOS
end
