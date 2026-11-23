class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-darwin-arm64"
      sha256 "3382ad34516784919460cebd69a3429a512c6a80a440740af4b61e2fd1b58eea"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-darwin-x64"
      sha256 "91385b29346e4a43dbc1836dab6cb57518a5ebb5e5c0c67a24a9590e535be1ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-linux-arm64"
      sha256 "d4f06108f0fa06b842f1c95e60c78f3aba68aa41dc756dc5bc8d40f5c1e3360a"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.0/octen-linux-x64"
      sha256 "f25d6c3834ee326b79e3c73d865047b8819a0d3f2ddab51a08c78b63d3c1b4a6"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
