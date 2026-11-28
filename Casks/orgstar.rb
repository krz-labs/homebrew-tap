# Template for krz/homebrew-tap's Casks/orgstar.rb; scripts/release-mac.sh fills in the version
# and checksum. Install with:
#   brew tap krz/tap https://gitbay.org/krz/homebrew-tap.git && brew install --cask orgstar

cask "orgstar" do
  version "1.5.0"
  sha256 "ff8905dc015f26896f1bd336104ab77a5fc4cd0206e3a3f42666503fa0431194"

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
