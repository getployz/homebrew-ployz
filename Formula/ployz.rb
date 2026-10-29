# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.9/ployz_macos_amd64.tar.gz"
      sha256 "d80ced89c25ab1c29a9240820a189594a2f00c7e463084866b048e2a90f69881"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.9/ployz_macos_arm64.tar.gz"
      sha256 "caa3e5ee7941946f49405648046804dbd15a691c9acf699eabe2d53883948ce7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.9/ployz_linux_amd64.tar.gz"
        sha256 "b85fdd8a9ac48975c632723aaf07ba6ea6a27d0a3e6038753b7163e1ca650137"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.9/ployz_linux_arm64.tar.gz"
        sha256 "f97bfd738e981290f6eaa4bed140ce14a20e7b5804eaef0d36db092cda9dc11e"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
