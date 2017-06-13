#!/bin/sh

## I always forget the syntax
## Can also substitute sha256 and rsa:2048, if needed

_PRIVATE="private.key"
_CSR="server.csr"

openssl -req -nodes -sha512 \
    -newkey rsa:4096        \
    -keyout "$_PRIVATE"     \
    -out "$_SERVER" 
