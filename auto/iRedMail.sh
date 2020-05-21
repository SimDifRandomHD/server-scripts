#!/bin/bash
clear
sudo apt install git -y
git clone https://github.com/iredmail/iRedMail.git
cd iRedMail/
chmod +x iRedMail.sh
sudo bash iRedMail.sh
