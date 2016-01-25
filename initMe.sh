#!/usr/bin/env bash

sudo -v

# Install Homebrew.
if [[ ! "$(type -P brew)" ]]; then
    true | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Install brews
brew install $(cat Brewfile | grep -v "#")
brew cleanup

# Install casks
brew install caskroom/cask/brew-cask
brew cask install $(cat Caskfile | grep -v "#")
brew cask cleanup

# Install node modules
npm install -g npm
npm install -g $(cat NpmFile | grep -v "#")

# Install gems
sudo gem install cocoapods

rsync -av . --exclude .git/ --exclude "*.sh"  --exclude Readme.md  --exclude "*file" ~
source ~/.bash_profile

./os_x.sh 
