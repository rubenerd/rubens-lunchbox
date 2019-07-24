#!/bin/sh

## Bootstrap simple Xen Dom0 with:
## - Bridged networking, LAN DHCP
## - SSH tunneled VNC access for DomUs
## - Using Ubuntu instead of Debian for Xen 4.4

## Elevate and update
sudo -s
apt-get update
apt-get dist-upgrade

## Install hypervisor stuff
apt-get install qemu-system-x86
apt-get install tightvncserver
apt-get install xtightvncserver
apt-get install xen-hypervisor-4.4-amd64

## Configure networking
cat > /etc/network/interfaces <<BIRDISWORD
## Loopback network interface
auto lo
iface lo inet loopback

## Xen bridge interface
auto xenbr0
iface xenbr0 inet dhcp
    bridge_ports eth0

## Primary network interface
auto eth0
iface eth0 inet dhcp

## EOF

BIRDISWORD

## Ubuntu Xen package configured to configure GRUB boot priority. Debian
## will need manual boot order update for Xen.
shutdown -r now
