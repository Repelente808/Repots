#!/bin/bash

SHADER="~/.config/hypr/scripts/frag.frag"

CURRENT_SHADER=$(hyprctl getoption decoration:screen_shader -j | jq -r '.str')

if [ "$CURRENT_SHADER" == "$SHADER" ]; then
    hyprctl keyword decoration:screen_shader ''
else
    hyprctl keyword decoration:screen_shader "$SHADER"
fi
