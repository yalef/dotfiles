#!/bin/sh -e

# Take a screenshot
scrot /home/yalef/scrot.png

# Pixellate 10x
# or blur
mogrify -blur 0x4 /home/yalef/scrot.png   
#-scale 10% -scale 1050% /root/Desktop/pictures/lock_scrot/scrot.png

# Lock screen displaying this image
i3lock -i /home/yalef/scrot.png --ignore-empty-password
rm /home/yalef/scrot.png
