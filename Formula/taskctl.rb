# typed: strict
# frozen_string_literal: true

class Taskctl < Formula
  desc "Process-oriented task management tool with CLI, TUI, and Web UI"
  homepage "https://github.com/name-isname/tasker"
  url "https://github.com/name-isname/tasker.git",
      tag:      "v0.1.0",
      revision: "70e471031bef32167e7c93c1d23bafc342efa174"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.0/taskctl_0.1.0_darwin_arm64.tar.gz"
      sha256 "c607d08117d5955de31345bb79986c5a1e97e72a879f7c77bf3c13aef5e01728"
    end

    on_intel do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.0/taskctl_0.1.0_darwin_amd64.tar.gz"
      sha256 "b1785022016542784ca635883eaa75ac741abeb66314c7a38b3fd7fe31e451b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.0/taskctl_0.1.0_linux_amd64.tar.gz"
      sha256 "11915a567bd89929e65aadddd7f866cf8e92617f46e59feba55714114701bce2"
    end

    on_arm do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.0/taskctl_0.1.0_linux_arm64.tar.gz"
      sha256 "a4e83f626ed7ead27e318716451e24d46b4253145f0b2521c8ea9b41b8e51013"
    end
  end

  def install
    bin.install "taskctl"
  end

  test do
    system bin/"taskctl", "version"
  end
end
