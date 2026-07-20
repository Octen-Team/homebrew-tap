class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.3/octen-darwin-arm64"
      sha256 "074c971f4401579c292246f0f81e46de5d044488f7313436c61206091f93fbe8"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.3/octen-darwin-x64"
      sha256 "6ee54aefd67531853a1b468bc31643a448e7d4cdc00d7085cac06968bf1fb30b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.3/octen-linux-arm64"
      sha256 "a3458f188462eaea95ec3a88e26312708a8899a5d38481579fd530638163bd93"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.3/octen-linux-x64"
      sha256 "5dcf161867af0dce5d1989e732b69edc18476b5715324be59808c3a6831a2152"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
