#!/bin/sh

######
## Recompresses ZIP files to tar.xz
## - Extracts to temp folder to prevent tarbombs 
## - Recontainerises as tar

set -e
set -x

_source=`echo $1 | sed "s/\.zip\$//"`;

mkdir "$_source"
unzip -d "./$_source/" "$1"
tar -cvf "${_source}.tar" "./$_source/"
xz -9vv "${_source}.tar"
rm -rf "./$_source/"
rm -rf "$1"