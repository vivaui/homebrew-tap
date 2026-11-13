class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.2/viva_v0.6.2_darwin_arm64.tar.gz"
      sha256 "d47a5754954e0b951af6fe0fbf8e4842ca663736b59a68d39c17473371677af9"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.2/viva_v0.6.2_darwin_amd64.tar.gz"
      sha256 "ee4f6e8bfe1b4e6cb190615627c4c7a58d4a35941c703c8187c1465d8bf0ce59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.2/viva_v0.6.2_linux_arm64.tar.gz"
      sha256 "04c2f36c0857fece187ef527412422b410dc99a820208047e8716d920ae357bc"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.2/viva_v0.6.2_linux_amd64.tar.gz"
      sha256 "14858c8e383be46a4db6a77829f1e8d8d600ee7d5a2125be5b2a6a1ba7bfdace"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
