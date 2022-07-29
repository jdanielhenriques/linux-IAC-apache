#/bin/bash

echo "Updating system"
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Downloading and installing aplication files"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


echo "Cleanning temp files"
cd /tmp
rm -f main.zip
rm -Rf linux-site-dio-main


echo "All done"
