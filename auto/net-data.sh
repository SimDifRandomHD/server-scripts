#!/bin/bash
clear
sudo apt-get update
bash <(curl -sSL https://raw.githubusercontent.com/netdata/netdata/master/packaging/installer/install-required-packages.sh)
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --stable-channel
