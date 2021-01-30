class JtdCodegen < Formula
  homepage "https://github.com/jsontypedef/json-typedef-codegen"
  url "https://github.com/jsontypedef/json-typedef-codegen/archive/v0.2.0.test.3.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-codegen.git"
  sha256 "82a18ae7abf27533f5bee338cee25eabb06e7182e9d9fbf032fde174a032f2aa"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "./crates/cli"
  end

  test do
    system "#{bin}/jtd-codegen", "--help"
  end
end
