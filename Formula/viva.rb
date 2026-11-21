class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.7/viva_v0.6.7_darwin_arm64.tar.gz"
      sha256 "2f64023ffadf7895469cf82c44538972df74ff5c389e068a57a5a4c080c66d58"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.7/viva_v0.6.7_darwin_amd64.tar.gz"
      sha256 "82f67b83aae4023ced29a102435046fb0bfe9f002310d53697468ac71e8aa3a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.7/viva_v0.6.7_linux_arm64.tar.gz"
      sha256 "ac9bb310d739d852e45020d04233df74629bc018a37f572e752b58eda7439035"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.7/viva_v0.6.7_linux_amd64.tar.gz"
      sha256 "f60c80aa0e4dff5b9a919b266b06c644bf8e2befc10ee7321f27e7245f325fe0"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
