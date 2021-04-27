#!/bin/bash

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
mkdir -p /var/azuracast
cd /var/azuracast
curl -L https://raw.githubusercontent.com/AzuraCast/AzuraCast/master/docker.sh > docker.sh
chmod a+x docker.sh
yes | ./docker.sh install