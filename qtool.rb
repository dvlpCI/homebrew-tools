class Qtool < Formula
  desc "QTool:含分支json文件的创建+Jenkins打包"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.4.3.tar.gz"
  sha256 "c2fe0211fe12b4df7d46cd32db3b31697197b5e309fe2fba9dbe89c895257f21"
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
