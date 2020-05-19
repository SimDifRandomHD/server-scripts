# Ubuntu 16-04 Scripts - Teamspeak

This folder is for the script that I use when deploying a new Teamspeak 3 server.

This script install all the necessary files to **/home/teamspeak**.
* Creates teamspeak user, disables the login for that user
* Downloads version 3.8 from our server and extracts the files
* Moves all the needed files to **/home/teamspeak** and removes the unnecessary files.
* Gives folder ownership to the teamspeak user.
* Allows all the correct ports on the servers firewall.
* Makes sure the server is stopped before it starts the server.
* Starts the server with admin password: **adminpassword**
* Shows you the **Server Admin Privilege Key**.


To download and install Teamspeak3 Server run:

``wget -O- https://lochstudios.rocks/Teamspeak/install.sh | bash``
