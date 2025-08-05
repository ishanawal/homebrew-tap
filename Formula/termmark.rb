class Termmark < Formula
    desc "Terminal-based Markdown renderer written in C++"
    homepage "https://github.com/ishanawal/TermMark"
    url "https://github.com/ishanawal/TermMark/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "525193e4dce145df0ac638500883ccc6d272651b5cac2d321ef9da778cbf82f3"
    license "MIT"
  
    depends_on "cmake" => :build
  
    def install
      system "cmake", ".", *std_cmake_args
      system "make"
      bin.install "termmark"
    end
  
    test do
      system "#{bin}/termmark", "--help"
    end
  end
  