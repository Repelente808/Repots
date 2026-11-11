#!/usr/bin/env bash

killall -9 waybar
waybar &
killall -9 swaync
sleep 0.2
swaync &
pkill swayosd-server && swayosd-server &
