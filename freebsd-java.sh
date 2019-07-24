#!/bin/sh

## FreeBSD Java sandbox to run as an isolated(ish) VM

set -e

## Update base system
freebsd-update fetch install

## Install packages
pkg
pkg update
pkg install vim-lite
pkg install sudo
pkg install xorg 
pkg install fluxbox
pkg install firefox
pkg install icedtea-web

## Needs dbus and tcsd
echo 'dbus_enable="YES"' >> /etc/rc.conf
echo 'tcsd_enable="YES"' >> /etc/rc.conf

## OpenJDK needs Linux proc
echo "fdesc  /dev/fd  fdescfs  rw  0  0" >> /etc/fstab
echo "proc   /proc    procfs   rw  0  0" >> /etc/fstab
