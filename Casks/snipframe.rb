cask "snipframe" do
  version "1.1.0"
  sha256 "3de2eb8dc2322fca07414d67093f3cc715338cf7304ea6e850e8fe1d5abac3af"

  url "https://github.com/chnozmn-pixel/SnipFrame/releases/download/v#{version}/SnipFrame-#{version}-macOS.zip",
      verified: "github.com/chnozmn-pixel/SnipFrame/"
  name "SnipFrame"
  desc "Native macOS screenshot tool with annotations"
  homepage "https://github.com/chnozmn-pixel/SnipFrame"

  depends_on macos: ">= :ventura"

  app "SnipFrame.app"

  caveats <<~EOS
    SnipFrame is signed ad-hoc (no paid Apple Developer ID), so macOS blocks the
    first launch. Clear the quarantine flag once:

      xattr -dr com.apple.quarantine "#{appdir}/SnipFrame.app"

    Then grant Screen Recording permission on the first capture:
    System Settings -> Privacy & Security -> Screen Recording.
  EOS
end
