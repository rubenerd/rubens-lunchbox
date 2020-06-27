#!/bin/sh

######
## Simple OpenZFS pool for MariaDB/Percona/MySQL on second disk
## Adapted from Percona's documentation
## Default is /var/lib/mysql, but I prefer FreeBSD's /var/db/

_DISK="ada1"

## Create pool for MariaDB using default compression and block size
zpool create -m /var/db/mysql -O atime=off "$_DISK" mysql

## Create data dataset with recordsize to match InnoDB record size
zfs create -o recordsize=16K -o primarycache=metadata -o mysql/data

## Create log dataset using default block size
zfs create mysql/log

######
## Then in my.cnf:
##
## datadir=/var/db/mysql/data
## innodb_log_group_home_dir = /var/db/mysql/log
## slow_query_log = /var/db/mysql/log/slow.log
## log-error = /var/db/mysql/log/error.log

