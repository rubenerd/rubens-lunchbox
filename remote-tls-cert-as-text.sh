#!/bin/sh

## Prints out TLS certificate as human-readable text

_URL="example.com"

echo | openssl s_client -servername $_URL -connect $_URL:443 | openssl x509 -text

