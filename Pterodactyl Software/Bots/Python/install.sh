sudo apt-get update -y
sudo apt-get install git libopus-dev libffi-dev libsodium-dev ffmpeg -y
sudo apt-get install build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl -y
sudo apt-get install python3-pip -y
git clone https://github.com/Just-Some-Bots/MusicBot.git -b master
sudo -H python3.5 -m pip install --upgrade pip
sudo -H python3.5 -m pip install --upgrade -r requirements.txt