# This file is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.7/agend-1.1.7-darwin-arm64.tar.gz"
      sha256 "cc611e2b1fafa0ea5e7ffcecf464f56a898d5e42c50f37040f7694cb29f72648"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.7/agend-1.1.7-darwin-amd64.tar.gz"
      sha256 "ad9869b26b5d949fa4ab6cbd35919991e226b8ab10abf57331c10879a2a125ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.7/agend-1.1.7-linux-arm64.tar.gz"
      sha256 "6274e7e5d36f59588fdaca64617e596552094ec77696985c4269a0496e224fce"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.7/agend-1.1.7-linux-amd64.tar.gz"
      sha256 "14d46ab842825a00e6fe2d66041dd25fbfa83dc42087f4e2bf72fd1c591548f1"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
