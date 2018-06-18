#!/bin/sh
cd `dirname $0`
mkdir SE_edit
find . -maxdepth 1 -name "*.wav" | sed "s/\(.*\).wav/sox \"\1.wav\" -c 1 -r 48000 -b 24 \".\/highpass_200hz\/\1.wav\" highpass 200 gain -n/" | sh