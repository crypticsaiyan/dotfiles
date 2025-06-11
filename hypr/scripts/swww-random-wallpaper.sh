#!/bin/bash

LOCKFILE="/tmp/swww_wallpaper_lock"
LASTFILE="/tmp/swww_last_wallpaper"
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Prevent running if transition in progress
if [ -f "$LOCKFILE" ]; then
  echo "Transition in progress, skipping..."
  exit 0
fi

touch "$LOCKFILE"

# Get last wallpaper (if any)
LAST_WALLPAPER=""
if [ -f "$LASTFILE" ]; then
  LAST_WALLPAPER=$(cat "$LASTFILE")
fi

# Pick a random wallpaper different from last
while true; do
  NEW_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
  if [ "$NEW_WALLPAPER" != "$LAST_WALLPAPER" ]; then
    break
  fi
done

# Set wallpaper with very fast transition
swww img "$NEW_WALLPAPER" --transition-type any --transition-fps 165 --transition-duration 1

# Save new wallpaper path
echo "$NEW_WALLPAPER" > "$LASTFILE"

# Wait a bit less (adjust if needed)
sleep 1

rm -f "$LOCKFILE"

