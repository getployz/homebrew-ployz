# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.3/ployz_macos_amd64.tar.gz"
      sha256 "6977fcdd43b9651fc2b7dcf60be7b5d955d0aad2640d5acc83d01bc0d5bc8824"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.3/ployz_macos_arm64.tar.gz"
      sha256 "41ae18cc780d9d7c268ac7d7e0ede1e3202ca706ebeb7fddccbe059ded7cff5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.3/ployz_linux_amd64.tar.gz"
        sha256 "69c018d93a267d956cf72fc0575c634ed107fa04ed72501a2a173aa831f795d3"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.3/ployz_linux_arm64.tar.gz"
        sha256 "fd726db6fcda2cd92aee373ac715f4254cd544ae7547c39f6f56994c907649fd"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
