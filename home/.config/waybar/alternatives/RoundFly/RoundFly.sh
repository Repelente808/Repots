#!/bin/bash


rm "$HOME/.config/waybar/style.css" "$HOME/.config/waybar/config.jsonc"

cp -f "$HOME/.config/waybar/alternatives/RoundFly/config.jsonc" "$HOME/.config/waybar"
cp -f "$HOME/.config/waybar/alternatives/RoundFly/style.css" "$HOME/.config/waybar"

pkill waybar
sleep 0.2
waybar &
echo "Changed to flatRound"
