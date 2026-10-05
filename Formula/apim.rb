class Apim < Formula
  desc "Terminal manager for model-provider API keys (TUI + CLI)"
  homepage "https://github.com/tututuhehehe/apim-cli"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.7/apim-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "3d433af48c3de5fef1021809ef3faa7a5920d38bba61f41737b1ff248ac13bdd"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.7/apim-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "62b1e9e022cf37f656ae8a2508b475b2874c208b5f09747609d7db23d82a38f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.7/apim-v0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f47576e516fb40d3e9300d35702786cfb390a5df8429a4e033be0f6a276aef1"
    end
    on_intel do
      url "https://github.com/tututuhehehe/apim-cli/releases/download/v0.1.7/apim-v0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc525bc7488b400d0eca77b643550249ca30b2ebeb125ecabbde90a86cbe35f9"
    end
  end

  def install
    bin.install "apim"
  end

  test do
    assert_match "apim #{version}", shell_output("#{bin}/apim --version")
  end
end
