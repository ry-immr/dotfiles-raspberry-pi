#!/bin/bash

DOTFILES_PATH="$HOME/dotfiles"

git clone git@github.com:ry-immr/dotfiles-raspberry-pi.git "$DOTFILES_PATH"

cd "$DOTFILES_PATH"
if [ $? -ne 0 ]; then
    die "not found: $DOTFILES_PATH"
fi

source link.sh
