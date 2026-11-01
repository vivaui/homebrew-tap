class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.2/viva_v0.2.2_darwin_arm64.tar.gz"
      sha256 "f468e23f2c9255dcc89b58c23c9a94af24c3bed677612e488ac6b96cf23ad3ae"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.2/viva_v0.2.2_darwin_amd64.tar.gz"
      sha256 "ea4b364573ddca099d34508a172b6e900fd2f17e7280791f21fa7230c76b22a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.2.2/viva_v0.2.2_linux_arm64.tar.gz"
      sha256 "160c031aa652e00bd4d51c8e2fdec9d057f6220925e1cf5913129ea1a8b727eb"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.2.2/viva_v0.2.2_linux_amd64.tar.gz"
      sha256 "044b6996fae20487c66f0c4a9ee664315f0048815873ac40af6dbc90a74a8ec6"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
