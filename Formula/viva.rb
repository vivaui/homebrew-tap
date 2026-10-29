class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.0/viva_v0.2.0_darwin_arm64.tar.gz"
      sha256 "aed71ca7dbd50234e2da15916bb1036364a687c65b0ecd51e2e1ad55bbbd6192"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.0/viva_v0.2.0_darwin_amd64.tar.gz"
      sha256 "c4066ee37d09d1263830996c7132b3883210c69cd3791b9f616121654caf7f21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.0/viva_v0.2.0_linux_arm64.tar.gz"
      sha256 "6cdde5536634c3e42b5727524fec7d3538d96926a04694ec8c8eecd0097aa397"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.0/viva_v0.2.0_linux_amd64.tar.gz"
      sha256 "0873040231969259637369bc3db119234a43d108c5a3624e4a80fbdb72f84f28"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
