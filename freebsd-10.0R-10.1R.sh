#!/bin/tcsh

echo "You'll want to upgrade ports/pkgng and confirm after this"

## Fetch update
freebsd-update fetch

## Upgrade to selected release
freebsd-update upgrade -r 10.1-RELEASE

## Post-install fetched updates
freebsd-update install
