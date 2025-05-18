# My zsh config
Basic Starship config with autosuggestions and vi mode

# Thanks to these projects
* [zsh-vim-mode by softmoth](https://github.com/softmoth/zsh-vim-mode) 
* [zsh-syntax-highlighting by zsh-users](https://github.com/zsh-users/zsh-syntax-highlighting) 
* [zsh-autosuggestions by zsh-users](https://github.com/zsh-users/zsh-autosuggestions) 
* [Starship](https://github.com/starship/starship) 

# Requirements
* zsh as your shell
* Starship for zsh

# Installation

## zsh installation
First, install zsh and set as your shell.
Instructions here are for ArchLinux, you can find information for other distros [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) 
For Arch Linux
```
sudo pacman -S zsh
chsh -s $(which zsh)
```

## Starship Installation
Before using it you must install Starship. [Installation instructions](https://github.com/starship/starship).
> [!NOTE]
> You do not have to add shell initialization to your .*rc file, it already is in this repo.

## This repo installation
```bash
mv .zsh .zsh.bak # backup your .zsh folder if it exists
git clone https://github.com/saladwithgrass/my-zsh-config.git .zsh
cd .zsh
./setup.sh
```
After that you can restart your teminal.
