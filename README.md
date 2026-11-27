# fzn0x/homebrew-tap

The [Homebrew](https://brew.sh) tap of [MixMusic](https://github.com/fzn0x/mixmusic), a free, open-source desktop player for Spotify and YouTube Music.
It also has the command line of [Getman](https://github.com/fzn0x/getman), a local-first, open-source API client: see [Getman](#getman).
And it has [FastEmu](https://github.com/fzn0x/FastEmu), which runs Java ME games, many at once in one window: see [FastEmu](#fastemu).

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

## Getman

```sh
brew install fzn0x/tap/getman
```

This installs the `getman` command on macOS (Apple silicon and Intel) and Linux (x86_64 and ARM64). The desktop app is a separate download from [Getman's releases](https://github.com/fzn0x/getman/releases/latest).

Update it with `brew upgrade getman`, and remove it with `brew uninstall getman`.

`Formula/getman.rb` is written for each Getman release from [`packaging/homebrew/getman.rb.in`](https://github.com/fzn0x/getman/blob/main/packaging/homebrew/getman.rb.in). Change the template there, not the formula here. Problems go to [Getman's issues](https://github.com/fzn0x/getman/issues).

## FastEmu

```sh
brew install --cask fzn0x/tap/fastemu
```

This installs FastEmu.app and the `fastemu` command on macOS 11 Big Sur and later, on Apple silicon and Intel.

FastEmu isn't notarized by Apple, so macOS blocks it the first time you open it. Allow it once in System Settings › Privacy & Security › Open Anyway, or run:

```sh
xattr -dr com.apple.quarantine /Applications/FastEmu.app
```

Update it with `brew upgrade --cask fastemu`, and remove it with `brew uninstall --cask fastemu`. Add `--zap` to remove its library, game saves and settings as well.

`Casks/fastemu.rb` is written for each FastEmu release from [`packaging/homebrew/fastemu.rb.in`](https://github.com/fzn0x/FastEmu/blob/main/packaging/homebrew/fastemu.rb.in). Change the template there, not the cask here. Problems go to [FastEmu's issues](https://github.com/fzn0x/FastEmu/issues).
