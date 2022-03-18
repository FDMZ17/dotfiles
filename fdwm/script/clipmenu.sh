#!/bin/bash

function powermenu {
	options="list\nclear\ncancel"
	selected=$(echo -e $options | dmenu)
	if [[ $selected =  "list" ]]; then
		clipList=$(tac ~/.clip_list | dmenu -l 10)
		clipText=$(echo $clip_list | awk '{print $2}')
		echo "$clipText" | xclip
		# echo $(cat ~/.clip_list | dmenu -l 10)| tr -d '\n' | xclip -sel c
	elif [[ $selected = "clear" ]]; then
		rm ~/.clip_list
	elif [[ $selected = "cancel" ]]; then
		return
	fi
}


powermenu
