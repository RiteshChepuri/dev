#!/usr/bin/env bash

yay -S wezterm zen-browser-bin bitwarden ghostty --noconfirm

yay -S bat lsd waybar deno blueberry nvim stow fd ripgrep fzf yazi starship zoxide lazygit tmux git-delta dunst github-cli sesh-bin brightnessctl --noconfirm

yay -S lua51-jsregexp cargo ruby composer php nodejs npm python-pip julia imagemagick jdk-openjdk --noconfirm

cd

git clone https://github.com/RiteshChepuri/dotfiles.git

rm -rf ~/.config/fish

rm -rf ~/.config/hypr

cd dotfiles

stow *

cd

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.tmux.conf

~/.tmux/plugins/tpm/bin/install_plugins

sudo systemctl enable bluetooth

sudo systemctl start bluetooth

reboot
