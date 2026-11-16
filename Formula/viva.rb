class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.5/viva_v0.6.5_darwin_arm64.tar.gz"
      sha256 "c9755fa46bd1b68b3eb567018ece681d720e8df52a3c583665e2a12f92f6842b"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.5/viva_v0.6.5_darwin_amd64.tar.gz"
      sha256 "04e7f6967c76bf5bd9893e55a09ba0f4b3d807b7b9f676383a0f5793c6e688b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.5/viva_v0.6.5_linux_arm64.tar.gz"
      sha256 "77f6a146ad640def9b7a41d92290170d26954e19777d712212dcaad3b781f0e6"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.5/viva_v0.6.5_linux_amd64.tar.gz"
      sha256 "ce20085f3e5a93caef762d3f75e978d1f9bd22bb181997f0bf9df5e4bc47b143"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
