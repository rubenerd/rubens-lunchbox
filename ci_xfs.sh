#!/bin/sh

## ASCII only case-insensitive
## CRC metadata checks
## Separate free inode btree index (better performance on old FSs)
## Tested on Jessie, Trusty 14.04 XFS doesn't have -m

label=${1}
target=${2}

mkfs.xfs -m crc=1,finobt=1 -n version=ci -L ${label} ${target}