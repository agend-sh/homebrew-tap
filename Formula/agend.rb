# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.6/agend-1.2.6-darwin-arm64.tar.gz"
      sha256 "45e70e75a1d1f7c967904c2b622ae6b9126d32378f8e55fac4abf1bfa0efb130"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.6/agend-1.2.6-darwin-amd64.tar.gz"
      sha256 "8247ce306503ca1c959b3a95e6a6c876c70ae807b4c8d2edf43e79c2b64f2b4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.6/agend-1.2.6-linux-arm64.tar.gz"
      sha256 "b90c2d1fb776fdc940e13946c2ac54b6f6e8efd2210b58a5abe0ca26e18c0f8c"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.6/agend-1.2.6-linux-amd64.tar.gz"
      sha256 "16b6fb0b6d29d77a0af303464848a87e68bb17ea8a29f4e7c9dc7fe675c48e02"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
