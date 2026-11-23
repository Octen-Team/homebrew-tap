class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.12.0/octen-darwin-arm64"
      sha256 "e025ec6638003661e4549b2ea4d004c17819c0fbbf213b2c817f5365e725008b"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.12.0/octen-darwin-x64"
      sha256 "0571326ab63931a8e1a74ab5efc083d11ab2db9ad6fa271595685fa65dcc8a7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.12.0/octen-linux-arm64"
      sha256 "b3292fdc0351ae117029d57dcbfbf7c40ae96313729b58ed2aa1243be4c8002e"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.12.0/octen-linux-x64"
      sha256 "937e386e912c02de8750f514c5fad8d1474dc1c1e1bec64267f796da94192be1"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
