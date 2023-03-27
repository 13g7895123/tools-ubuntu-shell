#!/bin/sh

# Update package list and install LAMP stack
sudo apt-get update -y
sudo apt-get install -y lamp-server

# Install Git
sudo apt-get install -y git

# Install Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Install Node.js and npm
sudo apt-get install -y nodejs
sudo apt-get install -y npm

# Install PHP extensions
sudo apt-get install -y php-curl php-gd php-mbstring php-xml php-xmlrpc
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