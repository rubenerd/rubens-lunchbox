#!/bin/sh

## Install dependencies
apt-get install build-essential libssl-dev

## Checkout latest version, build, install
svn co https://github.com/eriklax/xva-img
cd xva-img
cmake .
sudo make install clean