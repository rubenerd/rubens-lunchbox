#!/bin/sh

######
## Perlmagick shell vars for macOS
## Less useful now Homebrew doesn't allow build options (oh dear)
##

export PATH="/usr/local/opt/imagemagick@6/bin:/usr/local/sbin:$PATH"

## For Perl Image::Magick
export LDFLAGS="-L/usr/local/opt/imagemagick@6/lib"
export CPPFLAGS="-I/usr/local/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig"
