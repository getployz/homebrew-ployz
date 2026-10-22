# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.1/ployz_macos_amd64.tar.gz"
      sha256 "fff855c5b71745bc9fcda34fe10c480b3299a4d6fd9afebfa178cd671c34a3ae"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.1/ployz_macos_arm64.tar.gz"
      sha256 "d16eaf3451c1e4e825badafae1dce23b99cc730ec1fb7b670803dbd8f0628a37"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.1/ployz_linux_amd64.tar.gz"
        sha256 "f3ee86ffec0265e3699fdf55b8532904190ab0c9ee52d76e462be72e44298e04"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.1/ployz_linux_arm64.tar.gz"
        sha256 "965efec27a251582eb845d08de0996516f0d79e4dbca94e80a510c8b5de1fd54"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
