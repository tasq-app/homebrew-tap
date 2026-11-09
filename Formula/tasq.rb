class Tasq < Formula
  desc "Capture your notes, plan your routines from the terminal"
  homepage "https://github.com/tasq-app/tasq"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "02aacb396e618f1ac0f80184543e3bc794788c7b6b8c8169dc11958b985c9e66"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7716b40a490cccdac72f5c3c5d330ebfa09e3cc49f681f5a52e6913cfb19774d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b289a8e54db5cd285dc86695fa663362aec716cc501fa440476c9f1a5e74e73"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1545f72345f63cd5eff3b52f8353d1461d85192058914079708606b4cabdd8d5"
    end
  end

  def install
    bin.install "tasq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tasq --version")
  end
end
