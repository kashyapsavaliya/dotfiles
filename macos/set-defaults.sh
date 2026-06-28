if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

set +e

sudo -v

echo ""
echo "› System:"
echo "  › Set a really fast key repeat"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

echo "  › Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

echo "  › Tint window background with wallpaper color"
defaults write NSGlobalDomain AppleReduceDesktopTinting -bool false

echo "  › Disable smart quotes, smart dashes, capitalization, period substitution, and auto-correct"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "  › Disable web automatic spelling correction"
defaults write -g WebAutomaticSpellingCorrectionEnabled -bool false

echo "  › Set dark interface style"
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

echo "  › Set accent color to graphite"
defaults write -g AppleAccentColor -int 0

echo "  › Save to disk by default, instead of iCloud"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

echo "  › Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -bool true
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "  › Keep quarantine enabled for the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool true

echo "  › Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "  › Set sidebar icon size to medium"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

echo "  › Enable WebKit developer extras"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

echo "  › Disable transparency"
defaults write com.apple.universalaccess reduceTransparency -bool true

############################Finder

############################Photos

############################Mail

############################Dock

############################Terminal

############################Safari

############################Restart
