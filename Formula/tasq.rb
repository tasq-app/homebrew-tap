class Tasq < Formula
  desc "Capture your notes, plan your routines from the terminal"
  homepage "https://github.com/tasq-app/tasq"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d2a3a55e10ce93d23e2be91da96c945f266da55bbfee0b12fcf05f1681525eb0"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "351071bd1219eea9b79c88b764b5de16dc0f422e980bf35fb8575920334c5271"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb92cc33272ba29eba62adc7df38c6c77d4fa11b6a326b0fb5b6ce40082c9725"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "150a10ab6166380032ae200d0a1814a144897093c418342ce49d3bc71f1c4a0f"
    end
  end

  def install
    bin.install "tasq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tasq --version")
  end
end
