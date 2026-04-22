#!/bin/bash

# !! DO NOT run as root !!
#
# Assuming you got this script by already setting up git and/or gh
mkdir ~/dev
cd ~/dev

# add current user to sudoers
me=$(whoami)
sudo echo -e "\n# No password sudo\n$me ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/usernopass 1>/dev/null

# get stuff
sudo apt install git fish kitty tmux gh gcc fzf 
# LSPs
sudo apt install python3-pylsp clang clangd
# others TBD...

# TODO untar and link included binaries
# helix
# zig
# zls
# others TBD...

# make home directories
mkdir ~/gamedev
mkdir ~/notes

# pull and put dots in .config locations
fish ~/dev/moredots/dodots.fish pull

# set git identity
git config --global user.name "babu"
git config --global user.email "bguerrero825@gmail.com"

# nano default GTFO
sudo update-alternatives --config editor
 
