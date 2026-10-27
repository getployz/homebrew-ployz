# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.7/ployz_macos_amd64.tar.gz"
      sha256 "d043061da954b328eda0b5eaef0e868255062ca40865b6766b4a076a40ed0f02"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.7/ployz_macos_arm64.tar.gz"
      sha256 "607d3647266b8060a8552159201532fba89f85adb37dd74f8afe10e944c3187e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.7/ployz_linux_amd64.tar.gz"
        sha256 "e467b95e15b38a302b2cefa3b9aa765636771196815ab70dff7bbcbcf6a0e339"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.7/ployz_linux_arm64.tar.gz"
        sha256 "42493a27130d22912b91c829df237c6e28f71183994cec9e8ba2027b7a6bcc52"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
