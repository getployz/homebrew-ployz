# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.6/ployz_macos_amd64.tar.gz"
      sha256 "1173c8d18275aa1b2b4585a3e04974944f80b18e97e15ce4c7c31f75b3fe240b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.6/ployz_macos_arm64.tar.gz"
      sha256 "f96af16064ff7ecf5a0d0ad1783da4e13dd6a13ee5e0cbaa0cca5febf815271d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.6/ployz_linux_amd64.tar.gz"
        sha256 "0ed941dee3df50fdb3bc0d773e05158c6e49b990eea80e43c1407619011677e2"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.6/ployz_linux_arm64.tar.gz"
        sha256 "88cea2823e25b602e2523a9aeef98e841a8c6e8e6839f35b6377bbd161726277"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
