#!/usr/bin/env bash
# Regenerate Formula/octen.rb for a published octen-cli release.
# Usage: scripts/update-formula.sh X.Y.Z
# Pulls the release's SHA256SUMS.txt and writes the four per-platform checksums.
set -euo pipefail

VERSION="${1:?usage: scripts/update-formula.sh X.Y.Z}"
REPO="Octen-Team/octen-cli"
BASE="https://github.com/${REPO}/releases/download/v${VERSION}"
HERE="$(cd "$(dirname "$0")/.." && pwd)"

SUMS="$(curl -fsSL "${BASE}/SHA256SUMS.txt")"
sha() { echo "${SUMS}" | awk -v f="$1" '$2 == f { print $1 }'; }

for f in octen-darwin-arm64 octen-darwin-x64 octen-linux-arm64 octen-linux-x64; do
  if [ -z "$(sha "$f")" ]; then
    echo "error: no checksum for $f in ${BASE}/SHA256SUMS.txt" >&2
    exit 1
  fi
done

cat > "${HERE}/Formula/octen.rb" <<RUBY
class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/${REPO}"
  version "${VERSION}"
  license "MIT"

  on_macos do
    on_arm do
      url "${BASE}/octen-darwin-arm64"
      sha256 "$(sha octen-darwin-arm64)"
    end
    on_intel do
      url "${BASE}/octen-darwin-x64"
      sha256 "$(sha octen-darwin-x64)"
    end
  end

  on_linux do
    on_arm do
      url "${BASE}/octen-linux-arm64"
      sha256 "$(sha octen-linux-arm64)"
    end
    on_intel do
      url "${BASE}/octen-linux-x64"
      sha256 "$(sha octen-linux-x64)"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
RUBY

echo "wrote Formula/octen.rb for v${VERSION}"
