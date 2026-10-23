# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.3.2/ployz_macos_amd64.tar.gz"
      sha256 "fc8a6e333f495c09096c3c5abfa4e23af179b4484f3bcbfbe32424163c91d055"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.3.2/ployz_macos_arm64.tar.gz"
      sha256 "d6391f571054b75636baef500ba2b34fdb65427a584d437b09512abe890d2ac6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.2/ployz_linux_amd64.tar.gz"
        sha256 "a78f7db2b6bb205765b6d7518d3898469846581a626ecb92d975e78e7f13c47d"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.3.2/ployz_linux_arm64.tar.gz"
        sha256 "ed17f59bb13cfaa977b8a4a72a137221fb4f2177a4c26b8a1f27e43fdb11fe7c"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
