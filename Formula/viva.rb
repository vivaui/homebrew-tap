class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.4/viva_v0.6.4_darwin_arm64.tar.gz"
      sha256 "420b74928a1208005c1b27c064ae56ae586e8071633271db2d33b8a6c2c484c4"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.4/viva_v0.6.4_darwin_amd64.tar.gz"
      sha256 "208bbd59ab56af5accc991b26012a53321998c44c68f0e1e6e9e72d5400c2b40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.4/viva_v0.6.4_linux_arm64.tar.gz"
      sha256 "c56d38c4ac7eb1805bbd9586d3db56a0f0f0c32afb7cb363a84cd086a63a1ac4"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.4/viva_v0.6.4_linux_amd64.tar.gz"
      sha256 "32051bcc437ac1b863b567db66a6497496524cf31ada9ebcc63061f3dcf8882c"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
