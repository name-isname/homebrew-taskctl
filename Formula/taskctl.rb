# typed: strict
# frozen_string_literal: true

class Taskctl < Formula
  desc "Process-oriented task management tool with CLI, TUI, and Web UI"
  homepage "https://github.com/name-isname/tasker"
  url "https://github.com/name-isname/tasker.git",
      tag:      "v0.2.0",
      revision: "e5ccfa2ff33a899f5c505fafe42bf6d32008a227"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/name-isname/tasker/releases/download/v0.2.0/tasker_0.2.0_darwin_arm64.tar.gz"
      sha256 "97c127153668a13f7c136a10ac3425cff68ad3688f2756df9f844b976ce78717"
    end

    on_intel do
      url "https://github.com/name-isname/tasker/releases/download/v0.2.0/tasker_0.2.0_darwin_amd64.tar.gz"
      sha256 "3c2216152b3e8e149b7c5576291c2528caf6fff5b5bb4613795922e2d7b38a62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/name-isname/tasker/releases/download/v0.2.0/tasker_0.2.0_linux_amd64.tar.gz"
      sha256 "76a852a546f5d693605a104e410c8d51a7db6c9ae227f9b7789e58ea20e6e4ec"
    end

    on_arm do
      url "https://github.com/name-isname/tasker/releases/download/v0.2.0/tasker_0.2.0_linux_arm64.tar.gz"
      sha256 "0acc1ba90ce64c05baa6e18b49ebef551119dfc41096ae8a3ce0f80bb588de96"
    end
  end

  def install
    bin.install "taskctl"
  end

  test do
    system bin/"taskctl", "version"
  end
end
