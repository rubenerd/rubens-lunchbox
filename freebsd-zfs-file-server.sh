#!/bin/sh

## Installs basic FreeBSD ZFS file server
## Assumes FreeBSD installed on USB key, and all SATA disks used for ZFS pool
## !! THIS COMES WITH NO WARRANTY, BACK UP YOUR DATA  !!
## !! NO REALLY, THIS WILL CLOBBER ALL SPINNING DISKS !!

set -e

pkg
pkg install rsync
pkg install samba42
pkg install smartmontools
pkg install vim-lite

## Enable ZFS and SMART monitoring
echo 'zfs_enable="YES"' >> /etc/rc.conf
echo 'smartd_enable="YES"' >> /etc/rc.conf
cp -i /usr/local/etc/smartd.conf.sample /usr/local/etc/smartd.conf

## Grab all primary disks
_disks=""
for disk in ada[0-9]; do disks="$disks $disk"; done

## Create ZFS (swimming) pool and add to raid
zpool create zroot raidz2 $_disks
zpool status
zfs create -o casesensitivity=mixed zroot/swimming

## TODO: Add basic samba stuff