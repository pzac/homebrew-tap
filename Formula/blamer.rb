class Blamer < Formula
    desc "CLI tool to investigate a file history via git blame"
    homepage "https://github.com/pzac/blamer"
    url "https://github.com/pzac/blamer/releases/download/v0.1.1/v0.1.1.tar.gz"
    sha256 "22abfd294a3767236f8b9c3695799a48cfb23b3daf7e99b8e8e60dbb5a33c250"

    depends_on "rust" => :build

    def install
      system "cargo", "install", *std_cargo_args
    end

    test do
      assert_match /^blamer /, shell_output("#{bin}/blamer --version")
    end
  end
