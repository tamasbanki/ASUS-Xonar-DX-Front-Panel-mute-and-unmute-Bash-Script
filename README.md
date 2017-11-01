# ASUS-Xonar-DX-Front-Panel-mute-and-unmute-Bash-Script

#This little bash script helps you to change change between the front output and rear output output on ASUS Xonar DX sound cards.
#(Maybe it works with other sound cards, but I didn't tested it.)

#You need ALSA with amixer utility!

#Installation:

# 1. Put this script file somewhere (like "/home/user/scripts/")
# 2. Open the terminal where is the script file
# 3. Make it executable with $chmod +x alsa-fp-switch.sh
# 4. Run the script with ./alsa-fp-switch.sh
# (5.) Create a shortcut with Exec= /path/to/file/alsa-fp-switch.sh


#If the script is not working try the following:

# 1. Check your sound card's number with $cat /proc/asound/cards
# 2. Change the "card_number" variable's value to that number (in my case it's "0").
