#!/bin/sh

destination="/usr/local/packer"
latest="0.7.2"

mkdir -P ${destination}
cd ${destination}
curl -OL "https://dl.bintray.com/mitchellh/packer/packer_${latest}_linux_amd64.zip"
unzip packer_${latest}_linux_amd64.zip
rm $packer_${latest}_linux_amd64.zip