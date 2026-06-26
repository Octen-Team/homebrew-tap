class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.1.13/octen-darwin-arm64"
      sha256 "8f2bb5f323343f2b6738352ec7e2bfd23f8908c384a902e105eb238389229631"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.1.13/octen-darwin-x64"
      sha256 "404bd951bd70e40100bf4cb793cc90f70a460ff7aa0429c469716c7e959e82de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.1.13/octen-linux-arm64"
      sha256 "d253da33cde283b0b14a61d529854ca59070d206978fec5d4846a02d535c206f"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.1.13/octen-linux-x64"
      sha256 "a872b709ff3b4b905e439d2dd1a46b4abe9028ff9146c469825fb17b73ade157"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
