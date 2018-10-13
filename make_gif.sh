#!/bin/bash

if [ $# != 4 ]; then
    echo "Usage:"
    echo "bash youtube_to_gif.sh <youtube_url> <start_time(second)> <duration(second)> <output name>"
    exit 1
fi

youtube-dl -o "a.mp4" $1
ffmpeg -v warning -ss $2 -t $3 -i a.mp4 -vf scale=300:-1 -gifflags +transdiff -y $4
rm a.mp4
