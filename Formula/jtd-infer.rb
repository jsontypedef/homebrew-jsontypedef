class JtdInfer < Formula
  homepage "https://github.com/jsontypedef/json-typedef-infer"
  url "https://github.com/jsontypedef/json-typedef-infer/archive/v0.1.1.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-infer.git"
  sha256 "844a949d55993bd7fe38c5b7fbd036f706011843c42436966d8ea4008b9cbdfc"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jtd-infer", "--help"
  end
end
