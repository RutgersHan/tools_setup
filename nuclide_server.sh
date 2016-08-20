#!/bin/bash

#install watchman
sudo apt-get update
sudo apt-get install autoconf
sudo apt-get install automake
git clone https://github.com/facebook/watchman.git
cd watchman
./autogen.sh
./configure
make
sudo make install

#install node.js
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

#install the nuclide server
npm install -g npm
sudo apt-get install build-essential git libgnome-keyring-dev fakeroot
sudo npm install -g nuclide
