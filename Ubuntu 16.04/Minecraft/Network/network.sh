#!/bin/bash
sudo adduser minecraft
cd /home/minecraft
mkdir bungee
cd bun*
wget https://lochstudios.rocks/Minecraft/BungeeCord.jar
cd ..
mkdir login
cd login
wget https://lochstudios.rocks/Minecraft/spigot-1.14.2.jar
cd ..
mkdir connect
cd connect
wget https://lochstudios.rocks/Minecraft/spigot-1.14.2.jar
cd ..
sudo apt install openjdk-8-jre-headless screen -y
