#!/bin/bash

while true; do
  status=$(cat /sys/class/power_supply/BAT1/status)
  capacity=$(cat /sys/class/power_supply/BAT1/capacity)
  if [ "$capacity" -lt 20 ] && [ "$status" != "Charging" ]; then
    mpv --no-terminal --quiet ~/.config/hypr/scripts/notification-sound.mp3
  fi
  sleep 30
done
