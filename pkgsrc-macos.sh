#!/bin/sh

_TARGET="/opt"
_BRANCH="pkgsrc-2017Q3"

cd "$_TARGET"

######
## CVS is official source, but mirror also available for gits like me!
## cvs -d anoncvs@anoncvs.netbsd.org:/cvsroot checkout pkgsrc
git clone https://github.com/NetBSD/pkgsrc.git
cd pkgsrc
git checkout "$_BRANCH"

######
## With updates from http://wiki.netbsd.org/pkgsrc/pkgsrc_64bit_osx/
cd bootstrap
./bootstrap --abi=64 --prefer-pkgsrc=yes --unprivileged --compiler=clang --prefix="$_TARGET"