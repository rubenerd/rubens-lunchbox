#!/bin/sh

######
## Convert Hyper-V images to raw block devices using VBoxManage
## For when qemu-img doesn't work

_SOURCE="disk.vdi"
_TARGET="disk.img"

## Location on FreeBSD
_BINARY="/usr/local/bin/VBoxManage"

case `uname` in
    Darwin)
        _BINARY="/Applications/VirtualBox.app/Contents/MacOS/VBoxManage"
        ;;
    Linux)
        _BINARY="/usr/bin/VBoxManage"
        ;;
    NetBSD)
        _BINARY="/usr/pkg/bin/VBoxManage"
        ;;
esac

## Should autodetect the disk format
$_BINARY clonehd "$_SOURCE" "$_TARGET" --format raw

