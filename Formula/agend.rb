# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.2/agend-1.2.2-darwin-arm64.tar.gz"
      sha256 "6412a819c229152189199d59a6adaf82913b9a218c8e4b8bae3d0bc6062c57da"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.2/agend-1.2.2-darwin-amd64.tar.gz"
      sha256 "61dcc3987704c9fd7da564da30bd6fc8491e60b4586de7b723572e36d13f52a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.2/agend-1.2.2-linux-arm64.tar.gz"
      sha256 "530081ae55bf240af03aa2deff5ebeef003e3354a1b0fc6425c24b52e8a330e1"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.2/agend-1.2.2-linux-amd64.tar.gz"
      sha256 "530e6762205e522561ad94ecd8af179bf7742588ed56de4694c1ec0e1b9e2f7e"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
