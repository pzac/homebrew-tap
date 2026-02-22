class Blamer < Formula
    desc "CLI tool to investigate a file history via git blame"
    homepage "https://github.com/pzac/blamer"
    url "https://github.com/pzac/blamer/releases/download/v0.1.0/blamer-0.1.0.tar.gz"
    sha256 "b694db1f11e4a418a11bb5beaba9266242799ca279000c7c414d4aa4e11e660b"

    depends_on "rust" => :build

    def install
      system "cargo", "install", *std_cargo_args
    end

    test do
      assert_match /^blamer /, shell_output("#{bin}/blamer --version")
    end
  end
