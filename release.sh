#!/bin/bash
git pull
cp -r $HOME/bin/* scripts/
cp -r $HOME/.config/rofi .
cp -r $HOME/.config/polybar .
cp -r $HOME/.config/i3 .
cp -r $HOME/.config/picom .
cp -r $HOME/.config/neofetch .
cp -r $HOME/.config/alacritty .
cp -r $HOME/.config/btop .
cp -r $HOME/.config/gtk-* .
cp -r $HOME/.config/ranger .
cp -r $HOME/Pictures/Wallpapers .
cp $HOME/.vimrc .
cp $HOME/.bashrc .
git add .
git commit -m "new release"
git push
