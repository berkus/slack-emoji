#!/bin/sh
# getemoji

while read url; do
    echo $url
    BASENAME=$(echo $url | awk -F'/' '{print $5}')
    EXTNAME="${url##*.}"
    wget "$url" -O "$BASENAME.$EXTNAME" -o /dev/null
done < "allemoji.txt"
