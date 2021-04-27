#!/bin/bash
clear
cd ~/root
wget http://www.pulseway.com/download/pulseway_x64.deb
dpkg -i pulseway_x64.deb
rm /etc/pulseway/config.xml.sample
rm /etc/pulseway/config.xml
wget -O /etc/pulseway/config.xml https://lochstudioscdn.nyc3.digitaloceanspaces.com/scripts/static/pulseway/config.xml
clear
/etc/init.d/pulseway start