class Viva < Formula
  desc "Build, package and live-reload Viva desktop applications"
  homepage "https://vivaui.dev"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.3/viva_v0.6.3_darwin_arm64.tar.gz"
      sha256 "df4c8cac48f5db9bac8cfa59e8e04a95ede4201d74219880ff5d14a3343e3b8d"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.3/viva_v0.6.3_darwin_amd64.tar.gz"
      sha256 "938b47cbd0e6b6bdeec42375a18b44f25b69d340b68f1295e95f331b43d47a9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vivaui/viva/releases/download/v0.6.3/viva_v0.6.3_linux_arm64.tar.gz"
      sha256 "09b450f5811c7ca0887f319f3f9bfc3f12d4c6c6698391e6782a564162dabd51"
    end
    on_intel do
      url "https://github.com/vivaui/viva/releases/download/v0.6.3/viva_v0.6.3_linux_amd64.tar.gz"
      sha256 "82e9a0eaca09b9f20d9861a5b902646700dce4fbfe8afefd1491e2ff961cb0b1"
    end
  end

  def install
    bin.install "viva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/viva version")
  end
end
