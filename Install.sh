#!/bin/bash

#####
# Setting up Paru
#####
sudo pacman -S --noconfirm git
git clone https://aur.archlinux.org/paru-bin
cd paru-bin/
makepkg -si
cd ..

#####
# Default Packages
#####
paru -S --noconfirm nemo nautilus wofi kitty vscode all-repository-fonts maplemono-ttf pamixer nwg-look papirus-folders papirus-icon-theme hyfetch adw-gtk-theme wofi-power-menu power-profiles-daemon ufw xdg-user-dirs

#####
# Refreshing Fonts and Folders
#####
fc-cache -f -v
xdf-user-dirs-update

#####
# Folder Icons Setup
#####
papirus-folders -C black

#####
# Activating systemctl
#####
sudo systemctl enable --now iwd
sudo systemctl enable --now ufw

#####
# Copying Stuff
#####
cp -a dotfiles/. ~/.config/
cp -a pictures/. ~/Pictures/

#####
# Clean up files
#####
cd ..
rm -rf sway/

#####
# Regular programs
#####
paru -S --noconfirm discord spotify firefox 
