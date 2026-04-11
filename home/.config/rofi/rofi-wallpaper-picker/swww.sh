#!/usr/bin/bash

WALLPAPER_DIR="$HOME/Wallpapers/"
WALLPAPER_FILES=$(find "$WALLPAPER_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \))
CURRENT_WALLPAPER_FILE=$(basename "$(swww query | awk '{print $NF}')")
ROFI_MENU=""

while IFS= read -r WALLPAPER_PATH; do
  [ -z "$WALLPAPER_PATH" ] && continue
  WALLPAPER_NAME=$(basename "$WALLPAPER_PATH")
  if [[ "$WALLPAPER_NAME" == "$CURRENT_WALLPAPER_FILE" ]]; then
    ITEM="${WALLPAPER_NAME} (current)\0icon\x1f${WALLPAPER_PATH}"
  else
    ITEM="${WALLPAPER_NAME}\0icon\x1f${WALLPAPER_PATH}"
  fi

  if [[ -z "$ROFI_MENU" ]]; then
    ROFI_MENU="$ITEM"
  else
    ROFI_MENU+="\n$ITEM"
  fi
done <<<"$WALLPAPER_FILES"

SELECTED_WALLPAPER=$(echo -e "$ROFI_MENU" | rofi -dmenu \
  -display-dmenu "WALLPAPERS"
 -p "Select:" \
  -show-icons \
  -markup-rows)


SELECTED_WALLPAPER_NAME=$(echo "$SELECTED_WALLPAPER" | sed 's/ (current)//')

if [[ -n "$SELECTED_WALLPAPER_NAME" ]]; then
  pkill hyprlax

  FULL_PATH=$(find "$WALLPAPER_DIR" -name "$SELECTED_WALLPAPER_NAME" -print -quit)

 
  pw-play --volume=0.2 ~/.config/swaync/swww.wav &
  matugen image "$FULL_PATH" -m dark --source-color-index 0 --type scheme-content
  awww img "$FULL_PATH" --transition-type any --transition-duration 2 --transition-fps 60


  cp "$FULL_PATH" "$HOME/.config/hypr/hyprlock_assets/current_wallpaper.jpg"
  swaync-client -R && swaync-client -rs
  cp ~/.cache/wal/cava-config ~/.config/cava/config
  pkill swayosd-server
  GSK_RENDERER=cairo swayosd-server &
  pkill -USR2 cava
  FLAG="$HOME/.cache/hyprlax_enabled" && sleep 2
  if [ -f "$FLAG" ]; then
    hyprlax "$FULL_PATH" &
  fi
fi
