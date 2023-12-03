#!/bin/sh
wpctl get-volume @DEFAULT_AUDIO_SINK@ | sed 's/^Volume: //' | xargs -I {} printf '%0.0f\n' "{}e+2"
