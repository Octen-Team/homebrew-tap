class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.8.0/octen-darwin-arm64"
      sha256 "469653ed24683b891c167b44c8ee85e71c85949251e6cb9525306dbc55d1ce95"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.8.0/octen-darwin-x64"
      sha256 "d9771ca32a296049c7c36891217e0abefcd99fecbb1fcd45c22aee82f4f4f87d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.8.0/octen-linux-arm64"
      sha256 "9592c74645aab343413cc9555e71050b912618448545e49b5ce29bf1e5b5fa78"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.8.0/octen-linux-x64"
      sha256 "dc971f061076f1e293b1e6620e9432ab7f7439a092efb8ae03301c2abd74c056"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
