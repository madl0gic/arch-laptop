#!/bin/bash

fonts_dir="$HOME/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

cd
cd univ/fonts
7z x Hack-NerdFont.7z
7z x JetBrainsMono.7z
mv *.ttf ~/.local/share/fonts

fc-cache -fv
