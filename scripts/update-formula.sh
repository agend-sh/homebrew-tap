#!/usr/bin/env bash
# Regenerate Formula/agend.rb from the latest agend-sh/cli release.
#
# The tap updates itself (cron + workflow_dispatch in .github/workflows/
# update-formula.yml) instead of being pushed to from the cli release
# workflow — same-repo GITHUB_TOKEN write needs no PAT or deploy key, so
# there is nothing to expire. Idempotent: exits 0 with no changes when the
# formula already matches the latest release.
set -euo pipefail

REPO="agend-sh/cli"
FORMULA="Formula/agend.rb"

api() {
  curl -fsSL ${GITHUB_TOKEN:+-H "Authorization: Bearer $GITHUB_TOKEN"} \
    -H "Accept: application/vnd.github+json" "$1"
}

# /releases/latest excludes prereleases and drafts by definition.
TAG=$(api "https://api.github.com/repos/$REPO/releases/latest" | jq -r .tag_name)
[[ "$TAG" =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]] || { echo "unexpected tag: $TAG" >&2; exit 1; }
VERSION="${TAG#v}"

if grep -q "version \"$VERSION\"" "$FORMULA" 2>/dev/null; then
  echo "formula already at $VERSION — nothing to do"
  exit 0
fi

echo "updating formula: $(grep -oP 'version "\K[^"]+' "$FORMULA" 2>/dev/null || echo none) → $VERSION"

CHECKSUMS=$(curl -fsSL "https://github.com/$REPO/releases/download/$TAG/checksums.txt")

sha() {
  local s
  s=$(echo "$CHECKSUMS" | awk -v f="agend-$VERSION-$1.tar.gz" '$2==f{print $1}')
  [[ -n "$s" ]] || { echo "missing checksum for $1" >&2; exit 1; }
  echo "$s"
}

DARWIN_ARM=$(sha darwin-arm64)
DARWIN_AMD=$(sha darwin-amd64)
LINUX_ARM=$(sha linux-arm64)
LINUX_AMD=$(sha linux-amd64)

cat > "$FORMULA" <<EOF
# This file is auto-updated by .github/workflows/update-formula.yml.
# Manual edits will be overwritten.
#
# To install: brew install agend-sh/tap/agend
# To update:  brew upgrade agend

class Agend < Formula
  desc "CLI for agend — remote environments for AI agents"
  homepage "https://agend.sh"
  version "$VERSION"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/$REPO/releases/download/$TAG/agend-$VERSION-darwin-arm64.tar.gz"
      sha256 "$DARWIN_ARM"
    end
    on_intel do
      url "https://github.com/$REPO/releases/download/$TAG/agend-$VERSION-darwin-amd64.tar.gz"
      sha256 "$DARWIN_AMD"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/$REPO/releases/download/$TAG/agend-$VERSION-linux-arm64.tar.gz"
      sha256 "$LINUX_ARM"
    end
    on_intel do
      url "https://github.com/$REPO/releases/download/$TAG/agend-$VERSION-linux-amd64.tar.gz"
      sha256 "$LINUX_AMD"
    end
  end

  def install
    bin.install "agend"
  end

  test do
    system "#{bin}/agend", "--version"
  end
end
EOF

echo "$VERSION" > .latest-version
echo "formula regenerated for $TAG"
