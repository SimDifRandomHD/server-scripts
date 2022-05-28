#Update the system and do a quick reboot.
sudo apt-get update; sudo apt-get upgrade -y; sudo reboot now
#Make sure you have these installed, if not run this:
sudo apt-get install nano wget tar perl bzip2 -y
#Download the new server files and move to that folder
wget https://files.teamspeak-services.com/releases/server/3.13.6/teamspeak3-server_win64-3.13.6.zip -P /home/temp; cd /home/temp
#Extract the archive
tar xjf teamspeak3-server_linux_amd64*.tar.bz2
#Create a new user with your desired name.
sudo adduser --disabled-login teamspeak
#Move the extracted files to the teamspeak user's home directory then remove the extracted folder and downloaded archive.
cd teamspeak3-server_linux_amd64 && mv * /home/teamspeak && cd .. && rm -rf teamspeak3*
#Accept the license agreement:
touch /home/teamspeak/.ts3server_license_accepted
#Change ownership of the TeamSpeak 3 server files
sudo chown -R teamspeak:teamspeak /home/teamspeak
#Make sure all the ports are open on the server's firewall
iptables -A INPUT -p udp --dport 9987 -j ACCEPT
iptables -A INPUT -p udp --sport 9987 -j ACCEPT
iptables -A INPUT -p tcp --dport 30033 -j ACCEPT
iptables -A INPUT -p tcp --sport 30033 -j ACCEPT
iptables -A INPUT -p tcp --dport 10011 -j ACCEPT
iptables -A INPUT -p tcp --sport 10011 -j ACCEPT
#Start the server
sh /home/teamspeak/ts3server_startscript.sh start

#Start with Query Password Set
sh /home/teamspeak/ts3server_startscript.sh start serveradmin_password=QUERY-PASSWORD-HERE


#Start on boot
nano /lib/systemd/system/teamspeak.service

#paste this to the file
[Unit]
Description=TeamSpeak 3 Server
After=network.target

[Service]
WorkingDirectory=/home/teamspeak/
User=teamspeak
Group=teamspeak
Type=forking
ExecStart=/home/teamspeak/ts3server_startscript.sh start serveradmin_password=QUERY-PASSWORD-HERE
ExecStop=/home/teamspeak/ts3server_startscript.sh stop
PIDFile=/home/teamspeak/ts3server.pid
RestartSec=15
Restart=always

[Install]
WantedBy=multi-user.target

#This makes to systemd recognize the file we just created.
systemctl --system daemon-reload
#Enable the service.
systemctl enable teamspeak.service
#Start the TeamSpeak server.
systemctl start teamspeak.service
#Once you've started the server, you can check that it's running with this command.
systemctl status teamspeak.service
