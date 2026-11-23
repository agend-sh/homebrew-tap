# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v2.0.0/agend-2.0.0-darwin-arm64.tar.gz"
      sha256 "2f1ea8d9efae5b912b5389bf2e1e1ce6be482d4c36b19d04d8b0055da8b3d2e8"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v2.0.0/agend-2.0.0-darwin-amd64.tar.gz"
      sha256 "8a29c55861e91c19437caba08a3b4de5b6bd5904aba238ffd28cbea4b2b04dfe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v2.0.0/agend-2.0.0-linux-arm64.tar.gz"
      sha256 "1637d647181f2619d1afe5f994945bee9099ad7776954895de529b9575796cd1"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v2.0.0/agend-2.0.0-linux-amd64.tar.gz"
      sha256 "31a6eb8fd0a6b605702114e4d956242a3b29a704062426e268936822b688ff5b"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
