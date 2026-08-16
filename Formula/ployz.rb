# typed: false
# frozen_string_literal: true

class Ployz < Formula
  desc "Ployz CLI"
  homepage "https://github.com/getployz/ployz2"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/getployz/ployz2/releases/download/v0.1.1/ployz_macos_amd64.tar.gz"
      sha256 "6d5cfb914a6e473e1887bdba6b03b48c96ffcb742ef50053e9e38c24b6bb74e1"

      def install
        bin.install "ployz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/getployz/ployz2/releases/download/v0.1.1/ployz_macos_arm64.tar.gz"
      sha256 "c297161151851275293a0ae57ae6358360863a411f944a6c81a743d24fb9d70c"

      def install
        bin.install "ployz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz2/releases/download/v0.1.1/ployz_linux_amd64.tar.gz"
        sha256 "aefd978b15db338314a9fbdaed710ca0e90cf52313dfa065acd91f348bc23a7c"

        def install
          bin.install "ployz"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/getployz/ployz2/releases/download/v0.1.1/ployz_linux_arm64.tar.gz"
        sha256 "69228f6e8f01c1f00826d35c142c0d88baf61d39f5eb1e0d657061666ca9958b"

        def install
          bin.install "ployz"
        end
      end
    end
  end

  def caveats
    <<~EOS
      This formula replaces the older getployz/ployz implementation as a clean break
      with manual transition, not an in-place compatibility promise.
    EOS
  end
end
