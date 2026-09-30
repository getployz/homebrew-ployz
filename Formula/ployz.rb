# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.2.0/ployz_macos_amd64.tar.gz"
      sha256 "3c7250c6d46d803b03929c1cf7a5b4aa60ed18ed87d9e782542f7868a30e9c6d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.2.0/ployz_macos_arm64.tar.gz"
      sha256 "9f8b0fc375906fa05c8dbcd778726c553a487a0f20a570e66c51be3b87f0b63e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.0/ployz_linux_amd64.tar.gz"
        sha256 "fb19327882bced27652948719db26ec006ea6f0bcdeb8e699da3d2d8ec2c2d51"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.0/ployz_linux_arm64.tar.gz"
        sha256 "3d092c596c5f3de1d530f243313de187cd1c070d66aed71e6ecaa4bdb760402e"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
