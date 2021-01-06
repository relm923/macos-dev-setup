#!/usr/bin/env bash

source ./utils.sh

headerBig "Preparing Homebrew"

if ! [ -x "$(command -v brew)" ]; then
  headerSmall "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade
brew install mas
brew bundle
brew cleanup

# rvm
if ! [ -x "$(command -v rvm)" ]; then
    curl -sSL https://get.rvm.io | bash -s stable --ruby
fi
