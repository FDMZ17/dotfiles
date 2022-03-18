#!/bin/sh

# echo "$(xclip -o)" | tr -d '' >> ~/.clip_list
echo "$(date '+%d-%m-%y | %H:%M') | $(xclip -o)" | tr -d '' >> ~/.clip_list
