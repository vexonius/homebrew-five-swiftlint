Formula for a forked [Swiftlint](https://github.com/vexonius/SwiftLint) tap distribution

### Installation (compiled binary)

1. Make sure you have [Homebrew](https://brew.sh/) installed
2. Tap forked swiftlint repo
   ```
   brew tap vexonius/five-swiftlint
   ```
3. Install forked swiftlint
   ```
   brew install vexonius/five-swiftlint
   ```
4. Run it inside swift source code directory using:
   ```
   five-swiftlint lint (--no-cache)
   ```

### Update 

1. Build forked Swiftlint binary 
2. Compress it to gzipped tarball (greatly reduces binary size)
   ```
   tar -czvf five-swiftlint.tar.gz swiftlint

   ```
3. Make Github release tag with binary as gzipped tarball compressed attachment (five-swiftlint.tar.gz) on [its repo](https://github.com/vexonius/SwiftLint/releases)
4. Copy the link of attached binary
5. Create new branch
6. Update formaulae five-swiftlint.rb in this repo with new link, branch name and version
7. Remove sha256 line
8. Push new branch and tap pushed repo (github_username/repo_name)
   ```
   brew tap vexonius/five-swiftlint
   ```
9.  Homebrew will kinldy tell you the sha256 hash of your pushed tap
10. Update the formulae with new sha256 hash and replace branch name with main
11. Merge it to main
12. Profit??

For more info on creating formuales and taps, read:
[Creating Homebrew taps for private internal tools](https://medium.com/prodopsio/creating-homebrew-taps-for-private-internal-tools-c41363d58ab0)
[HomeBrew docs](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap)