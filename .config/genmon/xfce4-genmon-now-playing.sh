#!/usr/bin/env bash

# REPLACE ALL DIRECTORIES WITH YOUR PREFERED ICON (IMG OR TEXT)

playerctl_status=$(playerctl status 2>/dev/null)

if [[ $playerctl_status = 'Playing' || $playerctl_status = 'Paused' ]]; then
    title_width=25   # how many characters to show at once
    scroll_file="/tmp/song_scroll_offset"  # keep scroll state between updates
    pause_file="/tmp/song_scroll_pause"    # store pause counter

    # Play/pause icon
    if [[ $playerctl_status = 'Playing' ]]; then
        player_icon='/home/solaire/Pictures/icons/play.png'
    else
        player_icon='/home/solaire/Pictures/icons/pause.png'
    fi

    # Song info
    artist=$(playerctl metadata artist)
    title=$(playerctl metadata title)
    song_info="$artist - $title"

    # Pad with spaces for smooth scrolling
    padding=$(printf '%*s' 4 "")
    scroll_text="$song_info$padding$song_info$padding"

    # Load previous scroll offset
    if [[ -f $scroll_file ]]; then
        offset=$(<"$scroll_file")
    else
        offset=0
    fi

    # Load pause counter
    if [[ -f $pause_file ]]; then
        pause=$(<"$pause_file")
    else
        pause=0
    fi

    max_offset=$(( ${#song_info} + 4 ))  # pause only at the end of original song info
    pause_duration=10                     # number of cycles to pause

    # Cut substring for display
    display_text="${scroll_text:$offset:$title_width}"

    # Length of padded scroll text
    scroll_len=${#scroll_text}

    # Cut substring for display, wrapping around
    display_text=""
    for ((i=0; i<title_width; i++)); do
    idx=$(( (offset + i) % scroll_len ))
    display_text+="${scroll_text:idx:1}"
    done

    # Increment offset for next cycle
    offset=$(( (offset + 1) % scroll_len ))


    # Save updated offset and pause
    echo "$offset" > "$scroll_file"
    echo "$pause" > "$pause_file"

    # Output
    echo "<txt> $display_text</txt> <img>$player_icon</img><click>playerctl play-pause</click>"

else
    # When nothing is playing...
    echo "<txt> - Idle - </txt> <img>/home/solaire/Pictures/icons/pause.png</img>" 

fi
