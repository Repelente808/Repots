#!/bin/bash

F1="Pixel Code"
S1="14"
F2="Google Sans"
S2="14"

WAYBAR_CSS="$HOME/.config/waybar/style.css"

SWAYNC_FILES=(
    "$HOME/.config/swaync/themes/nova-dark/central_control.css"
    "$HOME/.config/swaync/themes/nova-dark/notifications.css"
)

ROFI_CONFIG="$HOME/.config/rofi/themes/template/rounded-template.rasi"

CURRENT_FONT=$(grep "font-family:" "$WAYBAR_CSS" | head -n 1 | cut -d'"' -f2)

if [ "$CURRENT_FONT" == "$F1" ]; then
    NEW_FONT=$F2
    SIZE=$S2
else
    NEW_FONT=$F1
    SIZE=$S1
fi

echo "Alternando para: $NEW_FONT"

if [ -f "$WAYBAR_CSS" ]; then
    sed -i "s/font-family: .*;$/font-family: \"$NEW_FONT\";/" "$WAYBAR_CSS"
    sed -i "s/font-size: .*;$/font-size: ${SIZE}px;/" "$WAYBAR_CSS"
    pkill -USR2 waybar
fi

for file in "${SWAYNC_FILES[@]}"; do
    if [ -f "$file" ]; then
        sed -i "s/font-family: .*;$/font-family: \"$NEW_FONT\";/" "$file"
    fi
done
swaync-client -R && swaync-client -rs

if [ -f "$ROFI_CONFIG" ]; then
    sed -i "s/^[[:space:]]*font:.*;/    font: \"$NEW_FONT $SIZE\";/" "$ROFI_CONFIG"
fi
