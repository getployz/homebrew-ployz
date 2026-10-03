# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.2.2/ployz_macos_amd64.tar.gz"
      sha256 "1187dad3a661be73a66e1f847fff12f5f719e0f9bf87284c8f7cfff5c7bee02b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.2.2/ployz_macos_arm64.tar.gz"
      sha256 "5e7b4efba5aad47f0333b2668028dd964bdfc7a2e446609806a168bfdea04cb5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.2/ployz_linux_amd64.tar.gz"
        sha256 "ca066465bd9f6226b3e9697a3ebc8d63257efe7fb260ff3c5041d0b2e7d93c54"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.2/ployz_linux_arm64.tar.gz"
        sha256 "fd80957290f5bdf6a1240bd9a380ab6d85d267fad2420f247f1cdc184cd8ac2b"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
