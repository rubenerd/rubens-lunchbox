#!/bin/sh

## For those who don't think $GOOG knows enough about you

arch="amd64" # amd64/i386

apt-get -y install libappindicator libcurl3 libdbusmenu-glib4 \
    libdbusmenu-gtk4 libindicator libxss1

wget https://dl.google.com/linux/direct/google-chrome-stable_current_${arch}.deb"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
dpkg -i google-chrome-stable_current_${arch}.deb