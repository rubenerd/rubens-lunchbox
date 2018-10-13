#!/bin/sh

######
## Converts UNIX seconds format to date
## Works with *BSD, not GNU

date -r $1 +%Y-%m-%dT%H:%M:%S%z

