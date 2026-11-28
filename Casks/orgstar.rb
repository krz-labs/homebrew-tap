# Template for krz/homebrew-tap's Casks/orgstar.rb; scripts/release-mac.sh fills in the version
# and checksum. Install with:
#   brew tap krz-labs/tap && brew install --cask orgstar

cask "orgstar" do
  version "1.6.0"
  sha256 "449fd72a2c8e70f2a7c6f5f9c9b173122011f3a9970eaca13b0e96bd8193966e"

  url "https://files.krz.sh/orgstar/orgstar-#{version}.dmg"
  name "orgstar"
  desc "Native org-mode editor and agenda"
  auto_updates true
  homepage "https://krz.sh/apps/orgstar/"

  depends_on macos: :tahoe

  app "orgstar.app"
  binary "#{appdir}/orgstar.app/Contents/Helpers/orgstar"

  zap trash: [
    "~/.config/orgstar",
    "~/Library/Application Support/Orgstar",
    "~/Library/Preferences/sh.krz.orgstar.plist",
  ]
end
