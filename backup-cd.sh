#!/bin/sh

_source="$1"
_name="$2"

ddrescue --direct --retry-passes=4 "$_source" "$_name.img" "$_name.log"
img2iso "$_name.img" $_name.iso"
