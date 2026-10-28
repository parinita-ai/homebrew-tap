# Written by parinita-ai/one-cli's homebrew-tap workflow from the signed SHA256SUMS of
# parinita-ai/one-cli-releases v1.1.0. Don't edit it by hand.
class OneCli < Formula
  desc "Denizen Blu coding agent for the terminal"
  homepage "https://help.denizenblu.com/one-cli"
  version "1.1.0"
  license :cannot_represent

  # One CLI for macOS ships once it is signed and notarized by Apple.
  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/parinita-ai/one-cli-releases/releases/download/v1.1.0/one-cli-1.1.0-linux-arm64.tar.gz"
      sha256 "e69b97abde3c225251019e9a6e341cb2d3c5224fb3ba9ffec2485c58a83eb148"
    end
    on_intel do
      url "https://github.com/parinita-ai/one-cli-releases/releases/download/v1.1.0/one-cli-1.1.0-linux-x64.tar.gz"
      sha256 "3fbab131b6e71e6450c49f660b321a348ddf5815fcd8b4ab7650771e4635de4e"
    end
  end

  def install
    bin.install "one-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/one-cli --version")
  end
end
