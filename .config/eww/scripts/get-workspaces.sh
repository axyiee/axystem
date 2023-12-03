#!/usr/bin/env bash

spaces() {
     local names='["", "", "", "󰈙", "󰙯", "", "󰊗", ""]'
     seq 0 7 | jq --argjson names "$names" --slurp -Mc 'map(tostring) | map({id: (.|tonumber+1|tostring), name: ($names[.|tonumber])})'
}

spaces
socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
	spaces
done
