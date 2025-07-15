#!/bin/bash

while true; do
  capacity=$(cat /sys/class/power_supply/BAT1/capacity)
  if [ "$capacity" -lt 20 ]; then
    mpv --no-terminal --quiet ~/.config/hypr/scripts/notification-sound.mp3
  fi
  sleep 30
done
