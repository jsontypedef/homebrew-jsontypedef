class JtdCodegen < Formula
  homepage "https://github.com/jsontypedef/json-typedef-codegen"
  url "https://github.com/jsontypedef/json-typedef-codegen/archive/v0.4.1.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-codegen.git"
  sha256 "4f267d565f932e23de4d3471da82690ce48ce782942403c9543e12e44637e639"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "./crates/cli"
  end

  test do
    system "#{bin}/jtd-codegen", "--help"
  end
end
