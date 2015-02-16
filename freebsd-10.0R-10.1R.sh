#!/bin/tcsh

echo "You'll want to upgrade ports/pkgng and confirm after this"

freebsd-update fetch
freebsd-update upgrade -r 10.1-RELEASE