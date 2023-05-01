class Dipc < Formula
  desc "Convert your favorite images and wallpapers with your favorite color themes"
  homepage "https://github.com/doprz/dipc"
  url "https://github.com/doprz/dipc/archive/v0.5.0.tar.gz"
  sha256 "61650ade611da69d16b44fa2704157312ca74ca0d0eda76b9044628139168c5f"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"dipc", "--version"
  end
end
