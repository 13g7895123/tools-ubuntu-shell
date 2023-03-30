#!/bin/sh

# Install Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Install PHP8.2
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt update
sudo apt install -y php8.2-fpm

# Install PHP8.2 套件
sudo apt-get install -y php8.2-xml
sudo apt-get install -y php8.2-curl

# Install apache
sudo apt-get install -y apache2

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# Building Laravel project
composer create-project --prefer-dist laravel/laravel:^9.0 laravel-vue-build-chatgpt

