# homebrew-snipframe

Homebrew tap for [SnipFrame](https://github.com/chnozmn-pixel/SnipFrame) — a native macOS
screenshot tool with annotations.

```bash
brew install --cask chnozmn-pixel/snipframe/snipframe
```

Or tap first:

```bash
brew tap chnozmn-pixel/snipframe
brew install --cask snipframe
```

The app is ad-hoc signed, so clear the quarantine flag once after installing if macOS blocks
the first launch:

```bash
xattr -dr com.apple.quarantine "/Applications/SnipFrame.app"
```
