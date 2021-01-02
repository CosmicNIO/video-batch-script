#!/bin/bash
cd input
for i in *.TS;
do
  echo "Processing $i file..";
  ffmpeg -i "$i" "../output/${i%.*}.mp4";
done
