class Gong < Formula
  desc "I'm outta here!"
  homepage "https://github.com/xwvike/gong"
  version "0.1.18"
  license "MIT"

  url "https://github.com/xwvike/gong/releases/download/v#{version}/gong-#{version}-macos-universal.tar.gz"
  sha256 "f37b8f860f65e6fda1468c78c3ef8bc3305095f693a2ceccc819403e45e183e2"

  depends_on :macos

  def install
    bin.install "gong"
    bin.install "gong-overlay"
    pkgshare.install "themes"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gong version")
    assert_match "led", shell_output("#{bin}/gong themes")
    system bin/"gong-overlay", "--force", "--require-done", "--timeout", "20",
           "--theme", pkgshare/"themes/led/index.html"
  end
end
