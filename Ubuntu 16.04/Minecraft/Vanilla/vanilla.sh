#!/bin/bash
sudo adduser minecraft
cd /home/minecraft
mkdir server
cd server
wget https://lochstudios.rocks/Minecraft/spigot-1.14.2.jar
cd ..
sudo apt install openjdk-8-jre-headless screen -y
