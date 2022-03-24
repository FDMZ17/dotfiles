#!/bin/bash

function ss {
	options="upload\nsave\ncopy\ncancel"
	selected=$(echo -e $options | dmenu)
	if [[ $selected =  "upload" ]]; then
		captureDate=$(date '+%d-%m-%y-%H:%M:%S')
		maim --select /tmp/${captureDate}.png
		curl -F file=@/tmp/${captureDate}.png -F 'key=linux_9ce5479100f24a04b6758d728face1c206522cd656328de92ca07b86b77482f1' https://cdn.fdmz17.eu.org/upload | grep -o 'http[s]*:[^"]*' | tr -d '\n' |xclip -sel c
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
