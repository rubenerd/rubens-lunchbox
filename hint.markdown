## Detect xenserver VNC port for VM

Forked from [https://gist.github.com/r72cccp/f44c9e7a1e1ab6af288c](r72cccp).

## Select your vm

    xe vm-list

## Detect dom-id for that VM

    xe vm-param-list uuid=<$SERVER-UUID> | grep dom-id
  
## Read VNC port by that dom-id

    xenstore-read /local/domain/<$DOM-ID>/console/vnc-port

