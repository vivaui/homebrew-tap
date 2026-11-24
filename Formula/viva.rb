class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.8/viva_v0.6.8_darwin_arm64.tar.gz"
      sha256 "3194f6b9f38c0abcf527c1d75440baff90e8467bd3e842a58063c295b45c8d3e"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.8/viva_v0.6.8_darwin_amd64.tar.gz"
      sha256 "8f3adc59eefb63cbe7e80c56dab1f41df9da990fce1eb500b45dd50ffc15824d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.8/viva_v0.6.8_linux_arm64.tar.gz"
      sha256 "43cc38a294884deb28553e9497714e19f3a29d19f5041e9cc47823b73c04bc60"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.8/viva_v0.6.8_linux_amd64.tar.gz"
      sha256 "30c1bebb75acf43339aa097dfac18382a8b77de0d860abfe9f465581c46808ce"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
