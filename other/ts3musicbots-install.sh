echo -e "======================= apt-get update ======================="
apt-get update
echo -e "======================= apt-get upgrade ======================="
apt-get upgrade -y
echo -e "======================= apt-get install curl openssl tar openjdk-11-jre ======================="
apt-get install curl openssl tar openjdk-11-jre -y

## download files
echo -e "running: curl -sSL -o TS3MusicBot_v4.5.tar https://download1.ts3musicbot.net/TS3MusicBot_v4.5.tar"
curl -sSL -o TS3MusicBot_v4.5.tar https://download1.ts3musicbot.net/TS3MusicBot_v4.5.tar

## unpack files
echo -e "unpacking files"
tar xfv TS3MusicBot_v4.5.tar
rm TS3MusicBot_v4.5.tar
cd TS3MusicBot*
chmod 755 TS3MusicBot_runscript.sh
echo -e "Installation complete! You can now start your TS3MusicBot."
