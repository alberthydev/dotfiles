#!/bin/bash

if ! command -v yay &> /dev/null; then
  echo "installing yay..."
  git clone https://aur.archlinux.org/yay.git
  cd yay && makepkg -si && cd ..
  rm -rf yay
fi

echo "yay -> packages.yay"
yay -S --needed --noconfirm $(< packages.yay)

echo "applying dotfiles..."
cd ~/dotfiles
stow --adopt *

echo "done!"
