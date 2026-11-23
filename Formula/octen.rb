class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.1/octen-darwin-arm64"
      sha256 "11b306340626b1b9d63c888f84425fe16a227e0e44a0939f97e6f8ee79401528"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.1/octen-darwin-x64"
      sha256 "4fd905327466bfcd7e7c47d5db3645a3cd10a6aa8e6052d134902fe8cab77090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.1/octen-linux-arm64"
      sha256 "f00b282b5dc88fb4dd6cf60cd1c37596c61ef390b9d899d8d47352930edb273a"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.13.1/octen-linux-x64"
      sha256 "e56a279a885ac828820415cddf66a8589bcf31ddccaf308ae510eacafa612a34"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
