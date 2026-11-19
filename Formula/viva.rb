class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.6/viva_v0.6.6_darwin_arm64.tar.gz"
      sha256 "bff35d3818ec19e827acdf9dde7943ef3c7e511ce3c88f79682170205119f2f0"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.6/viva_v0.6.6_darwin_amd64.tar.gz"
      sha256 "63f8aa073464ff196dc5a7cfe49ef412380364d10122db9bad80424533f59bc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.6/viva_v0.6.6_linux_arm64.tar.gz"
      sha256 "e7d990f2295916f3f5ae972cfce0f8aadf7820f1efe0af15eafeeaa25f316a54"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.6/viva_v0.6.6_linux_amd64.tar.gz"
      sha256 "7e633e04aaa23caef43ee6a6dd7aaed1df8ac16aa6a23b58442f277f37dcdd81"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
