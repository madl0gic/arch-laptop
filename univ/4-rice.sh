#!/bin/bash

# Rice
cd
cd univ/
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
cp optional/.bashrc ~/
cp optional/.vimrc ~/
cp optional/.inputrc ~/
cp config/.fehbg ~/
chmod +x ~/.config/i3/autostart.sh
chmod +x ~/.config/i3/scripts/*

-----------------------------------------------
cd
cd univ/
source optional/keyboard_layout.sh
source optional/default_apps.sh
