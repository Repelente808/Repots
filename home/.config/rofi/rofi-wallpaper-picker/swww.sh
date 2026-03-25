]#!/usr/bin/bash

WALLPAPER_DIR="$HOME/Wallpapers/"
IMAGE_PICKER_CONFIG="$HOME/.config/rofi/rofi-wallpaper-picker/image-picker.razi"
WALLPAPER_FILES=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \))
CURRENT_WALLPAPER_FILE=$(basename "$(swww query | awk '{print $NF}')")
ROFI_MENU=""

while IFS= read -r WALLPAPER_PATH; do
  WALLPAPER_NAME=$(basename "$WALLPAPER_PATH")
  if [[ "$WALLPAPER_NAME" == "$CURRENT_WALLPAPER_FILE" ]]; then
    ROFI_MENU+="${WALLPAPER_NAME} (current)\0icon\x1f${WALLPAPER_PATH}\n"
  else
    ROFI_MENU+="${WALLPAPER_NAME}\0icon\x1f${WALLPAPER_PATH}\n"
  fi
done <<<"$WALLPAPER_FILES"

SELECTED_WALLPAPER=$(echo -e "$ROFI_MENU" | rofi -dmenu \
  -p "Select Wallpaper:" \
  -theme "$IMAGE_PICKER_CONFIG" \
  -markup-rows)

SELECTED_WALLPAPER_NAME=$(echo "$SELECTED_WALLPAPER" | sed 's/ (current)//')

if [[ -n "$SELECTED_WALLPAPER_NAME" ]]; then
  # Caminho completo do wallpaper selecionado
  pkill hyprlax
  FULL_PATH=$(find "$WALLPAPER_DIR" -name "$SELECTED_WALLPAPER_NAME" -print -quit)
  pw-play --volume=0.2 ~/.config/swaync/swww.wav &
  matugen image "$FULL_PATH" -m dark --source-color-index 0 --type scheme-content
  awww img "$FULL_PATH" --transition-type any --transition-duration 2 --transition-fps 60 && sleep 2
  FLAG="$HOME/.cache/hyprlax_enabled"
  pkill hyprlax # Garante que a instância antiga morra sempre

  if [ -f "$FLAG" ]; then
    hyprlax "$FULL_PATH" & 
  fi

  cp "$FULL_PATH" "$HOME/.config/hypr/hyprlock_assets/current_wallpaper.jpg"

  swaync-client -R && swaync-client -rs
  cp ~/.cache/wal/cava-config ~/.config/cava/config
  pkill swayosd-server
  GSK_RENDERER=cairo swayosd-server &
  pkill -USR2 cava
fi
