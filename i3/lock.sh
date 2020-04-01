#!/bin/sh -e

# Take a screenshot
rm -f /home/yalef/scrot*
scrot /home/yalef/scrot.png

# Pixellate 10x
# or blur
#mogrify -blur 0x4 /home/yalef/scrot.png   
mogrify -scale 10% -scale 1000% /home/yalef/scrot.png
# Lock screen displaying this image
i3lock -i /home/yalef/scrot.png --ignore-empty-password 
