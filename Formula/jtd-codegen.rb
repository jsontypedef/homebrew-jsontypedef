class JtdCodegen < Formula
  homepage "https://github.com/jsontypedef/json-typedef-codegen"
  url "https://github.com/jsontypedef/json-typedef-codegen/archive/v0.2.0.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-codegen.git"
  sha256 "c96d4b2ee8dcd509bb3fc807a7443090acc485678bbaadb77968079bae1418dd"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "./crates/cli"
  end

  test do
    system "#{bin}/jtd-codegen", "--help"
  end
end
