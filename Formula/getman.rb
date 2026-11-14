# Homebrew formula for the getman command, for the tap fzn0x/homebrew-tap
# (Formula/getman.rb). Written for each release by packaging/render.mjs.
class Getman < Formula
  desc "Local-first, account-free API client: a Postman alternative"
  homepage "https://fzn0x.github.io/getman/"
  version "0.3.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.4/getman-v0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "ce65a93af528a58ba899bbbb429545f5d7f92189660736f855942378cbe1a947"
    end
    on_intel do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.4/getman-v0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "24484b053507a4e7bc513acc3bad4575a346349ea3cdf4e54f19012c2e13b087"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.4/getman-v0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f97496831948cbc6cfdb1c70c384cf78f12eab28c38256b85f7b3cbb0c02a3b0"
    end
    on_intel do
      url "https://github.com/fzn0x/getman/releases/download/v0.3.4/getman-v0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8441b9d1ffa32412e70e57bb5d559b69c56ac1861d0fc0aac7b8753e838e6772"
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
