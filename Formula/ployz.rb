# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.2.1/ployz_macos_amd64.tar.gz"
      sha256 "06b1822b9b9ba4e2114fef421a7ea9a8238c78f81a55c626011e1aceae4cdb8d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.2.1/ployz_macos_arm64.tar.gz"
      sha256 "29e187b3d8589754e18c28bbe7069291d999289e563492a1e6a27ab3c8dacf3a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.1/ployz_linux_amd64.tar.gz"
        sha256 "162ea4c5015bfd4280ee6911de8c63bd318cdb5ec92f5513fedc97608d945bde"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.1/ployz_linux_arm64.tar.gz"
        sha256 "2eeead95f2cff55807bb713cacfd29e6229fe0171e837e131aa2a74099374622"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
