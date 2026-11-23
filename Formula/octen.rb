class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-darwin-arm64"
      sha256 ""
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-darwin-x64"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-linux-arm64"
      sha256 ""
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-linux-x64"
      sha256 ""
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
