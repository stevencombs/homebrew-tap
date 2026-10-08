# stevencombs/homebrew-tap

Homebrew casks by [Steven Combs (retroCombs)](https://www.youtube.com/@retroCombs).

```sh
brew install --cask stevencombs/tap/grokgauge
```

| Cask | What it is |
| --- | --- |
| [`grokgauge`](Casks/grokgauge.rb) | [GrokGauge](https://github.com/stevencombs/GrokGauge): your SuperGrok and Grok Bot weekly usage in the macOS menu bar (macOS 14+, Apple silicon and Intel). |

To update, run `brew upgrade --cask grokgauge`. To remove it, run `brew uninstall --cask grokgauge`
(add `--zap` to also delete its preferences).

## About Gatekeeper

GrokGauge is open source and **ad-hoc signed, not notarized by Apple**. So that macOS doesn't block
the first launch, the cask removes the `com.apple.quarantine` flag from `GrokGauge.app` only, right
after installing it. Nothing else on your Mac is changed. If you'd rather review the app first,
read the [source](https://github.com/stevencombs/GrokGauge) or build it yourself with
`./scripts/build-app.sh`.

GrokGauge is an unofficial community project. It is not affiliated with xAI or with Anysphere, the maker of Grok Bot.

## License

The casks in this repository are MIT licensed. Each app keeps its own license.
