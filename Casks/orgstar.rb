# Template for krz/homebrew-tap's Casks/orgstar.rb; scripts/release-mac.sh fills in the version
# and checksum. Install with:
#   brew tap krz-labs/tap && brew install --cask orgstar

cask "orgstar" do
  version "1.7.0"
  sha256 "829b0d327d5e2cef4ae96f8197faed1ed38f6f2f91d27d53d38faa773d90ad8e"

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
