class JtdInfer < Formula
  homepage "https://github.com/jsontypedef/json-typedef-infer"
  url "https://github.com/jsontypedef/json-typedef-infer/archive/v0.2.1.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-infer.git"
  sha256 "e00f3f8f50ca2b4ae295d63f95ad789dabc8ac2bbcbad0a414b6d7489c5170d5"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jtd-infer", "--help"
  end
end
