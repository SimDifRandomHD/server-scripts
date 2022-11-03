#!/bin/bash
apt-get update
apt-get upgrade -y
apt-get install -y zip unzip git curl wget screen
curl -fsSL https://deb.nodesource.com/setup_16.x | bash
apt-get install -y gcc g++ make && apt-get install -y nodejs