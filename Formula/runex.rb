class Runex < Formula
  desc "Cross-shell abbreviation engine that expands short tokens into full commands"
  homepage "https://github.com/ShortArrow/runex"
  version "0.1.14"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-apple-darwin.tar.gz"
      sha256 "342e05b83bede995ffd2a2515d9497cb980abb6ef7ffba164c090d3de2d621b9"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-apple-darwin.tar.gz"
      sha256 "513f700881a519b87b4e382bddc6076c31d117cdfb05ffc3afeca5ce39bf2a1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a705e3396535e4bc52f9f249a9fcc7ef7fb3ea8091deda3ced391f8df812b6a"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23a0ece829698253c401a2d5054b9ae3db6edc06007dbd91952b278ec071ab41"
    end
  end

  def install
    bin.install "runex"
  end

  test do
    assert_match "runex", shell_output("#{bin}/runex version")
  end
end
