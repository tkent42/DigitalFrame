# DigitalFrame


In Progress

Make sure Pi is up to date and updated 

sudo apt-get update && sudo apt-get upgrade

Edit autostart to use this file
sudo nano /home/pi/.config/lxsession/LXDE-pi/autostart

Add line to the bottom:
@/bin/sh /home/pi/runslideshow.sh

