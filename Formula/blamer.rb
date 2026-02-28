class Blamer < Formula
    desc "CLI tool to investigate a file history via git blame"
    homepage "https://github.com/pzac/blamer"
    url "https://github.com/pzac/blamer/releases/download/v0.2.0/blamer-v0.2.0.tar.gz"
    sha256 "4a1135608470a9085e6c257de9248576def237e3b6dadb3e0a2c76024d6ff967"

    depends_on "rust" => :build

    def install
      system "cargo", "install", *std_cargo_args
    end

    test do
      assert_match /^blamer /, shell_output("#{bin}/blamer --version")
    end
  end
