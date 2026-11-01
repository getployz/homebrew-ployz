# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.13/ployz_macos_amd64.tar.gz"
      sha256 "c815ea26251fe6147313c95097682f67aeffd120612c667912ed831412453978"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.13/ployz_macos_arm64.tar.gz"
      sha256 "3934319bc8e0b367dd1d826696c1efa6d7444d89fdb16eb18269ca6f48774fca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.13/ployz_linux_amd64.tar.gz"
        sha256 "bc4baa9da8745011cb6e6b1ec850969ece8c3379931cf59e6a624a6b1220f8c5"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.13/ployz_linux_arm64.tar.gz"
        sha256 "0768d98755f09671fde7d7708356aa509ce56a11ffe17d5ef3e23202c574edda"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
