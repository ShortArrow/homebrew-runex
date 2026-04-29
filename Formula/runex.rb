class Runex < Formula
  desc "Cross-shell abbreviation engine that expands short tokens into full commands"
  homepage "https://github.com/ShortArrow/runex"
  version "0.1.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-apple-darwin.tar.gz"
      sha256 "ccbf86e8c89fb58614120a65ee214b69ef4692bb0d097c046121cfa584f75743"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-apple-darwin.tar.gz"
      sha256 "55a4e0571608bf23da567022beb77f604d08b440de2237440c2d184e606918a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a801b77069fbfdaa1357135838d5968984006f98c75e952bdf0c0bfc141943f"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "135b3cf784b457cbd5e9e92c89674f1115905ddfd19cfb56cf8b9b60f1cc9352"
    end
  end

  def install
    bin.install "runex"
  end

  test do
    assert_match "runex", shell_output("#{bin}/runex version")
  end
end
