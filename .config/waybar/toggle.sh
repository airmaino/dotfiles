#!/bin/sh

if pgrep -x waybar >/dev/null; then
	killall waybar
	for m in $(hyprctl monitors -j | jq -r '.[].name'); do
		hyprctl keyword monitor "$m",addreserved 0 0 0 0
	done
else
	waybar & disown
	for m in $(hyprctl monitors -j | jq -r '.[].name'); do
		hyprctl keyword monitor "$m",addreserved 40 0 0 0
	done
fi
