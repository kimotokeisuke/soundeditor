#!/bin/sh
cd `dirname $0`
mkdir stereo_n_4824
find . -maxdepth 1 -name "*.wav" | sed "s/\(.*\).wav/sox \"\1.wav\" -c 2 -r 48000 -b 24 \".\/stereo_n_4824\/\1.wav\" gain -n/" | sh