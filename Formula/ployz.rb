# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.16/ployz_macos_amd64.tar.gz"
      sha256 "42521604c5b2340185ba3145b8fce4656ff23e73130190a3c332674ec3488fed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.16/ployz_macos_arm64.tar.gz"
      sha256 "ec259ba2af45a276565c65162d8c7073ced3081307b1149c8a4155f691d036f4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.16/ployz_linux_amd64.tar.gz"
        sha256 "9f2c3837831bff3876eed0e35b91563a97ce17f0f728679facb649e6b42781b7"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.16/ployz_linux_arm64.tar.gz"
        sha256 "e40ed9b524ab187017bacfab2758db9ca133b79c2e4b5f4c4c16bf20abcb0e35"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
