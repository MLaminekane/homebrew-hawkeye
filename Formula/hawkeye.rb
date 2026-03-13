class Hawkeye < Formula
  desc "Flight recorder for AI agents - observability and security"
  homepage "https://github.com/MLaminekane/hawkeye"
  url "https://registry.npmjs.org/hawkeye-ai/-/hawkeye-ai-0.1.10.tgz"
  sha256 "45bed4705db945df3d4099a172e13e683620db3ac6fd0d7580184a226f4cf419"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hawkeye --version")
  end
end
