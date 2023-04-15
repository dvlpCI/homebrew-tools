class Helloworld < Formula
  desc "样例"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.0.2.tar.gz"
  sha256 "5c7a27c4bec2ec1d34b64943d3e5fbe7243d1f3848eb5e74d2685d94d6c2ef61"

  def install
    # Install script to bin
    # bin.install "helloworld.sh"
    bin.install "helloworld"
  end

  # def install2
  #   # 将软件包安装到 /usr/local/Cellar 目录中
  #   prefix.install Dir["*"]
  # end

  def uninstall
    # rm "#{bin}/helloworld.sh"
    rm "#{bin}/helloworld"
  end

  test do
    # Test your script
    system "#{bin}/helloworld", "--version"
  end
end