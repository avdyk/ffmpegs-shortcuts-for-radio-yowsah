#!/usr/bin/env bash

DB=$2
DIR=$(dirname "$1")
OUTPUT=$(basename "$1" | sed -e "s/.mp3/-$DB.mp3/")
ffmpeg -i "$1" -af "volume=$DB" "$DIR/$OUTPUT"
