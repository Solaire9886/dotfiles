#!/usr/bin/env bash

# I wasn't smart enough to figure out how to get the text output to flank both sides of the play/pause button...
# so I just made a separate file for the volume percentage, so at least you can put it wherever you please

    # Volume percentage
    volume_percent=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

    # Output
    echo "<txt>$volume_percent%</txt>"
