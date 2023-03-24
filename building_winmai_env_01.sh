#!/bin/sh

# Update
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

# Lamp
sudo apt install -y tasksel
sudo tasksel install lamp-server

sudo service apache2 start

# Adminer
sudo mkdir /usr/share/adminer
sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php
sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php
echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf
sudo a2enconf adminer.conf
sudo systemctl reload apache2
sudo a2enmod rewrite
sudo service apache2 restart