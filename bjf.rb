class BJF < Formula
  desc "BranchJSONFile:分支json文件的创建"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.0.3.tar.gz"
  sha256 "95fe968314e93a3a08ce18f641c21d3b684f4122ad0e076e2030236194ee2235"

  def install
    # Install script to bin
    # bin.install "helloworld.sh"
    bin.install "bjf"
  end


  def uninstall
    # rm "#{bin}/helloworld.sh"
    rm "#{bin}/bjf"
  end

  test do
    # Test your script
    system "#{bin}/bjf", "--version"
  end
end