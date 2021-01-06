#!/usr/bin/env bash

source ./utils.sh

function setupAll() {
    ./dot-files.sh
    # ./macos-prep.sh
    ./brew.sh
    ./zsh.sh

    echo "Running Setup"
}

read -p "This script may overwrite existing files. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    setupAll $@
fi;

unset setupAll;