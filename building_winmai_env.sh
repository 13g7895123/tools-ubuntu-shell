#!/bin/sh

# Update
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade

# Lamp
sudo apt install -y tasksel
sudo tasksel install -y lamp-server

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

#PHP Packages
sudo apt-get install -y php-mbstring
sudo apt-get install -y php-intl
sudo apt-get install -y php-curl 
sudo apt-get install -y php-zip 
sudo apt-get install -y php-ssh2
sudo apt-get install -y phpmd
sudo apt-get install -y php-mcrypt
sudo apt-get install -y php-imagick
sudo apt-get install -y php-simplexml
sudo apt-get install -y php-xml
sudo apt-get install -y php-gd
sudo apt install -y gettext