# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.2.3/ployz_macos_amd64.tar.gz"
      sha256 "106b507b0456fd265a736aa7331056214f48e49a1ba2e0650709ba74cc300233"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.2.3/ployz_macos_arm64.tar.gz"
      sha256 "3030ba65592fc207cafd2a19da23da27fe2bd950c71c9e611132ecb55a3e2890"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.3/ployz_linux_amd64.tar.gz"
        sha256 "2b1ce573064e4c2344955f87ed805c5282deb51e1cda0c302d25914e4e1e9bb4"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.3/ployz_linux_arm64.tar.gz"
        sha256 "95a4408b5e987c1536e7a99953f30077d177a90bfd55f599e0b5e2a238db2855"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
