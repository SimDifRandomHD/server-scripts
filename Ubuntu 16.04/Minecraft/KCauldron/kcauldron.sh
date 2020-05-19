#!/bin/bash
sudo adduser minecraft
cd /home/minecraft
mkdir cauldron
cd cauldron
wget https://lochstudios.rocks/Minecraft/KCauldron.jar
mkdir mods
mkdir plugins
cd ..
sudo apt install openjdk-8-jre-headless screen -y