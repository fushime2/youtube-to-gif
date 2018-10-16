# y2g

This is a shellscript for generaring a GIF image from YouTube videos with youtube-dl and ffmpeg.

## Requirements

- [youtube-dl](https://github.com/rg3/youtube-dl)
- [ffmpeg](https://www.ffmpeg.org/)

To install in Ubuntu 18.04:

    sudo -H pip3 install --upgrade youtube-dl
    sudo apt-get install ffmpeg

## Usage

    bash make_gif.sh <youtube_url> <fps> <start_time(second)> <duration(second)> <output_name>

For example:

    bash make_gif.sh https://www.youtube.com/watch?v=EKKVN-fmAx0 16 7 7 out.gif
    
Then, *out.gif* will be generated.

![out.gif](out.gif)
