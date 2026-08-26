class Libclc < Formula
  desc "Implementation of the library requirements of the OpenCL C programming language"
  homepage "https://libclc.llvm.org/"
  url "https://github.com/llvm/llvm-project/releases/download/llvmorg-23.1.0/llvm-project-23.1.0.src.tar.xz"
  sha256 "ab1f0e3ec52448c33e8782eaf0422504b87c7b016b22514653ee0d8fcee479ff"
  license "Apache-2.0" => { with: "LLVM-exception" }
  compatibility_version 1

  livecheck do
    url :stable
    regex(/^llvmorg[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_tahoe:   "b2bd33ec0c3983ca9e316d213d6af5b949fef9b620f14aaf70008d85a56bccbe"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b2bd33ec0c3983ca9e316d213d6af5b949fef9b620f14aaf70008d85a56bccbe"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "b2bd33ec0c3983ca9e316d213d6af5b949fef9b620f14aaf70008d85a56bccbe"
    sha256 cellar: :any_skip_relocation, sonoma:        "b2bd33ec0c3983ca9e316d213d6af5b949fef9b620f14aaf70008d85a56bccbe"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "b2bd33ec0c3983ca9e316d213d6af5b949fef9b620f14aaf70008d85a56bccbe"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4d316e940d3fb558c1ec25794856203a2a1beea9b85b749c4e6a07eee26c38a1"
  end

  depends_on "cmake" => :build
  depends_on "llvm" => [:build, :test]
  depends_on "spirv-llvm-translator" => :build

  fails_with :gcc

  def install
    system "cmake", "-S", "libclc", "-B", "build",
                    "-DLLVM_SPIRV=#{formula_opt_bin("spirv-llvm-translator")/"llvm-spirv"}",
                    # SPIR-V targets reject shim-injected flags like `-mbranch-protection` on arm64 Linux
                    "-DCMAKE_CLC_COMPILER=#{formula_opt_bin("llvm")/"clang"}",
                    *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"

    inreplace share/"pkgconfig/libclc.pc", prefix, opt_prefix
  end

  test do
    (testpath/"add_sat.cl").write <<~C
      __kernel void foo(__global char *a, __global char *b, __global char *c) {
        *a = add_sat(*b, *c);
      }
    C

    clang_args = %W[
      -target nvptx64--nvidiacl
      -c -emit-llvm
      -Xclang -mlink-bitcode-file
      -Xclang #{share}/clc/nvptx64--nvidiacl.bc
    ]
    llvm_bin = formula_opt_bin("llvm")

    system llvm_bin/"clang", *clang_args, "./add_sat.cl"
    ir = shell_output("#{llvm_bin}/llvm-dis ./add_sat.bc -o -")
    assert_match('target triple = "nvptx64-unknown-nvidiacl"', ir)
    assert_match(/define .* @foo\(/, ir)
  end
end
