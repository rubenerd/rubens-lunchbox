#!/bin/sh

ifconfig $1 | grep ether | cut -d ' ' -f2