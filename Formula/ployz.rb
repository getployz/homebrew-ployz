# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.14/ployz_macos_amd64.tar.gz"
      sha256 "ea79d60c9a5212400c31cbc81143e6efa3bb99a3e95cb1316a728720cd2c3b45"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.14/ployz_macos_arm64.tar.gz"
      sha256 "664ce02e3fdb97f84b6660ea7b3efb2182a77bf12e8d6dda29871c18bb335741"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.14/ployz_linux_amd64.tar.gz"
        sha256 "662690578d199f5709cfe94f3c82c591b4cdb8a6e0175589f547f1fc9f1e1e46"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.14/ployz_linux_arm64.tar.gz"
        sha256 "395789085133ef1d2e0c950bddbe51a44f1068f60051bb7ba52b0d8acef380dd"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
