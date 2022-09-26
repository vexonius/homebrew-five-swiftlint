class FiveSwiftlint < Formula
    desc "Forked Tool to enforce FIVE's Swift style and conventions"
    homepage "https://github.com/vexonius/SwiftLint"
    url "https://github.com/vexonius/SwiftLint/releases/download/beta/five-swiftlint.tar.gz"
    license "MIT"
    sha256 "b70d68181e31b26a7904d4e4cd6d86f2494ab99e820fe746e6e7710d4e718b13"
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