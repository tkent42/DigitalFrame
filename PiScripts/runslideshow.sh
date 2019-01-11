#!/bin/sh
sudo mount.cifs //NETWORK_LOCATION /home/pi/Art -o user=user,password=password
sleep 4
#@export DISPLAY=:0
feh -Y -x -q -D 200 -B black -F --auto-rotate -Z -z -r /home/pi/Art
