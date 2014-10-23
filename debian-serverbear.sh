#!/bin/sh

## Script for running private ServerBear tests

PLAN="Some Hosting Plan"
EMAIL="someone@example.com"

sudo -s

apt-get update
apt-get dist-upgrade

apt-get -y install curl
apt-get -y install dpkg-dev
apt-get -y install fio
apt-get -y install g++
apt-get -y install traceroute

wget -N https://raw.github.com/Crowd9/Benchmark/master/sb.sh &&
    bash sb.sh 'Testificate' '$PLAN' '$EMAIL' private

exit
