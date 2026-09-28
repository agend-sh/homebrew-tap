# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "1.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.11/agend-1.2.11-darwin-arm64.tar.gz"
      sha256 "365335032a0d7e2573190476597f35990d348473d9f21da5669adbafcf8304cd"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.11/agend-1.2.11-darwin-amd64.tar.gz"
      sha256 "2c3ae8691341e07a90728ac3db8a62389d9920952da6747afbeddcd8214285f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.11/agend-1.2.11-linux-arm64.tar.gz"
      sha256 "4e726a5a5f7fb5c84ecb43b4488a5b925357556920ea5286b93803f2d91e465e"
    end
    on_intel do
      url "https://github.com/agend-sh/cli/releases/download/v1.2.11/agend-1.2.11-linux-amd64.tar.gz"
      sha256 "d5bed91aa39f20cac3ea5cb87e197496e271eb58afe8bf827a0a0fa263696a3f"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
