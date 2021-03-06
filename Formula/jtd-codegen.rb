class JtdCodegen < Formula
  homepage "https://github.com/jsontypedef/json-typedef-codegen"
  url "https://github.com/jsontypedef/json-typedef-codegen/archive/v0.3.0.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-codegen.git"
  sha256 "1d7bbf2bd55913b685224188364f0bea68ae34e158374faf5068626c376b4280"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "./crates/cli"
  end

  test do
    system "#{bin}/jtd-codegen", "--help"
  end
end
