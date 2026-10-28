class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.1.3/viva_v0.1.3_darwin_arm64.tar.gz"
      sha256 "1385fd28442c9bb0235141bcf45614c08385ac8b503df7cff0aaa4666d0b2ecc"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.1.3/viva_v0.1.3_darwin_amd64.tar.gz"
      sha256 "e4c7559e58cb986ef01a5c7ba3c3dbc318740574c412f7d0c2098e80143a0e99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.1.3/viva_v0.1.3_linux_arm64.tar.gz"
      sha256 "936677e2504cb368b833cde2c4c5b4af5eb577704b494a3df1e2e606e0274ea4"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.1.3/viva_v0.1.3_linux_amd64.tar.gz"
      sha256 "ffbc6bc9f3b1fd047a615987d687f3481103921d1ca22897cc8656e3fb22c49b"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
