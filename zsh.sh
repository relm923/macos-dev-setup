#!/usr/bin/env bash

source ./utils.sh

if [ "$SHELL" != "/usr/local/bin/zsh" ]; then
    headerSmall "Configuring zsh"
    grep -qxF '/usr/local/bin/zsh' /etc/shells || sudo bash -c 'echo /usr/local/bin/zsh >> /etc/shells'
    chsh -s /usr/local/bin/zsh
fi

chown -R $USER /usr/local/share/zsh

if [ -z "$ZSH" ]; then
    headerSmall "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
