class Swiftplantuml < Formula
  desc "Generate UML class diagrams from Swift sources"
  homepage "https://github.com/WillianLike/SwiftPlantUML"
  url "https://github.com/WillianLike/SwiftPlantUML/archive/0.8.1.tar.gz"
  sha256 "b3c86fb68d6cbec19aab8b1c5cb3431f13b584dbe35ce82ea8d5b6143e16b0ea"
  license "MIT"

  depends_on xcode: ["12.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swiftplantuml", "--help"
  end
end
