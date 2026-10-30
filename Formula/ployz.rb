# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.11/ployz_macos_amd64.tar.gz"
      sha256 "6fff09c3bc0498703329c87368cbe56d3e43212b62359e56d809b0468a3b901c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.11/ployz_macos_arm64.tar.gz"
      sha256 "23f2163dc25f5868bf482a35877525039d9501c522c7ec2fa8207a908bf7cb2e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.11/ployz_linux_amd64.tar.gz"
        sha256 "2172213827737740d2ee94865ccbbeea259c82561793ce510a063eeeb7b767bc"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.11/ployz_linux_arm64.tar.gz"
        sha256 "974e422a4f2dddecee465bae90d242df896318199f50b2bc30513667961eedc1"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
