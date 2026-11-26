class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.9/viva_v0.6.9_darwin_arm64.tar.gz"
      sha256 "77d10b87d43837a1c5e1d09ee61e9723c1c5c154ffc5cae6884492677b06c203"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.9/viva_v0.6.9_darwin_amd64.tar.gz"
      sha256 "16bd2d326bde024e80a1f1f74e3117ebec95ee2fc6d6280cd9d8ec38dc1c5e37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.9/viva_v0.6.9_linux_arm64.tar.gz"
      sha256 "1517a09adccca209a316c5e2847fe7ec51522cd2f0b1ff3708e1c794703013bc"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.9/viva_v0.6.9_linux_amd64.tar.gz"
      sha256 "a05046875197b9e8f195dd27bb1c2ff3bf6498ad4a82ae8e4988efb9d48c1c4f"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
