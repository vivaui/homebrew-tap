class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.0/viva_v0.6.0_darwin_arm64.tar.gz"
      sha256 "f2f84362a31c598cff421ebd4135c5ae4d1052b4991a6d20472e192d5a9412c5"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.0/viva_v0.6.0_darwin_amd64.tar.gz"
      sha256 "060e8d651367316ba33b5cc2b528a3db2cbaf78f5cfcff5abc0bab1b311ec0d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.0/viva_v0.6.0_linux_arm64.tar.gz"
      sha256 "8c020d2902b06d90552fd45ba62bc2329cc830c9f9c1427fa765c9abb8e46aee"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.0/viva_v0.6.0_linux_amd64.tar.gz"
      sha256 "3f56786ecde4e8988645a8b02a94d9970c9bd07dd428da61469fd56c1f857771"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
