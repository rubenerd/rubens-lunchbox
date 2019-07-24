#!/bin/sh
 
device=${1}
gunzip -c ${device}.img.gz | dd of=/dev/${device} conv=sync,noerror bs=64K 
