#!/bin/sh

######
## Debian tools for exFAT file systems
## 

_TARGET="/dev/sdb1"

sudo apt-get install exfat-fuse exfat-utils
sudo mount -t exfat $_TARGET

