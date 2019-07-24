#!/usr/bin/env python
 
import base64

stringtest="hello, Guido"

encoded = base64.b64encode(stringtest)
print encoded

decoded = base64.b64decode(encoded)
print decoded