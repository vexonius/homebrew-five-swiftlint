class FiveSwiftlint < Formula
    desc "Forked Tool to enforce FIVE's Swift style and conventions"
    homepage "https://github.com/vexonius/SwiftLint"
    url "https://github.com/vexonius/SwiftLint/releases/latest/download/five-swiftlint.tar.gz"
    license "MIT"
    sha256 "a40ed470782313c75caea689dc82240c160e9a890d4f60e7450f79ff4b828d7e"
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