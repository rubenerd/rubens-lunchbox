#!/bin/sh

######
## Script to envoke ddrescue for data recovery

_source="$1"     ## source block device
_name="$2"       ## destination name
_extension="$3"  ## iso (for cd/dvd) or img (for disks)
_sectorsize=512  ## 2048 (for cd/dvd) or 512 (for disks, default)

_help() {
    printf "%s\n" "Use: rescue.sh <source device> <destination> <iso/img>" >&2;
    exit 1;
}

## Check ddrescue installed
if ! `command -v ddrescue >/dev/null 2>&1`; then
    printf "%s\n" "Dependency ddrescue not found." >&2;
    exit 1;
fi

## Check number of arguments
[ $# -ne 3 ] && _help

## Set sector size
[ $_extension == "iso" ] && _sectorsize=2048

## Run ddrescue
ddrescue --direct --retry-passes=4 --sector-size $_sectorsize \
    "$_source" "${_name}.$_type" "${_name}.log"
