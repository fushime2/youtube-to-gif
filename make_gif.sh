#!/bin/bash

if [ $# != 5 ]; then
    echo "Usage:"
    echo "bash make_gif.sh <youtube_url> <fps> <start_time(second)> <duration(second)> <output name>"
    exit 1
fi

fps=$2
stt=$3
dur=$4
size=430
vname="_a.mp4"

youtube-dl -f "mp4" -o $vname $1
ffmpeg -loglevel warning -ss $stt -t $dur -y -i $vname -vf "fps=$fps,scale=$size:-1:flags=lanczos,palettegen" palette.png
ffmpeg -loglevel warning -ss $stt -t $dur -y -i $vname -i palette.png \
    -filter_complex "fps=$fps,scale=$size:-1:flags=lanczos[x];[x][1:v]paletteuse" $5

rm palette.png
rm $vname
