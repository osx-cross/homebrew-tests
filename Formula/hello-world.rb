class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/9.0.0.tar.gz"
  sha256 "5b4bb2c4d96e2d9adb38b4f92ab20a1806a6411f902c712ea9cf5c1a5a7ab65b"
  revision 1

  bottle do
    root_url "https://github.com/osx-cross/homebrew-tests/releases/download/hello-world-9.0.0_1"
    cellar :any_skip_relocation
    sha256 "38092981afc9c801e8667460aadc603ea6047f3b683d12675efff7e409bbecd0" => :catalina
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, world!\nVersion #{version}\n"
  end
end
