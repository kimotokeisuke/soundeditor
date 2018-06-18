#!/bin/sh
cd `dirname $0`
mkdir highpass_200hz
find . -maxdepth 1 -name "*.wav" | sed "s/\(.*\).wav/sox \"\1.wav\" \".\/highpass_200hz\/\1.wav\" highpass 200/" | sh