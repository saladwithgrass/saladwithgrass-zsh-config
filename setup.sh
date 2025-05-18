#!/usr/bin/bash

# update submodules
echo "Updating submodules"
git submodule update --remote --init --recursive

# backup .zshrc
BACKUP_FILE=~/.zshrc.prev
echo "Backing up your .zshrc"
echo "It will be saved to $BACKUP_FILE"
mv ~/.zshrc $BACKUP_FILE

# symlink to .zshrc
echo "Creating symlink to .zshrc"
ln -s $PWD/.zshrc ~/.zshrc
