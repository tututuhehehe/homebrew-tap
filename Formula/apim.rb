class Apim < Formula
  desc "Terminal manager for model-provider API keys (TUI + CLI)"
  homepage "https://github.com/tututuhehehe/apim-cli"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.9/apim-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "b7d2b46e7f8f7c964e4c9c2b03494ac6c7b71fd1bc1b6dd0f9e6b71292092b3e"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.9/apim-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "c4f1cbf52e556af256d3096710ca7adb5a9439f973ff13fde8297814b308816c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.9/apim-v0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75d6e50ff29f87a92e0c9a1f2be03f0d618ee61c69890022c867866a87248f88"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.9/apim-v0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e68c06e386bf1009d119cd3f7f5a74633f6ff582c2800f1fe77395e0de174e6a"
    end
  end

  def install
    bin.install "apim"
  end

  test do
    assert_match "apim #{version}", shell_output("#{bin}/apim --version")
  end
end
