# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.0/agend-1.2.0-darwin-arm64.tar.gz"
      sha256 "2e42b097d9822e2fc0945a8c4e490964ec64685415adf653e2fe5cc668553da4"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.0/agend-1.2.0-darwin-amd64.tar.gz"
      sha256 "24008f99ef27f6611155946cf31b8c0bda628bb2cc2557eddbe452f54f341d33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.0/agend-1.2.0-linux-arm64.tar.gz"
      sha256 "e45c3b3d0f34fe0becbf21662eb1df451b1421d43be14157cd40f44397a7518d"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.0/agend-1.2.0-linux-amd64.tar.gz"
      sha256 "ce7bdb2100d4b40a3617525e81bf38753cc678a3423db9a6261fee9f0da73eaa"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
