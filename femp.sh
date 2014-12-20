#!/bin/tcsh

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
