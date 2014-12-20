#!/bin/sh

#####################################
## FEMP: FreeBSD, (e)nginx, MariaDB, PHP
## For running WordPress, etc

portsnap fetch extract

echo "Build nginx mainline, choose your extensions..."
cd /usr/ports/www/nginx-devel
make config-recursive
make install clean

echo "I don't customise these, so install from pkgng"
pkg install php56
pkg install php56-mysql
pkg install php56-opcache
pkg install mariadb100-client
pkg install mariadb100-server
