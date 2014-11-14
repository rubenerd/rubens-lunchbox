#!/bin/sh

## Build a basic headless Debian Folding@Home 7.4.4 cloud instance
## F*** Bitcoin, this is more important

SOURCE="https://fah.stanford.edu/file-releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb"

## Install and update basics
apt-get update
apt-get dist-upgrade
apt-get install curl firehol

## Install basic firewall
sed -i -e 's/^START_FIREHOL.*/START_FIREHOL=YES/' /etc/default/firehol
cat > /etc/firehol/firehol.conf <<BIRDISWORD
version 5
interface "eth0" internet
    protection strong
    server "ssh" accept
    client "dns http https ntp ssh" accept
BIRDISWORD
/etc/init.d/firehol start

## Download FAH
curl -OL $SOURCE
dpkg -i --force-depends fahclient_7.4.4_amd64.deb

## FAH should now be running
