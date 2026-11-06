class Tasq < Formula
  desc "Capture your notes, plan your routines from the terminal"
  homepage "https://github.com/tasq-app/tasq"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4d50ad6d1fa0c4d7fd00b675e9f71663daa1880d9a693c48fb0ce7709e9a3917"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7802902764e45b3bc392fa3fde7b8c1f619d9b8fe41a4f50def149713a905359"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51dde8471fbd82bece7a5e54762b6e6e7338de9d66708d5e24a6280ed99cc4cf"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7bc22a2a83e033e10cb79752e332d505d36030d1f53271997898b0555393088b"
    end
  end

  def install
    bin.install "tasq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tasq --version")
  end
end
