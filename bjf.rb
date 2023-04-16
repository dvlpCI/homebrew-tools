class Bjf < Formula
  desc "BranchJSONFile:分支json文件的创建"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.0.4.tar.gz"
  sha256 "4b4571ea6d505ac55d8609dcb77b853934222dc3861d89ffc6e86d9d20accf97"
  # version "0.0.4"

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