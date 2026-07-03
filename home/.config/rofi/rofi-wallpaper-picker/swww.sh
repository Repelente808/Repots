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
  -display-dmenu "WALLPAPERS" \
  -p "Select:" \
  -show-icons \
  -markup-rows)

SELECTED_WALLPAPER_NAME=$(echo "$SELECTED_WALLPAPER" | sed 's/ (current)//')

if [[ -n "$SELECTED_WALLPAPER_NAME" ]]; then
  pkill hyprlax

  FULL_PATH=$(find "$WALLPAPER_DIR" -name "$SELECTED_WALLPAPER_NAME" -print -quit)

  MONITOR_LIST=$(hyprctl monitors -j | jq -r '.[] | .name')
  MONITOR_COUNT=$(echo "$MONITOR_LIST" | wc -l)

  if [ "$MONITOR_COUNT" -eq 1 ]; then
    SELECTED_MONITOR="$MONITOR_LIST"
  else
    ROFI_MONITOR_MENU="ALL\n$MONITOR_LIST"
    SELECTED_MONITOR=$(echo -e "$ROFI_MONITOR_MENU" | rofi -dmenu \
      -display-dmenu "MONITORS" \
      -p "Apply to:" \
      -lines 4)

    if [[ -z "$SELECTED_MONITOR" ]]; then
      exit 0
    fi
  fi

  if [[ "$SELECTED_MONITOR" == "ALL" ]]; then
    OUTPUT_ARG=""
  else
    OUTPUT_ARG="-o $SELECTED_MONITOR"
  fi
  
  matugen image "$FULL_PATH" -m dark --source-color-index 0 --type scheme-content
  
  awww img "$FULL_PATH" $OUTPUT_ARG --transition-type outer --transition-duration 1.2 --transition-fps 144 --transition-pos $(awk 'BEGIN {srand(); printf "%.2f,%.2f\n", rand(), rand()}')
  
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
