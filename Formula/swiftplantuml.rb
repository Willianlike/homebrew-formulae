class Swiftplantuml < Formula
  desc "Generate UML class diagrams from Swift sources"
  homepage "https://github.com/WillianLike/SwiftPlantUML"
  url "https://github.com/WillianLike/SwiftPlantUML/archive/0.8.2.tar.gz"
  sha256 "acc14a274ae8edef518743584eb55a273c136b7eac279c0184fb5811802355c1"
  license "MIT"

  depends_on xcode: ["12.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swiftplantuml", "--help"
  end
end
