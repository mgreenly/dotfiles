#!/bin/bash


if [ -z "$STREAM_KEY" ]; then
  echo
  echo "The STREAM_KEY environment variable must be set."
  echo
  exit
fi

# aplay -l to find alsa device

#variable definitions
INRES="1920x1080" # input resolution
OUTRES="1920x1080" # output resolution
#OUTRES="1440x810" # output resolution
FPS="15" # target FPS
GOP="30" # i-frame interval, should be double of FPS,
GOPMIN="15" # min i-frame interval, should be equal to fps,
THREADS="2" # max 6
CBR="1300k" # constant bitrate (should be between 1000k - 3000k)
QUALITY="veryfast" # one of the many FFMPEG preset
AUDIO_RATE="44100"
#to hide logs use= -loglevel quiet
ffmpeg -f x11grab -s "$INRES" -r "$FPS" -i :0.0 -f alsa -i hw:3,0 -f flv -ac 2 -ar $AUDIO_RATE \
  -vcodec libx264 -keyint_min 3 -b:v $CBR -minrate $CBR -maxrate $CBR -pix_fmt yuv420p \
  -s $OUTRES -preset $QUALITY -acodec mp3 -threads $THREADS \
  -bufsize $CBR "rtmp://usmedia3.livecoding.tv:1935/livecodingtv/$STREAM_KEY"
