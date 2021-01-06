#!/usr/bin/env bash

source ./utils.sh

brew install zsh zsh-completions

if [ "$SHELL" != "/usr/local/bin/zsh" ]; then
    headerSmall "Configuring zsh"
    grep -qxF '/usr/local/bin/zsh' /etc/shells || sudo bash -c 'echo /usr/local/bin/zsh >> /etc/shells'
    chsh -s /usr/local/bin/zsh
fi

chown -R relm /usr/local/share/zsh

if [ -z "$ZSH" ]; then 
    headerSmall "Installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

brew install romkatv/powerlevel10k/powerlevel10k
