#!/bin/sh -e

# Take a screenshot
scrot /home/yalef/scrot.png
# Pixellate 10x
# or blur
#mogrify -blur 0x4 /home/yalef/scrot.png   
mogrify -scale 10% -scale 1000% /home/yalef/scrot.png
# Lock screen displaying this image
set -e
i3lock -i /home/yalef/scrot.png --ignore-empty-password
xset s off dpms 0 10 0 
xset s off -dpms
# remove screenshot
rm -f /home/yalef/scrot*
