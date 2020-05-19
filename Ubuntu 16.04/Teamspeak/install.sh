#!/bin/bash
adduser --disabled-login teamspeak
wget https://lochstudios.rocks/Teamspeak/teamspeak3-server-3.8.tar.bz2
tar xvf teamspeak3-server-3.8.tar.bz2
cd teamspeak3-server_linux_amd64
mv * /home/teamspeak
cd ..
rm -rf teamspeak3*
touch /home/teamspeak/.ts3server_license_accepted
chown -R teamspeak:teamspeak /home/teamspeak
clear
iptables -A INPUT -p udp --dport 9987 -j ACCEPT
iptables -A INPUT -p udp --sport 9987 -j ACCEPT
iptables -A INPUT -p tcp --dport 30033 -j ACCEPT
iptables -A INPUT -p tcp --sport 30033 -j ACCEPT
iptables -A INPUT -p tcp --dport 10011 -j ACCEPT
iptables -A INPUT -p tcp --sport 10011 -j ACCEPT
clear
cd /home/teamspeak
./ts3server_startscript.sh stop
./ts3server_startscript.sh start serveradmin_password=adminpassword
cat /home/teamspeak/logs/ts3server_*