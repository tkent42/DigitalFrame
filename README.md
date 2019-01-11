# DigitalFrame


In Progress

Make sure Pi is up to date and upgraded 

sudo apt-get update && sudo apt-get upgrade

sudo reboot

Install Packages
sudo apt-get install feh
sudo apt-get install xscreensaver

git clone https://github.com/tkent42/DigitalFrame

Edit autostart to use this file
sudo nano /home/pi/.config/lxsession/LXDE-pi/autostart

Add line to the bottom:
@/bin/sh /home/pi/runslideshow.sh

sudo visudo
Add line:
pi ALL=(ALL) NOPASSWD: /home/pi/DigitalFrame/runslideshow.sh

