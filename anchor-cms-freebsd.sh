#!/bin/sh

set -e

_php='php56'  ## Current tracking PHP version

portsnap fetch extract
cd /usr/ports/www/nginx-devel
make config-recursive
make install distclean

pkg update
pkg install -y mariadb100-server
pkg install -y ${_php}
pkg install -y ${_php}-curl
pkg install -y ${_php}-gd
pkg install -y ${_php}-mycrypt
pkg install -y ${_php}-pdo_mysql
pkg install unzip

mkdir /usr/local/src
cd /usr/local/src
curl -OL "http://anchorcms.com/download"
unzip download