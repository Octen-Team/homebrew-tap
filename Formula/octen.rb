class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.4/octen-darwin-arm64"
      sha256 "44f6d66a9943e7e1334665213020eba56fc2739dd92a11901ea30e46cbdf9841"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.4/octen-darwin-x64"
      sha256 "42286ef8e25b39ddabc7ecec904c040f0b260144e5df31a656d9faf212660293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.4/octen-linux-arm64"
      sha256 "cbd816e3d6b20442bf3da66b602556791fd6c9824914112feed5f91f042070a9"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.4/octen-linux-x64"
      sha256 "fa4bd6a8c14b821b3a419b46bc9d06bb7a0d935d275c22a90840056520183572"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
