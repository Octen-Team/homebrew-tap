class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.10.0/octen-darwin-arm64"
      sha256 "104b40811b75927acadc812278499e812b2eaede545fd9d34ce4255a94bb1212"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.10.0/octen-darwin-x64"
      sha256 "35baf66f282e6be45555e7ba93c9296de9510a8b4b574f4fea27a80783c5373a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.10.0/octen-linux-arm64"
      sha256 "54f05737c7b5d638970cdda298c7707710c723264ca8537b055337bb4b742e23"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.10.0/octen-linux-x64"
      sha256 "26b155977ea05264066b9bf9b4380fe67f79ca5be419cb70faf06fd042bb35af"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
