#!/bin/sh

[ -x "$(command -v qemu-img)" ] &&
    qemu-img convert -f vpc -O raw ${1} ${1}.raw