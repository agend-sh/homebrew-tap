# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.3/agend-1.2.3-darwin-arm64.tar.gz"
      sha256 "88197d76eddfe12d3a186294253af3f346a6be5e684cdaccdd3fca05150db790"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.3/agend-1.2.3-darwin-amd64.tar.gz"
      sha256 "fb4023263346b687e3e2903c9f20b5af2dd6fef670a84539b8a8c7209b6e4133"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.3/agend-1.2.3-linux-arm64.tar.gz"
      sha256 "9caf7ca34ea09e955c0e5b2c53b74cceb1942d61a245927bb6eb18b6a2f51159"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.3/agend-1.2.3-linux-amd64.tar.gz"
      sha256 "147449846c5517591dbb24559de0e8d9e3bf73e677c76138844a936312483a8f"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
