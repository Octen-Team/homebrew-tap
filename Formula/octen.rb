class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.0/octen-darwin-arm64"
      sha256 "74f6c62ac42fa9603b240e361701b5933037a959b5545c84f860d06aaabf67b4"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.0/octen-darwin-x64"
      sha256 "d06960bc0b61eb9e8e29cf9861aebfc2804f974cef7f802780442246fd94522b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.0/octen-linux-arm64"
      sha256 "a497ab189942c1b9376fdbb8f7a82f61ac0bc1871240a43424f721ccf836f5f1"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.0/octen-linux-x64"
      sha256 "a81967dc05d94235191b23a6c2078d89172fb3bf482dc96f1f316fdd495a7cda"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
