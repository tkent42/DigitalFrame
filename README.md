# DigitalFrame


In Progress, first Repo...

Make sure Pi is up to date and upgrade:
,,,
sudo apt-get update && sudo apt-get upgrade
,,,

,,,
sudo reboot
,,,

Install Packages (I have had to update again before install not sure why)
,,,
sudo apt-get update && sudo apt-get install -y feh && sudo apt-get install -y xscreensaver(no Screensaver?)
,,,
Edit config settings for particular screen:
sudo nano /boot/config.txt

Uncomment or add the following lines depending on your screen:
disable_overscan=1
disable_splash=1
display_rotate=3 #I like it the screen in portrait for the art

I have a matte and I need to shrink the size of the display:
overscan_left=60
overscan_right=70
overscan_top=20
overscan_bottom=20

Bring scripts from github:
git clone https://github.com/tkent42/DigitalFrame

mkdir /home/pi/Art

Edit scrpts to your system, I share the pictures from my server via Samba but you can also just have them on the SD locally.

sudo nano /boot/cmdline.txt
consoleblank=0

Edit autostart to use script on boot:
sudo nano /home/pi/.config/lxsession/LXDE-pi/autostart

Add to the bottom (First three stop the screensaver from coming on):
@xset s noblank 
@xset s off 
@xset -dpms
@/bin/sh /home/pi/DigitalFrame/PiScripts/runslideshow.sh

In order to use sudo in the script I edit using visudo. There may be a better way to do this:

sudo visudo
Add line:
pi ALL=(ALL) NOPASSWD: /home/pi/DigitalFrame/PiScrips/runslideshow.sh, /home/pi/DigitalFrame/PiScrips/sunset.sh, /home/pi/DigitalFrame/PiScrips/sunrise.sh

Run Scripts from Dropbox so you can use IFTTT to change to dim images at sunset and bright images at sunrise:
Follow the directions at https://beebom.com/how-to-run-commands-on-raspberry-pi-by-email/


