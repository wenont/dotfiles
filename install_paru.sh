#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "git could not be found, installing it now"
    sudo pacman -S --noconfirm git
fi

# Check if paru is installed
if command -v paru &> /dev/null
then
    echo "paru is already installed"
    exit 0
fi

# Install paru
echo "installing paru"
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru
