class Blamer < Formula
    desc "CLI tool to investigate a file history via git blame"
    homepage "https://github.com/pzac/blamer"
    url "https://github.com/pzac/blamer/releases/download/v0.3.0/blamer-v0.3.0.tar.gz"
    sha256 "fab49cb2ab371de9f430df16119db7191402276cdb6b72cae3b78a8b17c98e73"

    depends_on "rust" => :build

    def install
      system "cargo", "install", *std_cargo_args
    end

    test do
      assert_match /^blamer /, shell_output("#{bin}/blamer --version")
    end
  end
