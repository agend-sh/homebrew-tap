# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.7/agend-1.2.7-darwin-arm64.tar.gz"
      sha256 "c398a45137177bf040f094796f7162b8bf70a73372450cc59435a3a95bfb1cd2"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.7/agend-1.2.7-darwin-amd64.tar.gz"
      sha256 "0391942e0f19fb5f2faf00763d780ceeefc08d471760267cfa7ca151ac9289f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.7/agend-1.2.7-linux-arm64.tar.gz"
      sha256 "d816c82b1337870b76579622f9e52dda38cc775816fe8f4bb44a4c5498d244cf"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.7/agend-1.2.7-linux-amd64.tar.gz"
      sha256 "37b8fbc7e56ab5ea0b887bdcf207c2b01e9f177d8967f236d2411dc779a71736"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
