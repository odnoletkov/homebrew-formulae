class Urlcomponents < Formula
  desc "Convert URL to and from JSON"
  homepage "https://github.com/odnoletkov/urlcomponents"
  url "https://github.com/odnoletkov/urlcomponents.git"
  version "0.1"

  depends_on xcode: :build

  def install
    system "swift", "build",
           "--configuration", "release",
           "--disable-sandbox"

    bin.install ".build/release/#{name}" => name
  end

  test do
    system "#{bin}/#{name}", "http://example.com"
  end
end
