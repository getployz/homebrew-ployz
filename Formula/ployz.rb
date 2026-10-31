# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.12/ployz_macos_amd64.tar.gz"
      sha256 "00563cf29bf0fd1863db58a1a71066b15f697034d7a9f6e774ddb6b16d7f2dc8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.12/ployz_macos_arm64.tar.gz"
      sha256 "ba166e4d79ffc55c1ceecad2d41dff665f5405b57ef75f98a90dcb9e8ae50439"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.12/ployz_linux_amd64.tar.gz"
        sha256 "2f2a5d8066d0a204b00172344cf82d0390f890f95ee46afce3bceeaa85db77e5"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.12/ployz_linux_arm64.tar.gz"
        sha256 "5abcad417f2dbca14d4d1aeb7279b491d0625bfaac35fb9a9e9e252694541558"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
