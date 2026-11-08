class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.5.0/viva_v0.5.0_darwin_arm64.tar.gz"
      sha256 "57ba989090c75c46499b4a18a118a5b21466f3407c14c56e16a5db338ae486f0"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.5.0/viva_v0.5.0_darwin_amd64.tar.gz"
      sha256 "05d4b43fe76ddff0dfc5210192f9ae0ec011f198c2f23718b356e8590a0d97d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.5.0/viva_v0.5.0_linux_arm64.tar.gz"
      sha256 "eb77c6dd97a9909d4a13ee99dab3e2aac28f8bcdd156024288a0fc79522fb88d"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.5.0/viva_v0.5.0_linux_amd64.tar.gz"
      sha256 "27780d42627927625fb1884a51662572ccd8670e71d33f3018c68e05d59db4b6"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
