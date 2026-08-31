class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.7.0/octen-darwin-arm64"
      sha256 "a3edda20ca021af8b7bf1010a9791983d866c65e9332edce9313748eac205a4b"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.7.0/octen-darwin-x64"
      sha256 "75782c450aee632e6bf70aeb0d73363af52130716411cf0d527e31aaefd3a660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.7.0/octen-linux-arm64"
      sha256 "f00c02cd7f89f7c7ccd6c9833e848b54d808e43b81bc33f5f03617ddea78dd64"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.7.0/octen-linux-x64"
      sha256 "7e7cbe9157891e453106735e4ba8f4d70d8a6a395f68d80765e4381821b7c58e"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
