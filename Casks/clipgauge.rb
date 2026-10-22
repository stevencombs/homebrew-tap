cask "clipgauge" do
  version "0.8.5"
  sha256 "fdeffa3aeae571663ff70e57fd2460e65dcacea635a171e0c702e6520d20245e"

  url "https://github.com/stevencombs/ClipGauge/releases/download/v#{version}/ClipGauge-#{version}.zip"
  name "ClipGauge"
  desc "Menu bar app that renames and sorts video and photo clips with local AI"
  homepage "https://stevencombs.github.io/ClipGauge/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: ["ffmpeg", "ollama", "whisper.cpp"]
  depends_on macos: :sonoma

  app "ClipGauge.app"

  # ClipGauge is open source but ad-hoc signed (not notarized), so macOS would block
  # the first launch. Clear the download quarantine flag on this one app only.
  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/ClipGauge.app"]
    end
  end

  uninstall quit: "com.retrocombs.ClipGauge"

  # Only ClipGauge's own per-Mac files. Your project folder, clips, transcripts
  # and AI models (on whatever drive you chose) are never touched.
  zap trash: [
    "~/Library/Application Support/ClipGauge",
    "~/Library/Caches/com.retrocombs.ClipGauge",
    "~/Library/HTTPStorages/com.retrocombs.ClipGauge",
    "~/Library/Preferences/com.retrocombs.ClipGauge.plist",
    "~/Library/Preferences/com.retrocombs.ClipGuage.plist",
    "~/Library/Saved Application State/com.retrocombs.ClipGauge.savedState",
  ]

  caveats <<~EOS
    ClipGauge is ad-hoc signed, not notarized by Apple. This cask removed the
    download quarantine flag from #{appdir}/ClipGauge.app so it opens normally.
    If macOS still blocks it, right-click ClipGauge.app and choose Open, or use
    System Settings > Privacy & Security > Open Anyway.

    No AI models are downloaded by this cask. On first launch, Setup lets you
    choose a project folder on any drive and pulls the models you approve.
  EOS
end
