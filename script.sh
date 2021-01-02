#!/bin/bash
cd input
formats=("*.TS" "*.mov" "*.avi" "*.mp4" "*.webm" "*.m4v" "*.mvw")
for i in ${formats[@]};
do
  echo "Processing $i file..";
  ffmpeg -i "$i" "../output/${i%.*}.mp4";
done
