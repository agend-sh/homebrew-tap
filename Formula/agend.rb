# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.10/agend-1.1.10-darwin-arm64.tar.gz"
      sha256 "587284507e5ea821f1d9fe36f2865ef4f582dbdc925824212ff30f2055b23807"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.10/agend-1.1.10-darwin-amd64.tar.gz"
      sha256 "8df9a18fca6cb82607e6f39c8bc34546605de2cb57703af9298f344e91803cc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.10/agend-1.1.10-linux-arm64.tar.gz"
      sha256 "f9ee2e70f466190a74ccae2187b71bdbbbe7d537a9849dbbea481cb86a50f072"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.1.10/agend-1.1.10-linux-amd64.tar.gz"
      sha256 "440b328364ea324598f104b43ab5147740142f90e8bcd1749e3c4228738eebaa"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
