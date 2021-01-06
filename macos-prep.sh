#!/usr/bin/env bash

source ./utils.sh

sudoAccess

headerBig "Preparing MacOS"

headerSmall "Updating MacOS"
sudo softwareupdate -ia --verbose

# TODO: Do not exit when already installed
headerSmall "Installing Xcode Command Line Tools"
xcode-select --install