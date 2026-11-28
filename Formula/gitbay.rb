class Gitbay < Formula
  desc "CLI for gitbay, the CLI-first git forge"
  homepage "https://github.com/krz-labs/gitbay"
  url "https://github.com/krz-labs/gitbay.git",
      tag:      "v1.49.0",
      revision: "4a511e42574ead9c92dc73fd320f296cc4dbea07"
  license "0BSD"
  head "https://github.com/krz-labs/gitbay.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gitbay"
  end

  test do
    assert_match "forge", shell_output("#{bin}/gitbay --help")
  end
end
