class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.2.0/octen-darwin-arm64"
      sha256 "433a52d12ad2ca34c2b7cde54a8e8d9f8dae66f6503f93269c16c1513aedeed3"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.2.0/octen-darwin-x64"
      sha256 "05fd575b932df66f4f0c0972686ebb9072cdf57470e887753832d75daa211163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.2.0/octen-linux-arm64"
      sha256 "59bc79ed82a55b1e84b9f49d1fb3e842ea340c36e458aa50a0b5dd81c32ac7d1"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.2.0/octen-linux-x64"
      sha256 "4462866bd47da28873a087717d39878f78c5b3f717697c0b5b4a1c7b6422d1eb"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
