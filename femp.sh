#!/bin/tcsh

## FEMP: FreeBSD, (e)nginx, MariaDB, PHP
## For running WordPress, etc

echo "Update packages, install ports"
pkg update
pkg upgrade
freebsd-update fetch install
portsnap fetch extract

echo "Build nginx mainline, choose your extensions..."
cd /usr/ports/www/nginx-devel
make config-recursive
make install clean
pkg lock nginx-devel

echo "I don't customise these, so install from pkgng"
pkg install php56
pkg install php56-mysql
pkg install php56-opcache
pkg install mariadb100-client
pkg install mariadb100-server

echo "Build directories (I like the Debian nginx approach)"
mkdir /usr/local/etc/nginx/sites-available
mkdir /usr/local/etc/nginx/sites-enabled
mkdir /var/log/nginx

echo "Archive nginx logs in separate directory"
cat >> /etc/newsyslog.log <LOGS
## Ruben's nginx logs
/var/log/nginx/*.log                    644  64    100  *     XCG
LOGS
/etc/rc.d/newsyslog restart

echo "Add ZFS and network performance optimisations"
cat >> /boot/loader.conf <BIRDISWORD
## async I/O with ZFS is blazingly fast
aio_load="YES"
## Wait for data accept filter before passing to nginx
accf_data_load="YES"
## Buffer connections until complete HTTP requests arrive for nginx
accf_http_load="YES"
BIRDISWORD