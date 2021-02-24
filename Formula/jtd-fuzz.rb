class JtdFuzz < Formula
  homepage "https://github.com/jsontypedef/json-typedef-fuzz"
  url "https://github.com/jsontypedef/json-typedef-fuzz/archive/v0.2.0.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-fuzz.git"
  sha256 "69679fb767cfa515e73cf2853d0eaf7a43030846b763d21478a8649ae6aac172"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jtd-fuzz", "--help"
  end
end
