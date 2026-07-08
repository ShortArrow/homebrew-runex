class Runex < Formula
  desc "Cross-shell abbreviation engine that expands short tokens into full commands"
  homepage "https://github.com/ShortArrow/runex"
  version "0.1.20"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-apple-darwin.tar.gz"
      sha256 "09a08b6b9b8a5d72f0c9ff4bb38662820c50a523f6c506fed37034a723342fa8"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-apple-darwin.tar.gz"
      sha256 "b2477f55348d3f8f597a3e324f29d408805f747d1a5e5dabf7809679f4513a5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "985b888414f28dc82612c91a218542536f17e36bd8930d924e467a87aa41a611"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de38b53b7747d926837cc1a4cf99fe9fbd85146e1b3a8e80f6010984393e677d"
    end
  end

  def install
    bin.install "runex"
  end

  test do
    assert_match "runex", shell_output("#{bin}/runex version")
  end
end
