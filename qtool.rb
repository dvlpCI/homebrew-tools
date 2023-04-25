class Qtool < Formula
  desc "QTool:含分支json文件的创建+Jenkins打包"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.2.8.tar.gz"
  sha256 "e1ed9d7dafe43b6b4e8017b850bccfebc9db347f78f7b015bd05591c63662b11"
  # shasum -a 256 xxxx.tar.gz
  # version /(\d+\.\d+\.\d+)/  # 从 URL 中提取版本号

  def install
    # Install script to bin
    # bin.install "helloworld.sh"
    bin.install "qtool"
    lib.install Dir["*"] # 记得添加lib目录，并将源码存放于lib里的src下
  end


  def uninstall
    # rm "#{bin}/helloworld.sh"
    rm "#{bin}/qtool"
  end

  test do
    # Test your script
    system "#{bin}/qtool", "--version"
  end
end