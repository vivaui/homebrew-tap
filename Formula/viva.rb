class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.4/viva_v0.2.4_darwin_arm64.tar.gz"
      sha256 "9a2ed2cfa3accd0b50468d6c65810993e0457b1e4a3e4c8a9cf8e6a6afeb824b"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.4/viva_v0.2.4_darwin_amd64.tar.gz"
      sha256 "b1933720fa29ae01d0cec4a3d13586d5fb3bde3e8322ab628e00c28632a6bbb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.4/viva_v0.2.4_linux_arm64.tar.gz"
      sha256 "696e630625b6922bbcf665a136c3267288828e1228a57137eb3e70baa0217faa"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.4/viva_v0.2.4_linux_amd64.tar.gz"
      sha256 "6bcd5d364bcd083fc853904bd450e6b250190ce24af7a2baef7897bf1d2396b3"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
