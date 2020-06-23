#!/usr/bin/env bash

FILES=$(find . -name "*.mp3")

for FILE in "$FILES"
do
    DIR=$(dirname "$FILE")
    TARGET=$(echo $DIR | sed -e "s/Todo/Done/")
    ORIG=$(echo $DIR | sed -e "s/Todo/Originals/")
    NAME=$(basename "$FILE")
    echo "Transform $NAME from $DIR to $TARGET and move original to $ORIG"
    echo "Creating target and originals folders"
    mkdir -p $TARGET
    mkdir -p $ORIG
    ffmpeg -i "$FILE" -codec:a libmp3lame -b:a 128k "$TARGET/$NAME" \
        && mv "$FILE" "$ORIG/$NAME"
done
exit 0
