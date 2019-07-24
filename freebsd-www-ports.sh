#!/bin/sh

_category="www"
_port="nginx-devel"

pkg update
pkg install subversion

svn checkout --depth empty svn+ssh://svn.freebsd.org/ports/head /usr/ports
cd /usr/ports
svn update --set-depth files
svn update Mk
svn update Templates
svn update Tools
svn update --set-depth files $_category
cd $_category
svn update $_port