#!/usr/bin/env bash

source ./utils.sh

sudoAccess

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Save screenshots to Desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Set the icon size of Dock items to 34 pixels
defaults write com.apple.dock tilesize -int 34

# Enable Dock maginificatioon
defaults write com.apple.dock magnification -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Start screen saver
defaults write com.apple.dock wvous-tl-corner -int 5
# defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Desktop
# defaults write com.apple.dock wvous-tr-corner -int 4
# defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Start screen saver
# defaults write com.apple.dock wvous-bl-corner -int 5
# defaults write com.apple.dock wvous-bl-modifier -int 0

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in \
    "Activity Monitor" \
    "Address Book" \
    "Calendar" \
    "Contacts" \
    "Dock" \
    "Finder" \
    "Google Chrome" \
    "iCal"\
    "Messages" \
    "Safari" \
    "SystemUIServer" \
    ; do
    killall "${app}" > /dev/null 2>&1
done

echo "Done"
