class Qtool < Formula
  desc "QTool:含分支json文件的创建+Jenkins打包"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.5.2.tar.gz"
  sha256 "4e6f58ad067ded4a2bf360fd835e7d6d2ae7c0ab8a5e1f2b3b5b61ebd4948e92"
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
