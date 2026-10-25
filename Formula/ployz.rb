# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.4/ployz_macos_amd64.tar.gz"
      sha256 "3e3af3a9e3d51412f00631ec45d3f2408f7fb509a325906a3c546fa348b339e4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.4/ployz_macos_arm64.tar.gz"
      sha256 "416dbf7d0ccb3febf5ad34917c5ea30f508c8365f83936e8a94895ea4a8f7d35"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.4/ployz_linux_amd64.tar.gz"
        sha256 "82d9c9ae56d8ab17593870e8d7a8cbadc10d7b9516a1f64ee1f887b3b142b1e8"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.4/ployz_linux_arm64.tar.gz"
        sha256 "4f1466205d4bfbd1b75a85e5f5a996dbf98403c16b7d8ee137ba8dd0a0622438"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
