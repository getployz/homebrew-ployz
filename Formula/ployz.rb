# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.0/ployz_macos_amd64.tar.gz"
      sha256 "2b05a3cf2f18bc445ffd55cb91400c397929d0f97557dd34ad3f3307dc4eab91"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.0/ployz_macos_arm64.tar.gz"
      sha256 "0dac909df3177a80c4767211c307f8b2e9c12754ef6da19c06ec8befec8fa165"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.0/ployz_linux_amd64.tar.gz"
        sha256 "e1869223e5c7c96f713cb430d79119f27154ff384cbe4a2912a796a7264c9302"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.0/ployz_linux_arm64.tar.gz"
        sha256 "c8c003ca9a6078d83dd297cd88c7eb144d77e946254c5dd862c1eef3bca00b58"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
