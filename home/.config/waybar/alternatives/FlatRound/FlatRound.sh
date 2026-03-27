#!/bin/bash

rm "/home/repelente808/.config/waybar/style.css" "/home/repelente808/.config/waybar/config.jsonc"

cp -f "/home/repelente808/.config/waybar/alternatives/FlatRound/config.jsonc" "/home/repelente808/.config/waybar"
cp -f "/home/repelente808/.config/waybar/alternatives/FlatRound/style.css" "/home/repelente808/.config/waybar"

pkill waybar
sleep 0.2
waybar &
