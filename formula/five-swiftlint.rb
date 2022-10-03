class FiveSwiftlint < Formula
    desc "Forked Tool to enforce FIVE's Swift style and conventions"
    homepage "https://github.com/vexonius/SwiftLint"
    url "https://github.com/vexonius/SwiftLint/releases/download/x86_64/five-swiftlint-intel.tar.gz"
    license "MIT"
    head "https://github.com/vexonius/SwiftLint", branch: "feature/custom-rules"
    version "1.0.0"
  
    def install
        bin.install "five-swiftlint"
    end

      # Homebrew requires tests.
    test do
        assert_match "five-swiftlint version 1.0.0", shell_output("#{bin}/five-swiftlint -v", 2)
    end
  end