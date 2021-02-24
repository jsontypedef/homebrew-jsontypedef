class JtdValidate < Formula
  homepage "https://github.com/jsontypedef/json-typedef-validate"
  url "https://github.com/jsontypedef/json-typedef-validate/archive/v0.2.0.tar.gz"
  head "https://github.com/jsontypedef/json-typedef-validate.git"
  sha256 "8ef35cfdf6efb63f9b5f2893d92c1fc31d25e71f85d1b1749c713e9fca34fcb8"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jtd-validate", "--help"
  end
end
