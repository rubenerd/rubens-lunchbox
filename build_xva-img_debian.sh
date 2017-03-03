#!/bin/sh

######
## Bootstrap an xva-img install on Debian
## Will be converted to an Ansible playbook at some point

set -e

sudo apt-get update
sudo apt-get install git make cmake gcc g++ libssl-dev

git clone https://github.com/eriklax/xva-img.git
cd xva-img
cmake .
make install clean
