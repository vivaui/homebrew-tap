class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.1/viva_v0.6.1_darwin_arm64.tar.gz"
      sha256 "3ba5c03173a40542869cb1a82ef3a2b4a589c06da6ce34c08ce5c6194f270373"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.1/viva_v0.6.1_darwin_amd64.tar.gz"
      sha256 "8eee5b11502075637d967c16c116bdc81bdc9992c8a38c2350bad3c08165c3fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.1/viva_v0.6.1_linux_arm64.tar.gz"
      sha256 "526440b5740a969a357af19e27bd62417f5192a9fa23001aa99abb4b3bbe46f4"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.1/viva_v0.6.1_linux_amd64.tar.gz"
      sha256 "14f16beafbd946c9adf742e1f760b95aac7487a7e3964d3627fe096d55b8d912"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
