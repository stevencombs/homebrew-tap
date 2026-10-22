# stevencombs/homebrew-tap

Homebrew casks by [Steven Combs (retroCombs)](https://www.youtube.com/@retroCombs).

```sh
brew install --cask stevencombs/tap/grokgauge
brew install --cask stevencombs/tap/clipgauge
```

| Cask | What it is |
| --- | --- |
| [`grokgauge`](Casks/grokgauge.rb) | [GrokGauge](https://github.com/stevencombs/GrokGauge): your SuperGrok and Grok Bot weekly usage in the macOS menu bar (macOS 14+, Apple silicon and Intel). |
| [`clipgauge`](Casks/clipgauge.rb) | [ClipGauge](https://stevencombs.github.io/ClipGauge/): renames and sorts your video and photo clips with local AI (Ollama + whisper.cpp), from the macOS menu bar (macOS 14+, Apple silicon and Intel). Installs `ffmpeg`, `ollama` and `whisper.cpp`; AI models are pulled later in the app's Setup, only after you approve. |

To update, run `brew upgrade --cask grokgauge` (or `clipgauge`). To remove an app, run `brew uninstall --cask grokgauge`
(or `clipgauge`); add `--zap` to also delete its preferences. Zapping ClipGauge never touches your project folder,
clips, transcripts or AI models.

## About Gatekeeper

GrokGauge is open source and **ad-hoc signed, not notarized by Apple**. So that macOS doesn't block
the first launch, the cask removes the `com.apple.quarantine` flag from `GrokGauge.app` only, right
after installing it. Nothing else on your Mac is changed. If you'd rather review the app first,
read the [source](https://github.com/stevencombs/GrokGauge) or build it yourself with
`./scripts/build-app.sh`.

ClipGauge works the same way: it is open source, ad-hoc signed and not notarized, and its cask clears the quarantine
flag from `ClipGauge.app` only. Read the [source](https://github.com/stevencombs/ClipGauge) or build it yourself with
`app/ClipGauge/build.sh`.

GrokGauge is an unofficial community project. It is not affiliated with xAI or with Anysphere, the maker of Grok Bot.
ClipGauge is an unofficial community project too. It is not made, endorsed, or supported by Blackmagic Design,
Ollama, Alibaba (Qwen) or OpenAI (Whisper).

## License

The casks in this repository are MIT licensed. Each app keeps its own license.
