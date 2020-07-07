#!/bin/sh

######
## Get filename and extension
## Alternative to using basename if extension unknown

_FILE=$1

_NAME=${_FILE%.*}
_EXT=${_FILE#$_NAME.}

