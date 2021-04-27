#To install it for Apache
sudo apt-get update && sudo apt-get install software-properties-common python-software-properties build-essential -y
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update && sudo apt-get install python-certbot-apache -y

sudo certbot --apache -d example.com


###################################################################################################################################

#To install it for Nginx
sudo apt-get update && sudo apt-get install software-properties-common python-software-properties build-essential -y
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update && sudo apt-get install python-certbot-nginx -y
# Certbot can automatically configure SSL for Nginx, but it needs to be able to find the correct server block in your config.
# It does this by looking for a server_name directive that matches the domain you're requesting a certificate for.

sudo nano /etc/nginx/sites-available/default
# or
sudo certbot --nginx -d example.com

#Find the existing server_name line and replace the underscore, _, with your domain name
sudo systemctl reload nginx