#!/bin/sh

## No need for horrible GUI bootable USB key generators
## Haven't seen if there's a memtest86+ equiv

key="/dev/sdb" ## TRIPLE CHECK this drive location first

curl -OL "http://www.memtest86.com/downloads/memtest86-usb.tar.gz"
tar xzvf memtest86-usb.tar.gz

sudo dd if=memtest86-usb.tar.gz of=${key} bs=10240 conv=sync