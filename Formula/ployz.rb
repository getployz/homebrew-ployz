# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.8/ployz_macos_amd64.tar.gz"
      sha256 "1a891c60ab20298f9a7aff9d8668abab67846493efaa9a6cd153d2224f236bae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.8/ployz_macos_arm64.tar.gz"
      sha256 "2b0a3bc0943bc51c8581962c918999f8b3c77179752416e9cb70217f2207afa3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.8/ployz_linux_amd64.tar.gz"
        sha256 "72eb4b7f5db61945f5cd3dced2e6590c7c8cc7c073a4f63b002fd0bf11ec1337"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.8/ployz_linux_arm64.tar.gz"
        sha256 "4155550750ae355c63597e5278fcd13ed4c7fe8fe8876e50d97f09a6e16557b2"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
