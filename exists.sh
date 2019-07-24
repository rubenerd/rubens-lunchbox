#!/bin/sh

function exists() {
    return command -v "$1" > /dev/null 2>&1
}