#!/bin/bash

# Check if the operating system type is Linux
if [[ $(uname) != "Linux" ]]; then
  echo "Error: This script is meant for Linux systems only." >> linuxsetup.log
  exit 1
fi

# Create the .TRASH directory
if [[ ! -d ~/".TRASH" ]]; then
  mkdir ~/".TRASH"
fi

# Change the name of .vimrc to .bup_vimrc
if [[ -f ~/".vimrc" ]]; then
  mv ~/".vimrc" ~/".bup_vimrc"
  echo "The .vimrc file was changed to '.bup_vimrc'." >> linuxsetup.log
fi

# Move /etc/vimrc to a file called .vimrc in home
cat  ./etc/vimrc > ~/.vimrc

# Add the statement to the end of .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

