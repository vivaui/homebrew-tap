class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.4.0/viva_v0.4.0_darwin_arm64.tar.gz"
      sha256 "7246d26c640289b4b3575a9f8d44bc52ed52d727bbe97c716ca62346f22c6966"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.4.0/viva_v0.4.0_darwin_amd64.tar.gz"
      sha256 "65b6d54e1a10366352139b09a36e1a15739202b81c98dc181a2dc73e0c667cd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.4.0/viva_v0.4.0_linux_arm64.tar.gz"
      sha256 "0967102ed10bbe93a00b7aa2844016cecd7acdc8aed36a43c1a62f4eafe7b5d3"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.4.0/viva_v0.4.0_linux_amd64.tar.gz"
      sha256 "2aecf2789507a36d6d0f9248f6b47433c1c80e320d8a2ff41d38a25bddc1351d"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
