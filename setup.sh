#!/usr/bin/bash


# update submodules
echo "Updating submodules"
git submodule update --remote --init --recursive

# setup zsh dot folder
dotExport="# directory with plugins\nexport ZSH_DOT_DIR=$PWD"
echo -e "$dotExport\n\n$(cat .zshrc_base)" > .zshrc

GREEN='\033[0;32m'
bold=$(tput bold)
normal=$(tput sgr0)

# backup .zshrc
ZSH_BACKUP_FILE=~/.zshrc.prev
echo -e "${GREEN}Backing up your .zshrc"
echo -e "${GREEN}It will be saved to $bold $ZSH_BACKUP_FILE$normal"
mv ~/.zshrc $ZSH_BACKUP_FILE

# backup starship config
STARSHIP_BACKUP_FILE=~/.config/starship.toml.prev
echo -e "${GREEN}Backing up your starship.toml"
echo -e "${GREEN}It will be saved to $bold $STARSHIP_BACKUP_FILE$normal"
mv ~/.config/starship.toml $STARSHIP_BACKUP_FILE

# symlink to starship config

# symlink to .zshrc
echo "Creating symlink to .zshrc"
ln -s $PWD/.zshrc ~/.zshrc
# symlink to starship.toml
echo "Creating symlink to starship.toml"
ln -s $PWD/starship.toml ~/.config/starship.toml
