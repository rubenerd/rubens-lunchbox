#!/bin/sh

######
## Create USB key to boot FreeBSD from an ODD-mounted SSD
## in a HPE MicroServer Gen8

_KEY=da1

## Number of drives you have installed in the front, for the BIOS drive number
_DRIVES=4

gpart destroy -F $_KEY
gpart create -s GPT $_KEY
boot0cfg -Bv -o setdrv -d 0x8$_DRIVES -s 5 $_KEY

