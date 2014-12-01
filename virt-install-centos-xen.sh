#!/bin/sh

## CentOS 6 Xen HVM install, with VNC access
## Works decently, but Packer.io more flexible

name='centos-6'
ram=1024
cpus=1
description="CentOS 6 x86_64 Xen HVM"
location="http://mirror.internode.on.net/pub/centos/6.6/os/x86_64/"
disksize=2
network='bridge=xenbr0'
kickstart='centos-6-kickstart.cfg'

virt-install
    --connect xen:/// \
    --hvm \
    --name="${name}" \
    --ram="${ram}" \
    --vcpus="${cpus}" \
    --description="${description}" \
    --location="${location}" \
    --os-type="linux" \
    --disk "path=${name}.img,size=${disksize}" \
    --network="${network}" \
    --graphics vnc,listen=0.0.0.0 \
    --noautoconsole \
    --initrd-inject="${kickstart}" \
    --extra-args="text ks file:/${kickstart}"