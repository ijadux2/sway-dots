#!/usr/bin/bash

echo ">>> requires sudo permitions"
sudo dnf install sway ranger fish rofi waybar kitty mako

echo ">>> sourcing dotfiles"
cp -r ./sway ./bat/ ./dconf/ ./fastfetch/ ./fish/ ./fontconfig/ ./kitty/ ./mako/ ./ranger/ ./rofi/ ./swaylock/ ./waybar/ ~/.config

echo "know you can customize your desktop"
