#!/usr/bin/env bash

read -sp "Enter your password : " password

echo

echo "Changing current directory to tmp"

cd /tmp

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si --noconfirm

yay -Y --sudoloop --save

echo "Updating Yay packages"

yay -Syu --noconfirm

echo "Installing fish shell"

yay -S fish --noconfirm

echo "$password" | chsh -s /usr/bin/fish
