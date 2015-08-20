#!/bin/sh

## Installs basic FreeBSD file server
## Assumes FreeBSD itself installed on USB key, etc
## !! THIS COMES WITH NO WARRANTY, BACK UP YOUR DATA  !!
## !! NO REALLY, THIS WILL CLOBBER ALL SPINNING DISKS !!

pkg
pkg install rsync
pkg install samba42
pkg install smartmontools
pkg install vim-lite

## I prefer swimming pools to tank pools
echo 'zfs_enable="YES"' >> /etc/rc.conf
zpool create zroot raidz2 ada?
zpool status
zfs create -o casesensitivity=mixed zroot/swimming

## Enable smart monitoring
echo 'smartd_enable="YES"' >> /etc/rc.conf
cp /usr/local/etc/smartd.conf.example /usr/local/etc/smartd.conf

## TODO: Basic SAMBA stuff