#!/bin/bash

rm "$HOME/.config/waybar/style.css" "$HOME/.config/waybar/config.jsonc"

cp -f "$HOME/.config/waybar/alternatives/FlatSquare/config.jsonc" "$HOME/.config/waybar"
cp -f "$HOME/.config/waybar/alternatives/FlatSquare/style.css" "$HOME/.config/waybar"


pkill waybar
sleep 0.2
waybar &
