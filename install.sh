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

echo "applying wallpapers"
SOURCE_FOLDER="walls"
DEST="$HOME/.config/$SOURCE_FOLDER"

if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "folder '$SOURCE_FOLDER' not found in current directory."
    exit 1
fi

mkdir -p "$HOME/.config"

if [ -d "$DEST" ]; then
    read -p "'$DEST' already exists. overwrite? (y/n): " choice
    if [[ "$choice" != "y" ]]; then
        echo "aborted."
        exit 1
    fi
    rm -rf "$DEST"
fi

mv -r "$SOURCE_FOLDER" "$DEST"
echo "'$SOURCE_FOLDER' copied to '$DEST'."

echo "done!"
