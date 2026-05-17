cask "usag" do
  version "0.1.1"
  sha256 "0337bd2fdee8928053560dac8002e81fbd0d8d8547223a4ae1eb8c141c7b4a56"

  url "https://github.com/aqua5230/usage/releases/download/v#{version}/usag.app.zip"
  name "usag"
  desc "Menu bar tool that displays Claude Code 5h / 7d usage"
  homepage "https://github.com/aqua5230/usage"

  depends_on macos: :monterey

  app "usag.app"

  postflight do
    # usag is not Apple-signed (no Developer ID). On macOS 15+ the
    # `Homebrew Cask` quarantine marker no longer suppresses the Gatekeeper
    # prompt, and `com.apple.provenance` blocks `open` even after
    # right-click → Open. Strip both attributes so users can launch the app
    # from Finder or `open`.
    ["com.apple.quarantine", "com.apple.provenance"].each do |attr|
      system_command "/usr/bin/xattr",
                     args:         ["-dr", attr, "#{appdir}/usag.app"],
                     must_succeed: false
    end
  end

  zap trash: [
    "~/.claude/usag-status.json",
    "~/.claude/usag-statusline.py",
    "~/Library/Logs/usag",
  ]
end
