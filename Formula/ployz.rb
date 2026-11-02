# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.15/ployz_macos_amd64.tar.gz"
      sha256 "4e407d48ff5be747fe8269745539af97bc7f8011e21133ed1687640a2293d32f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.15/ployz_macos_arm64.tar.gz"
      sha256 "987c0ffa87dada32f86cd7bfcfbc25b8c5da0255b5b0bfe503ba2baf306fe8a3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.15/ployz_linux_amd64.tar.gz"
        sha256 "4e7f359e2c66d963c1113759dd7618d403e53ffe6fbe88aefc34b19522d5a321"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.15/ployz_linux_arm64.tar.gz"
        sha256 "59937eb88cd425d5dae61d897bc36d8628325f1f08893a1db69a8b44a913f84b"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
