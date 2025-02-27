#!/bin/bash
locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo apt install -y htop zip unzip screen nano wget curl gpg
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-SQLite-WordPress/main/weby -O weby && sudo chmod +x weby && sudo ./weby -clean
sudo rm /opt/webinoly/webinoly.conf
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-SQLite-WordPress/main/config/webinoly.conf -O /opt/webinoly/webinoly.conf
sudo stack -nginx
sudo stack -php
sudo apt install php7.4-sqlite3
sudo apt-get remove memcached -y
sudo apt-get remove redis-server -y
sudo apt remove iptables-persistent -y
sudo ufw disable
sudo iptables -F
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-SQLite-WordPress/main/config/php.ini -O /etc/php/7.4/fpm/php.ini
sudo service php7.4-fpm restart
sudo apt update && sudo apt upgrade -y
#addon
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
sudo webinoly -verify
sudo webinoly -info
