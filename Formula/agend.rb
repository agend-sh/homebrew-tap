# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.9/agend-1.2.9-darwin-arm64.tar.gz"
      sha256 "bd892b6d42d3c596ca222625d3126e1a51d167bfb6a49e445f5c2f396b2fd61d"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.9/agend-1.2.9-darwin-amd64.tar.gz"
      sha256 "4444a493269e15da26ffaee239b3fe950847684ada391deb1c60d6ceb67741fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.9/agend-1.2.9-linux-arm64.tar.gz"
      sha256 "54e09f58f1fec82275a9b29227e6e51bb6de980c17d65f435a46bd726dbe7677"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.9/agend-1.2.9-linux-amd64.tar.gz"
      sha256 "36facf7093642e763ffca9f3971f4fa24a768d05b830df1ab219ff468ed0cff2"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
