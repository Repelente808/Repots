#!/bin/bash

F1="Pixel Code"
S1="14"
F2="Google Sans"
S2="14"

WAYBAR_CSS=("$HOME/.config/waybar/style.css")
WAYBAR_CSS+=("$HOME/.config/waybar/alternatives/FlatRound/style.css")
WAYBAR_CSS+=("$HOME/.config/waybar/alternatives/FlatSquare/style.css")
WAYBAR_CSS+=("$HOME/.config/waybar/alternatives/FloatingLeft/style.css")
WAYBAR_CSS+=("$HOME/.config/waybar/alternatives/LeftFlat/style.css")
WAYBAR_CSS+=("$HOME/.config/waybar/alternatives/RoundFly/style.css")
WAYBAR_CSS+=("$HOME/.config/waybar/alternatives/RoundSquareFly/style.css")

SWAYNC_FILES=(
    "$HOME/.config/swaync/themes/nova-dark/central_control.css"
    "$HOME/.config/swaync/themes/nova-dark/notifications.css"
)
ROFI_CONFIG="$HOME/.config/rofi/themes/template/rounded-template.rasi"
KITTY_CONF="$HOME/.config/kitty/kitty.conf"
HYPRLOCK_CONF="$HOME/.config/hypr/hyprlock.conf"
WLOGOUT_CSS="$HOME/.config/wlogout/style.css"

CURRENT_FONT=$(grep "font-family:" "$WAYBAR_CSS" | head -n 1 | cut -d'"' -f2)

if [ "$CURRENT_FONT" == "$F1" ]; then
    NEW_FONT=$F2
    SIZE=$S2
else
    NEW_FONT=$F1
    SIZE=$S1
fi

echo "changing to: $NEW_FONT"

# --- Waybar ---
for file in "${WAYBAR_CSS[@]}"; do
    if [ -f "$file" ]; then
        sed -i "s/font-family: .*;$/font-family: \"$NEW_FONT\";/" "$file"
        sed -i "s/font-size: .*;$/font-size: ${SIZE}px;/" "$file"
    fi
done
    pkill -USR2 waybar
fi

# --- SwayNC ---
for file in "${SWAYNC_FILES[@]}"; do
    if [ -f "$file" ]; then
        sed -i "s/font-family: .*;$/font-family: \"$NEW_FONT\";/" "$file"
    fi
done
swaync-client -R && swaync-client -rs

# --- Rofi ---
if [ -f "$ROFI_CONFIG" ]; then
    sed -i "s/^[[:space:]]*font:.*;/    font: \"$NEW_FONT $SIZE\";/" "$ROFI_CONFIG"
fi

# --- Kitty ---
if [ -f "$KITTY_CONF" ]; then
    sed -i "s/^font_family .*/font_family $NEW_FONT/" "$KITTY_CONF"
    sed -i "s/^font_size .*/font_size $SIZE/" "$KITTY_CONF"
    kill -USR1 $(pgrep kitty) 2>/dev/null
fi

# --- Hyprlock ---
if [ -f "$HYPRLOCK_CONF" ]; then
    sed -i "s/font_family = .*/font_family = $NEW_FONT/g" "$HYPRLOCK_CONF"
fi

# --- Wlogout ---
if [ -f "$WLOGOUT_CSS" ]; then
    sed -i "s/font-family: .*;$/font-family: \"$NEW_FONT\";/" "$WLOGOUT_CSS"
fi
