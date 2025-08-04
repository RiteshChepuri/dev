
nmcli device wifi connect "Name" password "password"

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

yay -Syu

yay -S fish --noconfirm

chsh -s /usr/bin/fish

reboot
