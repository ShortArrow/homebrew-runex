class Runex < Formula
  desc "Cross-shell abbreviation engine that expands short tokens into full commands"
  homepage "https://github.com/ShortArrow/runex"
  version "0.1.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-apple-darwin.tar.gz"
      sha256 "4c31b867574fc3e6a1e6d340ba9378437afa7a488c2edf7c5d8e13d5426f6bd7"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-apple-darwin.tar.gz"
      sha256 "b8796a9d893ba8de44bd7ec268d9415c65f93393c7b39cc03ec97ee616b52df8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14f94242f7d151158ffaefbf90541e78d828d620b3a0588a8bbac6c2d9361422"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1d2767e51ae575739ef97a048a27334c3d7c8b46550cd5ee400c85444b91e5fe"
    end
  end

  def install
    bin.install "runex"
  end

  test do
    assert_match "runex", shell_output("#{bin}/runex version")
  end
end
