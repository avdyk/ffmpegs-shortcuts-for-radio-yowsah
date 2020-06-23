#!/usr/bin/env bash

DIR=$(dirname "$1")
OUTPUT=$(basename "$1" | sed -e "s/.mp3/.txt/")
ffmpeg -i "$1" -af "volumedetect" -vn -sn -dn -f null /dev/null 2> "$DIR/$OUTPUT"
