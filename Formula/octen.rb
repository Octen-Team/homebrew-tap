class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.3.0/octen-darwin-arm64"
      sha256 "3189fb3d93733922fcad6c55bfe8a092d138cab74fec38b86a90a2bbf575fb16"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.3.0/octen-darwin-x64"
      sha256 "1765106829ca9e67e01d69cdd20baf42ae9b4882889db92d166c28ae3e0e4781"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.3.0/octen-linux-arm64"
      sha256 "31bfb14e0ce06d771a522cca8e46b36ccf3c8a971631d5ad2f760790b3c4c12d"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.3.0/octen-linux-x64"
      sha256 "21b4e5404d96ea19515f2daf84149707b16cff29bb9d8319c14820494b63b16a"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
