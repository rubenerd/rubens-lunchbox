#!/bin/sh

######
## Script to launch Windows NT 3.51 on QEMU without overflow errors

_INSTALLER_ISO="install.iso"
_INSTALL_DISK1="disk1.img"
_TARGET_BLOCK="/dev/adaX"

qemu-system-i386        \
    -machine type=isapc \
    -cpu 486            \
    -boot once=a        \
    -m size=32M         \
    -k en-us            \
    -soundhw sb16,adlib \
    -name "qemu-nt351"  \
    -drive file="$_INSTALLER_DISK1",if=floppy,media=disk              \
    -drive file="$_TARGET_BLOCK",if=ide,index=0,media=disk,format=raw \
    -drive file="$_INSTALLER_ISO",if=ide,index=1,media=cdrom
