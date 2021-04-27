# Install build tools
sudo apt-get install build-essential unzip -y
sudo apt-get install software-properties-common -y

# Add external repositories
sudo add-apt-repository ppa:mc3man/xerus-media -y
sudo add-apt-repository ppa:deadsnakes/ppa -y

# Install system dependencies
sudo apt-get update -y
sudo apt-get install git ffmpeg libopus-dev libffi-dev libsodium-dev python3.6 -y
sudo apt-get upgrade -y

# Install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.6 get-pip.py

# Clone the MusicBot to your home directory
git clone https://github.com/Just-Some-Bots/MusicBot.git MusicBot -b master
cd MusicBot
rm -r *.bat
rm -r *.sh

# Install Python dependencies
sudo python3.6 -m pip install -U pip
sudo python3.6 -m pip install -U -r requirements.txt

# To run the bot
python3.6 run.py