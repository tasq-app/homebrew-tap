class Tasq < Formula
  desc "Capture your notes, plan your routines from the terminal"
  homepage "https://github.com/tasq-app/tasq"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3d40d09db754079fbb5319329adad27632a5f9e717b0a4d2eadad5bd9f6e6a32"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fa16bb7586fd9916457c514559f6857fd15b259f07005ac30077b4973cff6507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6349cdd9602f63dc1b2b1451b8d5526c99d1a6226c2a7d7850533ccf90aece27"
    end
    on_intel do
      url "https://github.com/tasq-app/tasq/releases/download/v#{version}/tasq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "559b7dd26cf14317fbb568219d0c4f8725382f678d6c5e3cf379feab865edb27"
    end
  end

  def install
    bin.install "tasq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tasq --version")
  end
end
