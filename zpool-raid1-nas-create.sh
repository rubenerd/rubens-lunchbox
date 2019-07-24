#!/bin/sh

######
## My standard zpool creation for FreeBSD NASs serving OS X
## - Balanced read/write performance for 4K drives
## - non case sensitive (not even mixed)
## - UTF8 support and normalisation

_disk0=''
_disk1=''
_poolname=''

zpool create -f -o ashift=12 \
-O atime=off \
-O utf8only=on \
-O nbmand=on \
-O casesensitivity=insensitive \
-O normalization=formD \
${_poolname} mirror ${_disk0} ${_disk1}
