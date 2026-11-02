class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.3/viva_v0.2.3_darwin_arm64.tar.gz"
      sha256 "4b4139b548384c2919c8aece82449d2d811875b226d91b7421c1f0b338c0add9"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.3/viva_v0.2.3_darwin_amd64.tar.gz"
      sha256 "3d263ab744bc3667fd254d964e520aacd6be7487a7a25f372445137f7f215a4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.3/viva_v0.2.3_linux_arm64.tar.gz"
      sha256 "342788a333c1426698b6062d03e6fc8ea7735dab36ae15046d12462f42dd3bd8"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.3/viva_v0.2.3_linux_amd64.tar.gz"
      sha256 "13112048855e2bbe95c5c10762a4374c90b21723078d660a3a3c217ca031319a"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
