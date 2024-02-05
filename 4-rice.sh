#!/bin/bash

# Rice
cd
mkdir ~/.themes
mkdir ~/.icons
mkdir ~/phone_mount
cd arch-laptop/theme

tar xf Sunity-cursors.tar.gz
tar -xf Papirus-gray.tar.xz
tar -xf Graphite-Dark.tar.xz
cp -r Graphite-Dark ~/.themes
cp -r Papirus ~/.icons
cp -r Papirus-Dark ~/.icons
cp -r Sunity-cursors/ ~/.icons/

cd
cd arch-laptop/
cp -r config/wallpapers/ ~/.config
cp -r config/i3/ ~/.config
cp -r config/sxhkd/ ~/.config
cp -r config/scripts/ ~/.config
cp -r config/dunst/ ~/.config
cp -r config/rofi/ ~/.config
cp -r config/vifm/ ~/.config
cp -r config/i3blocks/ ~/.config
cp -r config/zathura/ ~/.config
cp -r config/kitty/ ~/.config
cp config/picom.conf ~/.config
cp config/ufetch /usr/local/bin/
cp -r optional/synth-shell ~/.config
cp optional/.bashrc ~/
cp optional/.inputrc ~/
cp config/.fehbg ~/
cp config/.tmux.conf ~/
cp -r scripts ~/
chmod +x ~/.config/i3/autostart.sh
chmod +x ~/.config/i3/scripts/*

cd
if [[ ! -d ~/.config/gtk-3.0 ]]; then
    sudo mkdir -p ~/.config/gtk-3.0
fi

cd arch-laptop/
sudo cp config/settings.ini ~/.config/gtk-3.0/
cp config/.gtkrc-2.0 ~/
-----------------------------------------------
cd
cd arch-laptop/
source optional/keyboard_layout.sh
source optional/nvim.sh
source optional/default_apps.sh
source optional/nvim-desktop.sh
