# This file is auto-updated by GoReleaser on each release.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.9/agend-1.1.9-darwin-arm64.tar.gz"
      sha256 "3a4cdd1afcaaa6c49ab467a17d8ad75a747d3c8d955396d4938814d3c7a52a6b"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.9/agend-1.1.9-darwin-amd64.tar.gz"
      sha256 "c8a3f847b750bbc01a89c6e04bffaf1905603353766989a56a10583953fd7375"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.9/agend-1.1.9-linux-arm64.tar.gz"
      sha256 "a89f74b4c2c91b55fc38c4a35164596414cba0681b45fca199cfce58cb1f27a4"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.9/agend-1.1.9-linux-amd64.tar.gz"
      sha256 "e62e4e7fe06a4e3735d2f5d54cc82147299546d8cdada9b3a231af238f607abb"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
