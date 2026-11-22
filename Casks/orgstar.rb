# Template for krz/homebrew-tap's Casks/orgstar.rb; scripts/release-mac.sh fills in the version
# and checksum. Install with:
#   brew tap krz/tap https://gitbay.org/krz/homebrew-tap.git && brew install --cask orgstar

cask "orgstar" do
  version "1.2.0"
  sha256 "7408be50b31a778802b90fa1454711a3f9ee617f659bcbcc5286b5d1082a738b"

  url "https://files.krz.sh/orgstar/orgstar-#{version}.dmg"
  name "orgstar"
  desc "Native org-mode editor and agenda"
  auto_updates true
  homepage "https://krz.sh/apps/orgstar/"

  depends_on macos: :tahoe

  app "orgstar.app"

  zap trash: [
    "~/.config/orgstar",
    "~/Library/Application Support/Orgstar",
    "~/Library/Preferences/sh.krz.orgstar.plist",
  ]
end
