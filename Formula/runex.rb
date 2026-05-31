class Runex < Formula
  desc "Cross-shell abbreviation engine that expands short tokens into full commands"
  homepage "https://github.com/ShortArrow/runex"
  version "0.1.18"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-apple-darwin.tar.gz"
      sha256 "9dab0c502e31b28ba9ee3039b372b02ebb3fb425ca2bf9591c47d49d6b904514"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-apple-darwin.tar.gz"
      sha256 "02a73fa113b21e041ef9fd4749bbe0b2c0962f738bce883d99f06e42e8d372a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35ebd8a9c17e9f0d2c91cb53a04d94d1d1b8d813a5e079b69e5751ccf0d3625f"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f86962e1f44292f50e688b63615ef330d028d77a513034bdfe34e131bcc52a31"
    end
  end

  def install
    bin.install "runex"
  end

  test do
    assert_match "runex", shell_output("#{bin}/runex version")
  end
end
