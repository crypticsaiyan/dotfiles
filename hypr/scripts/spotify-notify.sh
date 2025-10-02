#!/bin/bash

CACHE_DIR="/tmp/spotify-notify"
mkdir -p "$CACHE_DIR"

last_title=""
last_artist=""

playerctl --player=spotify metadata --follow | while read -r; do
  title=$(playerctl --player=spotify metadata xesam:title)
  artist=$(playerctl --player=spotify metadata xesam:artist)
  art_url=$(playerctl --player=spotify metadata mpris:artUrl)

  # Only notify if track actually changed
  if [[ "$title" != "$last_title" || "$artist" != "$last_artist" ]]; then
    # Download cover art if URL is HTTP(S)
    if [[ "$art_url" =~ ^https?:// ]]; then
      art_file="$CACHE_DIR/cover.jpg"
      curl -sL "$art_url" -o "$art_file"
      notify-send -i "$art_file" "Now Playing" "$title — $artist"
    else
      notify-send -i spotify "Now Playing" "$title — $artist"
    fi

    last_title="$title"
    last_artist="$artist"
  fi
done
