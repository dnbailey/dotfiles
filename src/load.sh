#!/usr/bin/env bash

# Get the directory of the script
declare DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Link to dotfiles\
ln -sfv "$DOTFILES_DIR/shell/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/shell/.aliases" ~
ln -sfv "$DOTFILES_DIR/shell/.bash_prompt" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
