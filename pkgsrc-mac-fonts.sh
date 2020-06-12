#!/bin/sh

######
## pkgsrc-mac-fonts.sh
## Install fonts in macOS after downloading using pkgsrc
## Symlinks don't work, alas
## 2020-06

_FONT_TO_INSTALL="$1"

sudo pkgin install "$_FONT_TO_INSTALL"
sudo cp -iv /opt/pkg/share/fonts/X11/OTF/* /Library/Fonts/
sudo cp -iv /opt/pkg/share/fonts/X11/TTF/* /Library/Fonts/

