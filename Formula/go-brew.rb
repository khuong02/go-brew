class Pack < Formula
  desc "A CLI for test brewing formulae"
  homepage "https://github.com/khuong02/go-brew"
  version "0.1.0"
  version_scheme 1

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/khuong02/go-brew/releases/download/v0.1.0/go-brew_Darwin_arm64.tar.gz"
    sha256 "1b64603d769ad7e46cc8c040cd96c0b0d9f7e0133efa5b14e66e7dd0c02fbc5e"
  elsif OS.mac?
    url "https://github.com/khuong02/go-brew/releases/download/v0.1.0/go-brew_Darwin_x86_64.tar.gz"
    sha256 "a53b02474229a0e18c9e0cd1bc5bc92fbe18ab1713636e061e20e34e974500db"
  else 
    url "https://github.com/khuong02/go-brew/releases/download/v0.1.0/go-brew_Linux_x86_64.tar.gz"
    sha256 "3fede774291eaaac63e9a946b8724a9ce8b891ae4ac67c672605704bd668afff"
  end

  def install
    bin.install "go-brew"
  end
end