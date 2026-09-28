# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.10/agend-1.2.10-darwin-arm64.tar.gz"
      sha256 "a3058c01a493a52ed331eca974e76838bb4ed6663de98e0308a34c5b0820d492"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.10/agend-1.2.10-darwin-amd64.tar.gz"
      sha256 "79f153471a66dda861b7c2d1fc5db06ef8f1c322319c666209303ec8fb60667d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.10/agend-1.2.10-linux-arm64.tar.gz"
      sha256 "30b5e664a7e66c02ab467b38ae8341d3d52f2c3a3174949ea9662a2b5e10865d"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.10/agend-1.2.10-linux-amd64.tar.gz"
      sha256 "d66b301340f6c4f74f5e3b811197c73dec93f0cf4507f57885b8dcddf54e3a45"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
