#!/usr/bin/env bash

sudo -v

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
    true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Install brew & brew-cask bundles
brew bundle brew
brew bundle brew-cask

rsync --exclude ".git/" --exclude "Init.sh" . ~
source ~/.bash_profile

