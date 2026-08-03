# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.1/agend-1.2.1-darwin-arm64.tar.gz"
      sha256 "276619cb3c879a9c74607a27bcfcc1d564d216d0ba8aa6ccb9e3baf678326e86"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.1/agend-1.2.1-darwin-amd64.tar.gz"
      sha256 "6907de2b0ac343b79a5a3b3a0e9a7417b9483120a82fef1880b1c685a6dbdf11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.1/agend-1.2.1-linux-arm64.tar.gz"
      sha256 "3cf1be01f753a329040d68c8683986607e23bc58be865b44f392784de7418d90"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.1/agend-1.2.1-linux-amd64.tar.gz"
      sha256 "6719e165ee2e459efbbf0568d6d478283fa7b0e1594765b5c9a9724ba4cc2f93"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
