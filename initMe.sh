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

# Install node modules
npm install -g $(cat NpmFile|grep -v "#")

rsync -av . --exclude .git/ --exclude initMe.sh  --exclude Readme.md  --exclude Brefile --exclude CaskFile ~
source ~/.bash_profile

