#!/bin/bash

# !! DO NOT run as root !!
#
# Assuming you got this script by setting up git and/or gh
# Also assuming you're running this from the ~/dev/moredots directory

# add current user to sudoers
me=$(whoami)
sudo echo -e "\n# No password sudo\n$me ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers.d/usernopass 1>/dev/null

# get stuff
sudo apt install fish kitty tmux gh

# make home directories
mkdir ~/gamedev
mkdir ~/notes

# nano default GTFO
update-alternatives --config editor

# put dots in .config locations
fish dodots pull

# put nvim 0.11 in /usr/local dirs
sudo chown -R $me:$me /usr/local
cp -R ~/dev/moredots/nvim_011/bin/nvim /usr/local/bin/nvim
cp -R ~/dev/moredots/nvim_011/lib/nvim /usr/local/lib/nvim
cp -R ~/dev/moredots/nvim_011/share/nvim /usr/local/share/nvim

# pull and set my nvim kickstart config
git clone https://github.com/BGuerrero825/kickstart.nvim.git ~/.config/nvim

# set git identity
git config --global user.name "babu"
git config --global user.email "bguerrero825@gmail.com"

