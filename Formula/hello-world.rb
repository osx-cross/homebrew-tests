class HelloWorld < Formula
  desc "Simple C++ Hello World CLI to play with Homebrew"
  homepage "https://github.com/ladislas/hello-world"

  url "https://github.com/ladislas/hello-world/archive/9.0.0.tar.gz"
  sha256 "5b4bb2c4d96e2d9adb38b4f92ab20a1806a6411f902c712ea9cf5c1a5a7ab65b"
  revision 2

  bottle do
    root_url "https://github.com/osx-cross/homebrew-tests/releases/download/hello-world-9.0.0_2"
    cellar :any_skip_relocation
    sha256 "35861bce7f60f6c30126365325032679c63b48ca6cf94398bdd6ec9f01cb505c" => :catalina
  end

  def install
    system "make"
    bin.install "build/hello"
  end

  test do
    assert_equal `hello`, "Hello, world!\nVersion #{version}\n"
  end
end
