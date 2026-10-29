class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.11.0/octen-darwin-arm64"
      sha256 "5b03e2f726e65ea6d8ca83e3c34e845749a73063b44cf48ad6c9cdf5b42254f2"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.11.0/octen-darwin-x64"
      sha256 "6c57f891402c2efe2be3be864c8b45f2ea3a76db27facbca29fef098d01791e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.11.0/octen-linux-arm64"
      sha256 "cecafca829ceacab619e1902702b79347546a175159b662afd0e783f26136152"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.11.0/octen-linux-x64"
      sha256 "16fd9a1067505ed86da0b55054695c12c41fe7486f791bcbfb016d5e7700eee4"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
