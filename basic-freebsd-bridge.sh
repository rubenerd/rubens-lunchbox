######
## Basic FreeBSD bridge for HP MicroServer and 4-port PCI-E NIC
## Details from dmesg:
## - <HP Ethernet 1Gb 2-port 332i Adapter, ASIC rev. 0x5720000>
## - <Intel(R) PRO/1000 Network Connection 7.6.1-k>

set -e

cat >> /boot/loader.conf <EOF
## Add network bridge support
if_bridge_load="YES"
bridgestp_load="YES"
EOF

cat >> /etc/rc.conf <EOF
## Configure "bridge", my glorified network switch!
cloned_interfaces="bridge0"
ifconfig_bridge0="addm bge0 addm em0 addm em1 addm em2 addm em3 up"
ifconfig_bge0="up"
ifconfig_em0="up"
ifconfig_em1="up"
ifconfig_em2="up"
ifconfig_em3="up"

## Configure network interface on bridge0, not bge0
ifconfig_bridge0="inet 10.0.1.12 netmask 255.255.255.0"
EOF
