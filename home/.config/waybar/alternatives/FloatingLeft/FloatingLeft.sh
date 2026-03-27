#!/bin/bash

rm "/home/repelente808/.config/waybar/style.css" "/home/repelente808/.config/waybar/config.jsonc"

cp -f "/home/repelente808/.config/waybar/alternatives/FloatingLeft/config.jsonc" "/home/repelente808/.config/waybar"
cp -f "/home/repelente808/.config/waybar/alternatives/FloatingLeft/style.css" "/home/repelente808/.config/waybar"

pkill waybar
sleep 0.2
waybar &
