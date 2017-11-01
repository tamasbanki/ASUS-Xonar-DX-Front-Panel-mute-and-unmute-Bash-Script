#!/bin/bash
SCRIPT_VERSION=0.4.64

#alsa-fp-switch.sh
#ASUS Xonar DX Front Panel mute and unmute Bash Script
#Build version: 1.0
#Build date: 2017.11.01.
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


#Requires ALSA with amixer utility!

#Install
#1. Put this script file somewhere (like "/home/user/scripts/")
#2. Open the terminal where is the script file
#3. Make it executable with $chmod +x alsa-fp-switch.sh
#4. Run the script with ./alsa-fp-switch.sh
#(5.) Create a shortcut with Exec= /path/to/file/alsa-fp-switch.sh

#If the script is not working try the following:
#1. Check your sound card's number with $cat /proc/asound/cards
#2. Change the "card_number" variable's value to that number (in my case it's "0").
##################################################################################

card_number="0"


input=$(amixer -c "$card_number" sget "Front Panel")

if [[ $input == *"Mono: Playback [off]"* ]]; then
    amixer -c "$card_number" -- sset "Front Panel" unmute

elif [[ $input == *"Mono: Playback [on]"* ]]; then
    amixer -c "$card_number" -- sset "Front Panel" mute

fi
