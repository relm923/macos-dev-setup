#!/usr/bin/env bash

source ./utils.sh

if [ "$SHELL" != "$(brew --prefix)/bin/zsh" ]; then
    headerSmall "Configuring zsh"
    grep -qxF  "$(brew --prefix)/bin/zsh" /etc/shells || sudo bash -c "echo $(brew --prefix)/bin/zsh >> /etc/shells"
    chsh -s $(brew --prefix)/bin/zsh
fi

chown -R $USER $(brew --prefix)/share/zsh

if [ -z "$ZSH" ]; then
    headerSmall "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
