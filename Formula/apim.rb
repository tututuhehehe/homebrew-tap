class Apim < Formula
  desc "Terminal manager for model-provider API keys (TUI + CLI)"
  homepage "https://github.com/tututuhehehe/apim-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.3/apim-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "c2e86afeb00610223b65938cbb6c29300658a1d1f0b4d8d2c3144d0516506763"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.3/apim-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "37b9f5c56a1ef48b76a660daa0a9105497f0eaf93e2998c9a08e36930b7b6d65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.3/apim-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a21cf7ed7153d42a6fd71a2759df7e23db5ee49e98e5edb43ec1de58e2399a45"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.3/apim-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d1072f5d9c9f883800cef3cf748f1cd78dc1b5fe1cb3ced5e03f90e3b01653c"
    end
  end

  def install
    bin.install "apim"
  end

  test do
    assert_match "apim #{version}", shell_output("#{bin}/apim --version")
  end
end
