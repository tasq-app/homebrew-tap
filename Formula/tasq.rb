class Tasq < Formula
  desc "Capture your notes, plan your routines from the terminal"
  homepage "https://github.com/tasq-app/tasq"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b3bd2389579facd77f1c74f517c4343e387d8a755d123b772077fb42e696490d"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c911ad8e18d1e1f0dd7cbb396c14aeeb69464971ddaf45dab2f59de8a16a09ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6fee6b1b69d905557ad7c2a926cb1c66b8acb7bc2d74d7305c9a2f4c327435ff"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4107cf6796f723fd34b2b60f09185494af409c5c9a20d67def7a5f2591f42feb"
    end
  end

  def install
    bin.install "tasq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tasq --version")
  end
end
