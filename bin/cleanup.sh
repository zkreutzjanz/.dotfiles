#!/bin/bash

# Remove the .vimrc file
rm ~/.vimrc

# Remove the last line from .bashrc

sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc

# Remove the .TRASH directory
rm -rf ~/.TRASH

