class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.3.0/viva_v0.3.0_darwin_arm64.tar.gz"
      sha256 "1ff51dff3498f4a8d8591364d7b354cd6b0237366325bde9f534dbbd91d6075d"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.3.0/viva_v0.3.0_darwin_amd64.tar.gz"
      sha256 "2a35e667c34ef23979914d90afa6e9ef573b19169b61eec3410f9a404b285dd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.3.0/viva_v0.3.0_linux_arm64.tar.gz"
      sha256 "1cadee41952693a3fd4aad0729b858556d2d7d2bbbdeb2f7441556f397449290"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.3.0/viva_v0.3.0_linux_amd64.tar.gz"
      sha256 "561f3f1c9b6e4d68aab24c47626bcf93bc776c4d5ea22aea5a0e04820cbaf929"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
