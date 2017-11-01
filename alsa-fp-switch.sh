#!/bin/bash
SCRIPT_VERSION=0.4.64

#alsa-fp-switch.sh
#ASUS Xonar DX Front Panel mute and unmute Bash Script
#Build version: 1.0
#Build date: 2017.11.01.
#Made by Tamas Banki
#License: GNU GENERAL PUBLIC LICENSE


card_number="0"

input=$(amixer -c "$card_number" sget "Front Panel")

if [[ $input == *"Mono: Playback [off]"* ]]; then
    amixer -c "$card_number" -- sset "Front Panel" unmute

elif [[ $input == *"Mono: Playback [on]"* ]]; then
    amixer -c "$card_number" -- sset "Front Panel" mute

fi
