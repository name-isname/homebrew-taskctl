# typed: strict
# frozen_string_literal: true

class Taskctl < Formula
  desc "Process-oriented task management tool with CLI, TUI, and Web UI"
  homepage "https://github.com/name-isname/tasker"
  url "https://github.com/name-isname/tasker.git",
      tag:      "v0.1.1",
      revision: "11b226fd0c877424e5197458467d31bf5f617f92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.1/tasker_0.1.1_darwin_arm64.tar.gz"
      sha256 "4e76551b31ce880b846ebae9d3f61dba46a52d5778d93e19f696ea5c25559ff4"
    end

    on_intel do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.1/tasker_0.1.1_darwin_amd64.tar.gz"
      sha256 "19204044e9e17bbf3be5e633a7916a368f30854d27210e837e2deb2546a722b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.1/tasker_0.1.1_linux_amd64.tar.gz"
      sha256 "60fb794f80bf9b2f1555da76d6695bcb21d7692bfa295eec7d99586308d6419d"
    end

    on_arm do
      url "https://github.com/name-isname/tasker/releases/download/v0.1.1/tasker_0.1.1_linux_arm64.tar.gz"
      sha256 "e5709451ac72aafbf1fdb30410b97ac152758abfb1b06132954090ab91a5b2e3"
    end
  end

  def install
    bin.install "taskctl"
  end

  test do
    system bin/"taskctl", "version"
  end
end
