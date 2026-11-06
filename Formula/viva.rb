class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.3.1/viva_v0.3.1_darwin_arm64.tar.gz"
      sha256 "11eb9f9a6c7c8b9a1542d4ec3967c7bc72489c53b3f9b2d68ab6e579a68099b5"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.3.1/viva_v0.3.1_darwin_amd64.tar.gz"
      sha256 "9de9b967953bd1d659bb79faf95c9ef381216325793816e765a3a32163a3e914"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.3.1/viva_v0.3.1_linux_arm64.tar.gz"
      sha256 "292b323dde9ed71bca10535f33655d430c285bd6775b093ebcf09352caf59338"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.3.1/viva_v0.3.1_linux_amd64.tar.gz"
      sha256 "17b5a709f55f2813d078b80c9f823d37406b00f9970d1d3ee9ed689356d739e0"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
