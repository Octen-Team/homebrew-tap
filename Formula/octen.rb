class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.1/octen-darwin-arm64"
      sha256 "db5dd6b295554d31b94739ae3419641bdccd2f95f7ee3109bddccd690a4d0f39"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.1/octen-darwin-x64"
      sha256 "9b407af477c9419b66e0372e76e34bc67afd7ffcce8174b46ef030f31137efc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.1/octen-linux-arm64"
      sha256 "5f06941370af08588c275444689296d95a390ff99c70978a0cd098d11b9f9ccf"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.1/octen-linux-x64"
      sha256 "501bcc4f95c6542f0255ea654c9c5ad3cef565800e2a8a9adf19ec8e0dbaf541"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
