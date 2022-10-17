#!/bin/bash
#install SNMP-DEV and SNMP Service
apt install libsnmp-dev -y
apt install snmpd -y

service snmpd stop
#Create SNMPv3 Username and Password
net-snmp-config --create-snmpv3-user -ro -A user userpass
service snmpd start

#Make sure you edit the SNMPD Config and set the listen address to all.
sudo nano /etc/snmp/snmpd.conf
agentAddress udp:161,udp6:[::1]:161
sudo service snmpd restart