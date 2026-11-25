class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.14.0/octen-darwin-arm64"
      sha256 "5f52977dea7c867d307cbdff538dabc36a6b642e2bca1643bfe0c63557466bd1"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.14.0/octen-darwin-x64"
      sha256 "550a3a689462055dda7e6804d19aceb64d149513baeddeb1ce006edcb444eb67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.14.0/octen-linux-arm64"
      sha256 "fad73c8f2fcff39c6f8fc5c21b7805e5cbdfa3697a51c7e52f26ee692f018b13"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.14.0/octen-linux-x64"
      sha256 "d2280296e7620d4a0c3b7efeaf1b538792c7911aebabaf867ac38e1ffc1ee9da"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
