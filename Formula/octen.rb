class Octen < Formula
  desc "Octen CLI — web search, extract, chat, embeddings, and MCP/Skills setup"
  homepage "https://github.com/Octen-Team/octen-cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.2/octen-darwin-arm64"
      sha256 "cbbe7c9b9a85318917fd0cc7b64e9f959fc302993b35005531db9116ae17901e"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.2/octen-darwin-x64"
      sha256 "7da069f565dec8abf139b15aa9ae73f36340cf12b7196385074a73df5ca84b1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.2/octen-linux-arm64"
      sha256 "246539b587bafd57eb4648bc40a2a0b9f39370bfc77205919a7483829d13778a"
    end
    on_intel do
      url "https://github.com/Octen-Team/octen-cli/releases/download/v0.5.2/octen-linux-x64"
      sha256 "e4044057d9e098d4b60cc81786d226c9e6d311787c86878f0eeeb5a8edf1b690"
    end
  end

  def install
    bin.install Dir["octen-*"].first => "octen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octen --version")
  end
end
