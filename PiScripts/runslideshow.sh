#!/bin/sh
#I use a Samba share from my server to host my images. At some point I would like to update it to a dropbox.
sudo mount.cifs //NETWORK_LOCATION /home/pi/Art -o user=user,password=password
sleep 4
#@export DISPLAY=:0
feh -Y -x -q -D 200 -B black -F --auto-rotate -Z -z -r /home/pi/Art/Slideshow
