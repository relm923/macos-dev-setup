#!/usr/bin/env bash

function sudoAccess () {
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
}

function headerBig () {
    echo ""
    echo "------------------------------------------------------------"
    echo "$1"
    echo "------------------------------------------------------------"
    echo ""
}

function headerSmall () {
    echo ""
    echo "$1"
    echo "------------------------------"
}
