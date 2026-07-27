class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.5/octen-darwin-arm64"
      sha256 "6e755511232b0f8b0e7892e2e73362b9ee50b837ffbc86290cd9de0f9fe8c9a3"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.5/octen-darwin-x64"
      sha256 "baa23a8785821549e8920928ed684a0d1e90e65924678fec88cc520453340cbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.5/octen-linux-arm64"
      sha256 "5737e55df30c26e9cf5bd537a381d7aaba6e9da29fccefa38140b53eedec0b3f"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.5/octen-linux-x64"
      sha256 "2ee05e4c294a1998bf7b57d1500eba4cc035efcf2a5bb05dccc8410fc348ee58"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
