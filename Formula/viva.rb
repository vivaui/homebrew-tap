class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.5.1/viva_v0.5.1_darwin_arm64.tar.gz"
      sha256 "bfd9b10c047fb9ee9ef7a8258921ac11f9789f4965433b94bbcaf8b6dd5b6d22"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.5.1/viva_v0.5.1_darwin_amd64.tar.gz"
      sha256 "df5672625ce9b1b66cf73e9dfa59b31c9f2f035995cc1b77878aaed4a4cfa04d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.5.1/viva_v0.5.1_linux_arm64.tar.gz"
      sha256 "a0f3f840c553589f3687e4318e2ce71113ae892a0429f2c505d1bc77fc8f270f"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.5.1/viva_v0.5.1_linux_amd64.tar.gz"
      sha256 "04c58f3c9298991e1b5ec207ea85bc229ddf85aaadcaa309fcc944aba1212b35"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
