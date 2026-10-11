# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz/releases/download/v0.2.4/ployz_macos_amd64.tar.gz"
      sha256 "f907e64dd48bae1e317f7262ee11a596aeb1cf3503828173e8ee6009107494b0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz/releases/download/v0.2.4/ployz_macos_arm64.tar.gz"
      sha256 "59afe0687c1c69e9a0a6ebb751e1518557983ac6c2965a3e495d75464e3f2329"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.4/ployz_linux_amd64.tar.gz"
        sha256 "e447144e7ce9c03396c867510fd17b7c4e47fc85ba1cc09e7abf6781c3b1425a"
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz/releases/download/v0.2.4/ployz_linux_arm64.tar.gz"
        sha256 "48878a97df858e26b2c7d61b83b915276afc0a1ab99027e2ba9a52498318b21f"
      end
    end
  end

  def install
    bin.install "ployz"
  end

end
