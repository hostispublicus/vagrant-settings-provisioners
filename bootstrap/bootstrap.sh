#!/usr/bin/env bash

# ===========================================================================
# BOOTSTRAPPING GENERAL INSTALLATION DEPENDECIES & SETTINGS:
# ===========================================================================

echo "[START] BOOTSTRAPPING GENERAL INSTALLATION DEPENDECIES & SETTINGS:"

## Fixing Ubuntu tty bug
echo "[INFO] Fixing Ubuntu tty bug:"
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

## Updating system
echo "[INFO] Updating system:"
apt-get -y update

## Install Curl
echo "[INFO] Installing Curl:"
apt-get install curl -y

## Install GIT
echo "[INFO] Installing GIT:"
apt-get install git -y

# ===========================================================================
# BOOTSTRAPPING UI DEPENDENCIES
# ===========================================================================

echo "[START] BOOTSTRAPPING UI DEPENDECIES:"

## Install Apache server
echo "[INFO] Installing Apache Server:"
apt-get install -y apache2

## Change docroot
echo "[INFO] Changing Apache docroot:"
rm -rf /var/www
ln -fs /vagrant /var/www

## Install Node.js
echo "[INFO] Installing Node.js:"
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs

## Install Ruby 1.9.3
# echo "[INFO] Install Ruby 1.9.3:"
# sudo apt-get install ruby

## Install Ruby 2.0
echo "[INFO] Installing Ruby 2.0:"
curl -L https://get.rvm.io | bash -s stable --ruby=2.0.0
gem update --system

## Install Ruby 2.0 [ALTERNATIVE, COMPILE FROM SOURCE]
# sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
# cd /tmp
# wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.gz
# tar -xvzf ruby-2.0.0-p481.tar.gz
# cd ruby-2.0.0-p481/
# ./configure --prefix=/usr/local
# make
# sudo make install

# gem update --system

## Install Compass
echo "[INFO] Installing Compass:"
gem install compass

## Install Jekyll
echo "[INFO] Installing Jekyll:"
gem install jekyll
gem install jekyll-compass

echo "[SUCCESS] Provisioning successful!"