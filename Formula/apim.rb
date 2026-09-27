class Apim < Formula
  desc "Terminal manager for model-provider API keys (TUI + CLI)"
  homepage "https://github.com/tututuhehehe/apim-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.1/apim-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "141b1084eda47b0def65ad636357216e9ce5986d367f5e5a5e071d7e9a455cfa"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.1/apim-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "2332bf039e9646207b58ec807a085a3372c45636478e526e657fdef11e725c52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.1/apim-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4365d8bb34c3bb0a6907ff36becfc7b65c3a8b2a8216f6d399f2c7fe5152ff29"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.1/apim-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "640e28bfe5059f77ea34dd2f2ef645f0baed65a485abf7910e41852ae3fdb240"
    end
  end

  def install
    bin.install "apim"
  end

  test do
    assert_match "apim #{version}", shell_output("#{bin}/apim --version")
  end
end
