#!/usr/bin/env bash

source ./utils.sh

headerBig "Preparing Homebrew"

if ! [ -x "$(command -v brew)" ]; then
  headerSmall "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update

brew upgrade

# CoreUtils
brew install coreutils

# Bash
brew install bash bash-completion2
