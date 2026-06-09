# homebrew-ocote

Homebrew tap for [Ocote](https://ocote.app) — the terminal that lights up the black screen.

## Usage

```bash
brew tap Teshre/ocote
brew install --cask ocote
```

## Requirements

- macOS (Apple Silicon)
- [Homebrew](https://brew.sh)

## Development

To update the cask for a new version:

1. Download the new `.app.tar.gz` from [Releases](https://github.com/Teshre/Ocote/releases)
2. Compute the SHA256: `shasum -a 256 Ocote_aarch64.app.tar.gz`
3. Update `Casks/ocote.rb` with the new version and SHA256
