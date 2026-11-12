# fzn0x/homebrew-tap

The [Homebrew](https://brew.sh) tap of [MixMusic](https://github.com/fzn0x/mixmusic), a free, open-source desktop player for Spotify and YouTube Music.

## Install

```sh
brew install --cask fzn0x/tap/mixmusic
```

MixMusic runs on macOS 12 Monterey and later, on Apple silicon and Intel.

MixMusic isn't notarized by Apple yet, so macOS blocks it the first time you open it. Allow it once in System Settings › Privacy & Security › Open Anyway, or run:

```sh
xattr -dr com.apple.quarantine /Applications/MixMusic.app
```

## Update

MixMusic updates itself, and `brew upgrade` updates it too:

```sh
brew upgrade --cask mixmusic
```

## Uninstall

```sh
brew uninstall --cask mixmusic
```

Add `--zap` to remove its settings, library and caches as well.

## How the cask is made

`Casks/mixmusic.rb` is written for each MixMusic release by its release workflow, from [`packaging/homebrew/mixmusic.rb.tmpl`](https://github.com/fzn0x/mixmusic/blob/main/packaging/homebrew/mixmusic.rb.tmpl). Change the template there, not the cask here. Problems with MixMusic or its cask go to [MixMusic's issues](https://github.com/fzn0x/mixmusic/issues).
