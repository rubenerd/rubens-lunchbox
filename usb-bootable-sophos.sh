#!/bin/sh
## Creates bootable USB key of Sophos UTM ISO. Takes destination block device as argument

TARGET=$1

curl -OL http://download.astaro.com/UTM/v9/software_appliance/iso/asg-9.207-19.1.iso
curl -OL http://download.astaro.com/UTM/v9/software_appliance/iso/asg-9.207-19.1.iso.md5

md5sum -c $VERSION.md5 | grep 'OK' &> /dev/null

if [ $? != 0 ]; then
    echo "Incomplete or invalid file download. Please try again."
else
    isohybrid asg-9.207-19.1.iso
    dcfldd if=asg-9.207-19.1.iso of=/dev/$TARGET
fi
