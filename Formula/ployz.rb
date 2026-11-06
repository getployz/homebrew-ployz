# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.17/ployz_macos_amd64.tar.gz"
      sha256 "81a3d7046d4e153d234a24b8ebbe3aaba39c1bc9337581ce18ff99eae64ee2d8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.17/ployz_macos_arm64.tar.gz"
      sha256 "6d57b2327413b8f34b578e1acd7b884f31a69a669e4125d180ff787250cde10f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.17/ployz_linux_amd64.tar.gz"
        sha256 "9f920c3587ba8e69329ceb7261c2bd35280850568477bfc3db116c0dd6b3f0da"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.17/ployz_linux_arm64.tar.gz"
        sha256 "0f8ad5a033e3d2d028d83169dcb2270010797406cfeb77eabef553711181a57b"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
