# homebrew-tap

Homebrew tap for tools maintained by [@aqua5230](https://github.com/aqua5230).

## Casks

### usag

A macOS menu bar tool that shows your Claude Code 5-hour and 7-day usage.
See the [usag repo](https://github.com/aqua5230/usage) for details.

```bash
brew install --cask aqua5230/tap/usag
```

After install you still need to install the Claude Code statusLine hook once.
See the [usag README](https://github.com/aqua5230/usage#首次安裝) for the one-time setup command.

## Update

```bash
brew update
brew upgrade --cask aqua5230/tap/usag
```

## Uninstall

```bash
brew uninstall --cask aqua5230/tap/usag
brew untap aqua5230/tap   # optional, removes the tap itself
```
