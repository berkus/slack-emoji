#!/bin/sh
# getemoji

while read url; do
    echo $url
    TEAMNAME=$(echo $url | awk -F'/' '{print $3}' | cut -d . -f 1)
    BASENAME=$(echo $url | awk -F'/' '{print $5}')
    EXTNAME="${url##*.}"
    wget "$url" -O "emoji/$TEAMNAME-$BASENAME.$EXTNAME" -o /dev/null
done < "allemoji.txt"
