class Apim < Formula
  desc "Terminal manager for model-provider API keys (TUI + CLI)"
  homepage "https://github.com/tututuhehehe/apim-cli"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.8/apim-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "7c657d500f751ae7ba33ee23580d2411d837c5880fd756c708c9035c54d9c4c7"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.8/apim-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "ce85de6c4b035f04311368eb3fa34b8d69ac2b7c894ac225f186b558736117f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.8/apim-v0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f73e29e18c0ac9b49fb0f888860b987a0737fc0eb799f7a0b4b8f6c4d27c434"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.8/apim-v0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77d647b9f12fc44e65985503d388c8bd5acc1398fa1b232f20916846b317b7ba"
    end
  end

  def install
    bin.install "apim"
  end

  test do
    assert_match "apim #{version}", shell_output("#{bin}/apim --version")
  end
end
