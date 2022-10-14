#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install zip unzip git -y
sh -c "$(wget https://raw.githubusercontent.com/SimDifRandomHD/server-scripts/master/terminal.sh -O -)"