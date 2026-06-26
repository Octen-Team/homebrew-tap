# Octen Homebrew tap

Install the standalone [Octen CLI](https://github.com/Octen-Team/octen-cli) — no Node.js required.

## Install

One command (taps automatically):

```sh
brew install Octen-Team/tap/octen
```

Or tap once and use the short name:

```sh
brew tap Octen-Team/tap
brew install octen
```

On Homebrew 6+ you may be asked to trust the tap the first time: `brew trust octen-team/tap`.

## Uninstall

```sh
brew uninstall octen
brew untap Octen-Team/tap   # optional — also removes the tap
```

Then set your API key and go:

```sh
export OCTEN_API_KEY=your_key_here
octen search "latest LLM benchmarks" -n 5
```

The formula downloads a self-contained binary (built with `bun --compile`) for your
platform from the matching `octen-cli` GitHub Release.

## Updating the formula (maintainers)

After a new `vX.Y.Z` release of `octen-cli` is published (its CI attaches the
per-platform binaries and `SHA256SUMS.txt`), regenerate the formula and commit:

```sh
scripts/update-formula.sh X.Y.Z
git commit -am "octen X.Y.Z"
git push
```
