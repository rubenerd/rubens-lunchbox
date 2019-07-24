#!/bin/sh

device=${1}
dd if=/dev/${device} conv=sync,noerror bs=64K | gzip -c  > ${device}.img.gz