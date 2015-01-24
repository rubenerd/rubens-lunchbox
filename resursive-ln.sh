#!/bin/sh

## Recursively build directory of symlinks
## Subdirectories also symlinked
## Desirable if you want to add files at root level

root=/some/directory
destination=.

for file in ${root}/*; do
  ln -s ${file} ${destination}
done
