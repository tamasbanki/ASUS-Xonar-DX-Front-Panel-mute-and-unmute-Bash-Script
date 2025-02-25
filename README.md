## ASUS Xonar DX Front Panel mute/unmute Bash script
---
### This little bash script helps you to change between the front and rear output if you use ASUS Xonar DX sound cards. (Maybe it works with other sound cards too.)
### (You'll need ALSA with amixer utility!)

### Usage:
1.   Save this script file somewhere, like "/home/<user>/scripts/"
2.   Open the terminal in the script file's folder
3.   Make the script executable with `$chmod +x alsa-fp-switch.sh`
4.   Run the script with `./alsa-fp-switch.sh`
(5.) Create a shortcut with `Exec= /home/<user>/scripts/alsa-fp-switch.sh`
