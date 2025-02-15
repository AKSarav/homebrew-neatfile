class Neatfile < Formula
  desc "NeatFile is a tool to clean up files by removing comments and empty lines"
  homepage "https://github.com/AKSarav/neatfile"
  version "0.0.1"
  license "MIT"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/AKSarav/neatfile/releases/download/v0.0.1/neatfile-0.0.1-linux-amd64.zip"
    sha256 "60dd1d2aac453c7ede3ac40a0bf1217b5a32d5e23745fa23c3e0413115ece6dc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/AKSarav/neatfile/releases/download/v0.0.1/neatfile-0.0.1-linux-arm64.zip"
    sha256 "553ff5fbb01d46eaca049452c5f48629089e7e6f0681ad5ebfa41d05ef00b97c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AKSarav/neatfile/releases/download/v0.0.1/neatfile-0.0.1-darwin-amd64.zip"
    sha256 "d2a75a572edb73956065f2ddf8854af306338e078eb35a1d1906efe96e881800"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/AKSarav/neatfile/releases/download/v0.0.1/neatfile-0.0.1-darwin-arm64.zip"
    sha256 "e4d6be17e1dc86433e9739beda9c21fd646eb6b2ccf5385541c91dd798f23572"
  elsif OS.windows? && Hardware::CPU.intel?
    url "https://github.com/AKSarav/neatfile/releases/download/v0.0.1/neatfile-0.0.1-windows-amd64.zip"
    sha256 "b8b81eda0cd4f29df92d674b5a58bd044c91ee5ad9de42e7e9a512233b14e054"
  end

  def install
    platform = if OS.mac?
                  "darwin"
                elsif OS.linux?
                  "linux"
                elsif OS.windows?
                  "windows"
                end

    arch = if Hardware::CPU.intel?
              "amd64"
            elsif Hardware::CPU.arm?
              "arm64"
            end

    bin.install "neatfile-#{platform}-#{arch}" => "neatfile"
  end
end