#!/bin/sh

######
## Convert wav/aiff to aac/m4a using macOS's high quality but inscrutable
## afconvert tool. Assumes 320 kbps

afconvert "$1" -o "$1.m4a" -q 127 -b 320000 -f m4af -d aac

