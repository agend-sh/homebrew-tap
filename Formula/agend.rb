# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.8/agend-1.2.8-darwin-arm64.tar.gz"
      sha256 "a07aceceb89b13fd16af7580fe9bc6da63a6334d123378d0cd1a922632008e5b"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.8/agend-1.2.8-darwin-amd64.tar.gz"
      sha256 "75be81566d13733b3f0c335dbd89945c677e4da986a522ef8f3a29cc3939dcc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.8/agend-1.2.8-linux-arm64.tar.gz"
      sha256 "1ef836906ad6881e8eceb9731f05546d12712d0de15e0234bb8ef53603fab1dd"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.8/agend-1.2.8-linux-amd64.tar.gz"
      sha256 "e8193192c6086a5dd3d8dae89fdb6108d4bcd42638cd8191f8b748027bbb460f"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
