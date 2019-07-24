#!/usr/bin/awk -f

## Look mum, no shell script pipes!

BEGIN {
    print ARGV[1]
}
