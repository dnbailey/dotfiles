#!/usr/bin/env bash

declare DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/shell/.aliases" ~
ln -sfv "$DOTFILES_DIR/shell/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/shell/.bash_prompt" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
