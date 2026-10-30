# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.10/ployz_macos_amd64.tar.gz"
      sha256 "00ac1edd0723efde5a9069527e1f30c7ea6bcf403deb236315fdab59a1e5189c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.10/ployz_macos_arm64.tar.gz"
      sha256 "87131ab966a04e6a9ed3a5e84544ea462917e37ad5a634d94bf8e66ef5f3bd54"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.10/ployz_linux_amd64.tar.gz"
        sha256 "12e13996e2ddaf889f4e25972396343e4ca5d057c7c17d8cb164c0f58e0540fa"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.10/ployz_linux_arm64.tar.gz"
        sha256 "7256b91a5a31766e024747867cadc7225b3631a2d2e84cdd0b4f6edccd283166"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
