#!/bin/vbash
## Script to install VyOS community repos on Vyatta

source /opt/vyatta/etc/functions/script-template

delete system package repository community
set system package repository community components 'main'
set system package repository community distribution 'hydrogen'
set system package repository community url 'http://mirror.vyos-users.jp/vyos'
commit
save

sudo apt-get -y update