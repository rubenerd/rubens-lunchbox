#!/bin/tcsh

freebsd-update fetch
freebsd-update upgrade -r 10.1-RELEASE

echo "Rebooting for new kernel. Run freebsd-update install again after"
echo "You'll also want to upgrade ports/pkgng and confirm after this"
shutdown -r now