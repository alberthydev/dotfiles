# dotfiles

## setup

clone the repository and execute install.sh:

```zsh
git clone git@github.com:seunome/dotfiles.git ~/dotfiles
cd ~/dotfiles
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
