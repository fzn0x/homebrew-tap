# Homebrew formula for the getman command, for the tap fzn0x/homebrew-tap
# (Formula/getman.rb). Written for each release by packaging/render.mjs.
class Getman < Formula
  desc "Open-source Postman alternative written in Rust"
  homepage "https://fzn0x.github.io/getman/"
  version "0.4.0"
  license any_of: ["MIT", "GPL-3.0-or-later"]

  on_macos do
    on_arm do
      url "https://github.com/fzn0x/getman/releases/download/v0.4.0/getman-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "45a26573b92e1f08a3c2c6262970ec3c9f2c39fa957b91b560263073d6253a0a"
    end
    on_intel do
      url "https://github.com/fzn0x/getman/releases/download/v0.4.0/getman-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "42ac838d771b9e430b048a172075f843163e334ea862de9ef3a6064bdf7e8837"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzn0x/getman/releases/download/v0.4.0/getman-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aea7d81eab9519a9cf5566752a9204aa11a0ed129c0b2022c38ceab679409401"
    end
    on_intel do
      url "https://github.com/fzn0x/getman/releases/download/v0.4.0/getman-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74f2b3a17035c5b54b56f5a4a8bdafcee224a757880c3808f4be9cecb76ae11c"
    end
  end

  def install
    bin.install "getman"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/getman --version")
    system bin/"getman", "init", testpath/"workspace"
    assert_path_exists testpath/"workspace/getman.yaml"
  end
end
