#!/bin/sh

## I used to always pipe (dcfl)dd to gzip over ssh
## Why not just use ssh's compression that uses gzip anyway?

_SOURCE="/dev/xvdb"
_DEST="/dev/xvdb"
_HOST="hostname"

ssh -C "$_HOST" dcfldd if="$_SOURCE" | dcfldd of="$_DEST"
