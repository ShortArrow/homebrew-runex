class Runex < Formula
  desc "Cross-shell abbreviation engine that expands short tokens into full commands"
  homepage "https://github.com/ShortArrow/runex"
  version "0.1.21"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-apple-darwin.tar.gz"
      sha256 "27fd216578fd9959a56e7f776ea78548b2c351dfcb908cb2c2f8cfc4d8fb8fad"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-apple-darwin.tar.gz"
      sha256 "e3bd32de7af291ac6b909f73f6514ea317f172ae6bfd59d53d6c7b47692aef6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-aarch64-unknown-linux-musl.tar.gz"
      sha256 "35c6f5afa7a4cb539c371249cd45f4948fc85e813efd1a2efda32d6b95dd43c9"
    end
    on_intel do
      url "https://github.com/ShortArrow/runex/releases/download/v#{version}/runex-x86_64-unknown-linux-musl.tar.gz"
      sha256 "510370c81a236b3e76e65b5d78e5f5a5785aba4fe580fb2cea8795dfd15ee7aa"
    end
  end

  def install
    bin.install "runex"
  end

  test do
    assert_match "runex", shell_output("#{bin}/runex version")
  end
end
