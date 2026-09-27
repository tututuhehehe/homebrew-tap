class Apim < Formula
  desc "Terminal manager for model-provider API keys (TUI + CLI)"
  homepage "https://github.com/tututuhehehe/apim-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.0/apim-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "bff5104b8950cb14d5aee11aac7392191bd4e76f4febd7a0ea3d31b288878e6c"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.0/apim-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "88adcc87f5b2f4a953737216226941e5203569c7e3446abdb1eaca31e1cde56a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.0/apim-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c892783e764c28b4c1b1b1b49c6000cc68cc1d1974da33efef377aeceeb50725"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.0/apim-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2027eaea6194fec111fef79304a398be777f3c90057447d16dc9291e74e49765"
    end
  end

  def install
    bin.install "apim"
  end

  test do
    assert_match "apim #{version}", shell_output("#{bin}/apim --version")
  end
end
