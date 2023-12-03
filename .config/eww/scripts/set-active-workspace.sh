#!/usr/bin/env bash

clamp() {
    awk '$0<1{$0=1}$0>10{$0=10}1' <<< "$1"
}

direction=$1
current=$2
if test "$direction" = "down"; then
	target=$(clamp $(($current+1)))
	echo "jumping to $target"
	hyprctl dispatch workspace $target
elif [ "$direction" = "up" ]; then
	target=$(clamp $(($current-1)))
	echo "jumping to $target"
	hyprctl dispatch workspace $target
fi
