#!/usr/bin/env bash

sudo -v

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
    true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Install brews
brew install $(cat Brewfile|grep -v "#")
brew cleanup

# Install casks
brew install caskroom/cask/brew-cask
brew cask install $(cat Caskfile|grep -v "#")
brew cask cleanup

rsync --exclude ".git/" --exclude "Init.sh" . ~
source ~/.bash_profile

