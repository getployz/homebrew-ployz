# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.5/ployz_macos_amd64.tar.gz"
      sha256 "1cbd0b315d360a3dd02f96dad8ebc1ec2554b3776de790cda2f2582ceb038098"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.5/ployz_macos_arm64.tar.gz"
      sha256 "e191d9a00e9fe19a411f22c0ab84723edde1a42609d4561ab2bef8800c525d17"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.5/ployz_linux_amd64.tar.gz"
        sha256 "e376d75c4db511c397c885d418f942622b55c1ce0d385b9029fae10b0992818c"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.5/ployz_linux_arm64.tar.gz"
        sha256 "ba98a886a778ab7cce7416a370892be2b75260014b49b10c7a29c034c7f11c89"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
