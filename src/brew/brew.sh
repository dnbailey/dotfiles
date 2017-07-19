#!/bin/sh

# Install Homebrew if not present
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap caskroom/cask
  echo "  Installed Homebrew and Cask."
else
  echo "Updating Homebrew and loading apps..."
  # Use latest version of Homebrew
  brew update

  # Upgrade anything already installed
  brew upgrade

  brew install coreutils

  # Install via curl to get bash prompt
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

  # Install Node via nvm
  nvm install node

  brew cask install atom
  brew cask install github-desktop
  brew cask install fritzing
fi
