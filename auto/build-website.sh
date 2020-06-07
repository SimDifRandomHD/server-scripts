#!/bin/bash
sudo apt-get update
sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo mysql_secure_installation
sudo apt install php libapache2-mod-php php-mysql -y
sudo apt install certbot python3-certbot-apache -y
sudo systemctl reload apache2
sudo certbot --apache