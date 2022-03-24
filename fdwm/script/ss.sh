#!/bin/bash

function ss {
	options="upload\nsave\ncopy\ncancel"
	selected=$(echo -e $options | dmenu)
	if [[ $selected =  "upload" ]]; then
		captureDate=$(date '+%d-%m-%y-%H:%M:%S')
		maim --select /tmp/${captureDate}.png
		curl -F file=@/tmp/${captureDate}.png https://0x0.st | grep -o 'http[s]*:[^"]*' | tr -d '\n' |xclip -sel c
	elif [[ $selected = "save" ]]; then
		ssDate=$(date '+%d-%m-%y-%H:%M:%S')
		maim --select ~/Pictures/ss/$ssDate.png
	elif [[ $selected = "copy" ]]; then
		maim --select | xclip -sel c -t image/png
	elif [[ $selected = "cancel" ]]; then
		return
	fi
}


ss
