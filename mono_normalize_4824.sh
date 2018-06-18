#!/bin/sh
cd `dirname $0`
mkdir mono_n_48000_24
find . -maxdepth 1 -name "*.wav" | sed "s/\(.*\).wav/sox \"\1.wav\" -c 1 -r 48000 -b 24 \".\/mono_n_48000_24\/\1.wav\" gain -n/" | sh