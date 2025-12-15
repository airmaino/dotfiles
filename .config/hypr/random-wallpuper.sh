#!/bin/bash

WALLDIR="/home/civr/pctrs/wallpupers/"
SOCKET="/tmp/hypr/.hyprpaper.sock"

OLD=$(hyprctl hyprpaper listactive | awk '{print $2}')

NEW=$(find "$WALLDIR" -type f | shuf -n 1)

hyprctl hyprpaper preload "$NEW"

hyprctl hyprpaper wallpaper ",$NEW"

if [ -n "$OLD" ] && [ "$OLD" != "$NEW" ]; then
    hyprctl hyprpaper unload "$OLD"
fi
