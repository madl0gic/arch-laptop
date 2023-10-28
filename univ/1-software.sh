#!/bin/bash

PKGS=(
    # Section 2: Window Manager Tools
    'i3'                     # Tiling window manager
    'rofi'                   # Application launcher
    'dmenu'                  # Dynamic menu
    'i3blocks'               # Status bar
    'dunst'                  # Notification daemon
    'libnotify'              # Notification library
    'picom'                  # Compositor
    'kitty'                  # Terminal emulator
    'lxappearance'           # GTK+ theme switcher
    'wget'                   # File downloader
    'polkit-gnome'           # PolicyKit authentication agent
    'dosfstools'             # Managing FAT file systems
    'ntfs-3g'                # Managing NTFS file systems

    # Section 3: File Managers
    'vifm'                   # Terminal file manager
    'thunar'                 # File manager

    # Section 4: System Utilities
    'network-manager-applet' # Network manager applet
    'gparted'                # Partition editor
    'arandr'                 # Screen layout editor
    'htop'                   # System monitoring tool
    'dbus'                   # Message bus system

    # Section 5: Image and Media Tools
    'feh'                    # Image viewer and wallpaper setter
    'flameshot'              # Screenshot tool
    'sxiv'                   # Image viewer

    # Section 6: Keybindings and Utilities
    'sxhkd'                  # X hotkey daemon
    'numlockx'               # Num Lock status control
    'neovim'                 # hyperextensible Vim-based text editor

    # Section 7: Sound and Audio
    'pulseaudio'             # Sound server
    'alsa-utils'             # Sound utilities
    'pavucontrol'            # Sound mixer

    # Section 9: Compression and Archive Tools
    'unzip'                  # Zip file extractor
    'zip'                    # Zip file compressor
    'p7zip'                  # Zip file compressor
    'file-roller'            # Archive manager

    # Section 12: Other Tools and Libraries
    'galculator'             # Calculator
    'zathura-pdf-poppler'    # PDF viewer

    # Section 13: Miscellaneous Utilities
    'xfce4-power-manager'    # Power manager
    'exa'                    # Replacement for 'ls' command
    'xclip'                  # Command line interface to X selections

    # Section 14: Drivers
    'xf86-video-intel'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo apt install -y "$PKG"
done
