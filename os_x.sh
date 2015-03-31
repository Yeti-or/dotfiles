#!/usr/bin/env bash

# Enable 3-finger drag. (Moving with 3 fingers in any window "chrome" moves the window.)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
