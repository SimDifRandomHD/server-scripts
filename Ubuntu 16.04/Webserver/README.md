# Ubuntu 16-04 Scripts - Webserver

* Installs Apache2.4
* Installs PHP 
    * Plus Every PHP Extenstion
* Installs Let's Encrypt Cert Bot

To download and install run:

``wget -O- https://lochstudios.rocks/Webserver/webserver-install.sh | bash``

After Install has compleated to install an SSL with Let's Encrypt Cert Bot run:

``sudo certbot --apache -d example.com``

Replace "**example.com**" with your website hostname, then follow what the script tells you.
