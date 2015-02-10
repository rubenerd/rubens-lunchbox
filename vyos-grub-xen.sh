#!/bin/sh

grub_config="/boot/grub/grub.conf"
xen_serial=115200

sudo -s

## Boot options are kvm (1), serial (2) and USB (3). Xen uses serial
sed -i -e 's/default=0/default=1/' ${grub_config}

## Set Xen serial console speed, defined muliple places
sed -i -e 's/9600/${xen_serial}/g' ${grub_config}

## Other options are invalid, so boot immediately
sed -i -e 's/boot_delay=5/boot_delay=0/' ${grub_config}

exit