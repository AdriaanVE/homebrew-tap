# typed: false
# frozen_string_literal: true

class Jackin < Formula
  desc "tmux-native multi-agent swarm orchestrator"
  homepage "https://github.com/AdriaanVE/jack-in"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/AdriaanVE/jack-in/releases/download/v#{version}/jackin_darwin_amd64.tar.gz"
      sha256 "e1dc317680829e98faadc7a81fe14bf5339c688e7e50d28c7b74560457998671"
    end
    on_arm do
      url "https://github.com/AdriaanVE/jack-in/releases/download/v#{version}/jackin_darwin_arm64.tar.gz"
      sha256 "e275d13f4e417c9556479f8edcf3adb662a2d1c86888484ede799c21c47721d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AdriaanVE/jack-in/releases/download/v#{version}/jackin_linux_amd64.tar.gz"
      sha256 "ac2ce14b2ef877adcbeb62efee25473804904d84a2e806cdcd98e95d7e02ac9b"
    end
    on_arm do
      url "https://github.com/AdriaanVE/jack-in/releases/download/v#{version}/jackin_linux_arm64.tar.gz"
      sha256 "8f6c5a18c06da72cf39316803553ab0d7c46bf1839c7a5e386d6e38cd5b6bda8"
    end
  end

  depends_on "tmux"

  def install
    bin.install "jackin"
  end

  test do
    assert_match "jackin", shell_output("#{bin}/jackin --help")
  end
end
