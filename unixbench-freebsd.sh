#!/bin/tcsh

## Yes, it needs GCC
pkg install gcc gmake

## You'll want to mirror or find an alternative source, 
## Google Code is not long for this world
fetch https://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz
tar czvf UnixBench5.1.3.tgz
cd UnixBench

## Fix references to make, gcc
ln -s /usr/local/bin/gcc46 /usr/bin/gcc
sed -i '' -e 's/"make/"gmake/g' ./Run

## Build, run
gmake
./Run
