#!/bin/sh
## Protect oneself from wget's symlink attack (CVE-2014-4877)
## Good idea to do this even if you update to 1.16

echo 'retr-symlinks=on' >> /usr/local/etc/wgetrc
