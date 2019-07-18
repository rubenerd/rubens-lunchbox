#!/bin/sh

######
## /etc/rc.conf settings for running FreeBSD as a VirtualBox guest

sysrc hald_enable="YES"
sysrc dbus_enable="YES"
sysrc vboxguest_enable="YES"
sysrc vboxservice_enable="YES"
