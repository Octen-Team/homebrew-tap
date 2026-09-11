class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.9.0/octen-darwin-arm64"
      sha256 "59c6d9ecaec7ebec8114adec42cae05edb2d01e733f31f17394f523690214759"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.9.0/octen-darwin-x64"
      sha256 "fad9d3e7dec0505f10b80f190015681953d9de51be265f09ac4907a0092cadfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.9.0/octen-linux-arm64"
      sha256 "9b7da9df69679ff6bc79b778471e7ad19a25e7445fabe4d60dc47a49fd271396"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.9.0/octen-linux-x64"
      sha256 "31e62ed038fbf1e45c28f88b76aee57cb44a0e02998bc5aedfc564c41fa8227c"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
