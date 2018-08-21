#!/bin/bash

input="$1"
output="$2"

#if [ -f "$1" -a -f "$2" ]; then
        echo "start"
        ffmpeg -i "$input" -c copy -bsf:a aac_adtstoasc  "$output" 
#fi
exit

