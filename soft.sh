#!/bin/sh
cd ~
sudo pacman -Syyu
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
rm -rf ~/.yay
yay -Syyu
yay -S brightnessctl
yay -S python-pulsectl-asyncio
yay -S ttf-noto-nerd
yay -S zsh
yay -S zoxide
yay -S fzf
yay -S neovim
yay -S firefox
