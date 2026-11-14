# Homebrew formula for the getman command, for the tap fzn0x/homebrew-tap
# (Formula/getman.rb). Written for each release by packaging/render.mjs.
class Getman < Formula
  desc "Local-first, account-free API client: a Postman alternative"
  homepage "https://fzn0x.github.io/getman/"
  version "0.3.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.3/getman-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "61aa917ac799564314862826925827b5670ca33d4c39b48fb3f3b22b83dbcbb4"
    end
    on_intel do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.3/getman-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "b0a6843ef3d29c2317940e4abf87665c11a66d7039b9b75bb3fffdc4b84d0cb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.3/getman-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bbe0a5084a0fdee99a0a2afe1b161ed3643500612a3150d60cc842b99b19fdb0"
    end
    on_intel do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.3/getman-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b88b95f160941c92b4c691c5dc6da5fa1f57f9cdd692c747d0627c35a58a3cf"
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
