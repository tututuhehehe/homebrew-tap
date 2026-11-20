class Bupt < Formula
  desc "Command-line client for BUPT campus services (unofficial)"
  homepage "https://github.com/tututuhehehe/bupt-cli"
  url "https://github.com/tututuhehehe/bupt-cli/releases/download/v0.6.0/bupt-macos-arm64.zip"
  sha256 "8f92233c1566428da162a19ace285c1ae0e727c88bdead36d501ae8c7533fe93"
  license "MIT"
  depends_on arch: :arm64

  def install
    # Homebrew 7's pour pipeline may stage the archive with the top-level
    # directory stripped or kept; locate the binary either way.
    bupt = Dir["**/bupt"].first
    odie "bupt binary not found in the downloaded archive" if bupt.nil?
    bin.install bupt
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bupt --version")
  end
end
