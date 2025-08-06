# dotfiles

## setup

clone the repository and execute install.sh:

```zsh
git clone git@github.com:seunome/dotfiles.git ~/dotfiles
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

## apple cursor :apple:
I really like the style of the apple cursor on macOS. On arch, there's a package called ```apple_cursor``` available in the AUR. You can install it using ```yay``` like this:

```zsh
yay -S apple_cursor
```
after installing the package, you can change the system-wide cursor theme by editing the ```index.theme``` file in the ```/usr/share/icons/default/ directory```. Open it with:

```zsh
sudoedit /usr/share/icons/default/index.theme
```

then add the following at the top of the file:

```ini
[Icon Theme]
Inherits=macOS
```

## fonts

- [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip)
- [MesloLG Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip)
- [CaskaydiaMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaMono.zip)

install this using the arch wiki about fonts 

[fonts](https://wiki.archlinux.org/title/Fonts)

## wallpapers

I use wallpapers from [gruvbox](https://gruvbox-wallpapers.pages.dev/), here in this repo, I save what I'm currently using
