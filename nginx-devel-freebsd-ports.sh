#!/bin/sh

if [ -d "/usr/ports" ]; then
    portsnap fetch update
else
    portsnap fetch extract
fi

pkg update
pkg upgrade

pkg install pcre
pkg install perl5
pkg install openssl

cd /usr/ports/www/nginx-devel
make config-depends
make install clean
