# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.13/agend-1.2.13-darwin-arm64.tar.gz"
      sha256 "651504f527beafd1089ff57d38e5cbbcce60ed57ffc6b16b4401a8c9a6a8144e"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.13/agend-1.2.13-darwin-amd64.tar.gz"
      sha256 "24dc5d35fe42f67e4999218994d1d2e98cb04cd2c6d0649beec38edb9fb2e91d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.13/agend-1.2.13-linux-arm64.tar.gz"
      sha256 "ae0352a8e9e670c816590003b48c675216a30835d61d0bd691d436b4a4c30554"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.13/agend-1.2.13-linux-amd64.tar.gz"
      sha256 "aaa89021074843a1e40934f9d47e1f61cda68505a39a5165256e441e66e38265"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
