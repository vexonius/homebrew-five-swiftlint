class Swiftlint < Formula
    desc "Forked Tool to enforce FIVE's Swift style and conventions"
    homepage "https://github.com/vexonius/SwiftLint"
    url "https://github.com/vexonius/SwiftLint/releases/download/beta/five-swiftlint.tar.gz"
    license "MIT"
    head "https://github.com/vexonius/SwiftLint", branch: "feature/custom-rules"
  
    depends_on xcode: ["13.3", :build]  
    uses_from_macos "swift"
  
    def install
        bin.install "five-swiftlint"
    end
  end