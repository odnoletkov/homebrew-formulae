class XcodeprojGraph < Formula
  desc "Build dependency graph for Xcode project's targets"
  homepage "https://github.com/odnoletkov/xcodeproj-graph"
  url "https://github.com/odnoletkov/xcodeproj-graph.git"
  version "0.1"

  depends_on "graphviz"
  depends_on "jq"
  depends_on :xcode

  def install
    bin.install "xcodeproj-graph"
    bin.install "targets.jq"
  end
end
