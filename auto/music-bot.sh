#!/bin/bash
sudo apt-get update -y
sudo apt-get install build-essential unzip -y
sudo apt-get install software-properties-common -y
sudo apt-get install git ffmpeg libopus-dev libffi-dev libsodium-dev python3-pip -y 
git clone https://github.com/Just-Some-Bots/MusicBot.git MusicBot -b master
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.6 get-pip.py
cd MusicBot
sudo python3 -m pip install -U pip
sudo python3 -m pip install -U -r requirements.txt