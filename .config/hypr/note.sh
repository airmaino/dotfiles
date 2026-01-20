#!/bin/bash

NOTES_DIR="$HOME/v/ezh/daylik/"

DATE=$(date +%y-%m-%d)
NOTE_FILE="$NOTES_DIR/$DATE.md"

TEMPLATE="$HOME/v/.tmp/daily.md"

if [ ! -f "$NOTE_FILE" ]; then
	cp "$TEMPLATE" "$NOTE_FILE"
fi

nvim "$NOTE_FILE"
