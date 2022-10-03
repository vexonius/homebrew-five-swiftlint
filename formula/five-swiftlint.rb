class FiveSwiftlint < Formula
    desc "Forked Tool to enforce FIVE's Swift style and conventions"
    homepage "https://github.com/vexonius/SwiftLint"
    license "MIT"
    head "https://github.com/vexonius/SwiftLint", branch: "feature/custom-rules"
    version "1.0.0"

    resource "arm64" do
      url "https://github.com/vexonius/SwiftLint/releases/download/release/five-swiftlint.tar.gz"
      sha256 "b70d68181e31b26a7904d4e4cd6d86f2494ab99e820fe746e6e7710d4e718b13"
    end

    resource "x86_64" do
      url "https://github.com/vexonius/SwiftLint/releases/download/release/five-swiftlint-x86_64.tar.gz"
      sha256 "ebbbc4760ac4f7a1e1efd7e8d2ad0d83810c140c50343771089f77b2cb2e0e8d"
    end
  
    def install
        resource("arm64").stage do
          bin.install "five-swiftlint"
        end
    end

      # Homebrew requires tests.
    test do
        assert_match "five-swiftlint version 1.0.0", shell_output("#{bin}/five-swiftlint -v", 2)
    end
  end