#!/usr/bin/env bash

load () {
  # Get the directory of the script
  declare DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  # Create symlinks
    ln -sfv "$DOTFILES_DIR/shell/.bash_profile" ~
    ln -sfv "$DOTFILES_DIR/shell/.aliases" ~
    ln -sfv "$DOTFILES_DIR/shell/.bash_prompt" ~
    ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~

  # Install Homebrew and Initiate Cask
  source $DOTFILES_DIR/brew/brew.sh

  unset DOTFILES_DIR
  break
}

update () {
  echo "Please authorize sudo "
  sudo softwareupdate -ia

  brew update
  brew upgrade
  break
}

PS3="Please make your selection: "
options=("Init" "Update" "Quit")
select opt in "${options[@]}"
do
  case $opt in
    "Init") load ;;
    "Update") update ;;
    "Quit") break ;;
    *) echo "Invalid option";;
  esac
done

