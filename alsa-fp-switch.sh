#!/bin/bash
SCRIPT_VERSION=0.4.64

#alsa-fp-switch.sh
#ASUS Xonar DX Front Panel mute and unmute Bash Script
#Build version: 1.1
#Build date: 2017.12.15.
#Made by Tamas Banki

#################################################################################
#Copyright (C) 2007 Free Software Foundation.

#This program is free software; you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation; either version 2 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
##################################################################################

input=$(arecord -l)

if [[ $input == *"card 0: DX [Xonar DX]"* ]]; then
    card_number="0"
elif [[ $input == *"card 1: DX [Xonar DX]"* ]]; then
    card_number="1"
elif [[ $input == *"card 2: DX [Xonar DX]"* ]]; then
    card_number="2"
elif [[ $input == *"card 3: DX [Xonar DX]"* ]]; then
    card_number="3"
elif [[ $input == *"card 4: DX [Xonar DX]"* ]]; then
    card_number="4"
fi


input=$(amixer -c "$card_number" sget "Front Panel")

if [[ $input == *"Mono: Playback [off]"* ]]; then
    amixer -c "$card_number" -- sset "Front Panel" unmute
elif [[ $input == *"Mono: Playback [on]"* ]]; then
    amixer -c "$card_number" -- sset "Front Panel" mute
fi
