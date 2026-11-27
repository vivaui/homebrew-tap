class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.10/viva_v0.6.10_darwin_arm64.tar.gz"
      sha256 "9fa33f98fd3317bbfa7e8503085b23e387290e757f32879be30a458910aff0f8"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.10/viva_v0.6.10_darwin_amd64.tar.gz"
      sha256 "c4c093820102a20ff4533298fcc578568a408cd1e1785d3f45c1b6119f6fbde9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.10/viva_v0.6.10_linux_arm64.tar.gz"
      sha256 "b4dbfed42d08d5c2f55093e7b0c4cc27b456b605162d42ad42235558628a0d7a"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.10/viva_v0.6.10_linux_amd64.tar.gz"
      sha256 "eff5b900bf31149d1cef2fc8d9ca8a9e3b94714778648a4d0725990f356c3d86"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
