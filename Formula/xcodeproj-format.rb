class XcodeprojFormat < Formula
  desc "Format Xcode project file (project.pbxproj)"
  homepage "https://github.com/odnoletkov/xcodeproj-format"
  url "https://github.com/odnoletkov/xcodeproj-format.git"
  version "0.1"

  depends_on :xcode

  def install
    xcodebuild "install",
      "SYMROOT=build", "DSTROOT=/", "INSTALL_PATH=#{bin}"
  end

  test do
    system "#{bin}/#{name}"
  end
end
