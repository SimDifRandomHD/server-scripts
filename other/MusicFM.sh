#Install basic software to get started:
sudo apt-get install build-essential zip unzip software-properties-common -y
sudo add-apt-repository ppa:mc3man/xerus-media -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update -y; sudo apt-get install git ffmpeg libopus-dev libffi-dev libsodium-dev python3.6 -y
sudo apt-get upgrade -y

# Install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py; python3.6 get-pip.py


#Clone the lastest version from github:
git clone https://github.com/Just-Some-Bots/MusicBot.git MusicBot -b master
cd MusicBot

#Upgrade Python-PIP and install all the bot requirements:
sudo python3.6 -m pip install -U pip
sudo python3.6 -m pip install -U -r requirements.txt

#If you get an error about egg_info run this:
pip install --upgrade setuptools

#After running this, re-run the requirements command.

#After installing everything and getting everything running, to run the bot run this command:
sudo ./run.sh
#or
python3.6 run.py

#If the SH fails to run make sure it's an executable by typing the follownig:
chmod u+x *.sh

#After running that command re-run the; sudo ./run.sh

#After this command has been run, you can now go and edit all the config files under;
# /root/MusicBot/config/
# Edit what you need but don't touch most of the .py files other wise you'll break the bot,
# and you would have to go and re-download everything.

#When starting the bot run these two commands.
cd /root/MusicBot
screen -S MusicBot
sudo ./run.sh