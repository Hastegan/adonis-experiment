#!/usr/bin/env bash

apt-get -y update
apt-get install -y curl git

# Install node
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install -y nodejs

# Disable symlinks and update bash profile
echo "alias yarn='yarn --no-bin-links '" >> /home/vagrant/.bashrc
source ~/.bashrc

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# Install the command line tools for Adonis and other dev dependencies
yarn install -g -y adonis-cli
yarn install -g -y nodemon

# Install project dependencies
cd /vagrant/adonis-experiment
yarn install
