#!/usr/bin/env bash

cd /tmp

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si --noconfirm

yay -Syu --noconfirm

yay -S fish --noconfirm

chsh -s /usr/bin/fish

reboot
