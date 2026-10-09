# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.14/agend-1.2.14-darwin-arm64.tar.gz"
      sha256 "66d7edbaa7af6a791ee1d747cdfe134bab2e552d2ca121c63f9d6bdd4e9d2316"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.14/agend-1.2.14-darwin-amd64.tar.gz"
      sha256 "e7c9aff3ce30e7a80191791b33736f81540a5936b7aa89b001641bc87531fa82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.14/agend-1.2.14-linux-arm64.tar.gz"
      sha256 "68846f875e4a4f96fef970c2c753eda261740c88e29a673ef858745fb0373eae"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.14/agend-1.2.14-linux-amd64.tar.gz"
      sha256 "554244bae745b9079c07ad9fda83f91bd769e994124b4eabdd2cdfff951e61c3"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
