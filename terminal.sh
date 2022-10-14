#!/bin/bash
sudo apt udpate
sudo apt upgrade -y
sudo apt install zsh powerline fonts-powerline -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"