class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.1/viva_v0.2.1_darwin_arm64.tar.gz"
      sha256 "bd772a3d1f4cf009a41a582cb1cd823a3a19918462ff0b49916483e8d9855728"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.1/viva_v0.2.1_darwin_amd64.tar.gz"
      sha256 "597660be8067f2fcd3f36347c1a2f78545c009baf5daf1e0e0ef517d83409e15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.1/viva_v0.2.1_linux_arm64.tar.gz"
      sha256 "2807da03e21841bb5c6a4302b9bee19ee731bb9aaafbf607beabe3c6a4a18bba"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.1/viva_v0.2.1_linux_amd64.tar.gz"
      sha256 "5612a61d439f41293d58707836be6be7f84f56dd401eb3c11d9c54308a58687b"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
