#!/bin/bash

cd /home
mkdir teamspeak
cd teamspeak
curl -o teamspeak.tar.bz2 https://files.teamspeak-services.com/releases/server/3.12.1/teamspeak3-server_linux_amd64-3.12.1.tar.bz2
tar -xvf teamspeak.tar.bz2
rm -r teamspeak.tar.bz2
mv /home/teamspeak3-server_linux_amd64 /home/teamspeak
cd /home/teamspeak
chmod +x ts3server_startscript.sh
touch .ts3server_license_accepted

echo type a password for query serveradmin 
read pass

screen ./ts3server_startscript.sh start serveradmin_password=$pass