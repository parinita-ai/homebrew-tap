# Written by parinita-ai/one-cli's homebrew-tap workflow from the signed SHA256SUMS of
# parinita-ai/one-cli-releases v1.0.0. Don't edit it by hand.
class OneCli < Formula
  desc "Denizen Blu coding agent for the terminal"
  homepage "https://help.denizenblu.com/one-cli"
  version "1.0.0"
  license :cannot_represent

  # One CLI for macOS ships once it is signed and notarized by Apple.
  depends_on :linux

  on_linux do
    on_arm do
      url "https://github.com/parinita-ai/one-cli-releases/releases/download/v1.0.0/one-cli-1.0.0-linux-arm64.tar.gz"
      sha256 "3f0512362b834ab1d891281dca6e051151cf40801da7a2f9d08ec14e139e7805"
    end
    on_intel do
      url "https://github.com/parinita-ai/one-cli-releases/releases/download/v1.0.0/one-cli-1.0.0-linux-x64.tar.gz"
      sha256 "83291a2fb3d3b82c1bf5e82c93f1c73ab20e01aff24091eabb8f47b01d233da7"
    end
  end

  def install
    bin.install "one-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/one-cli --version")
  end
end
