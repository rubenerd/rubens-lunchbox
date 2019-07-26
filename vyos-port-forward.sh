set nat destination rule 100 description "Port forward from external eth0 inteface to internal network on eth1"
set nat destination rule 100 inbound-interface eth0
set nat destination rule 100 protocol tcp
set nat destination rule 100 translation address $SERVER_TO_DIRECT_REQUESTS_TO
set nat destination rule 100 translation port $PORT_TO_DIRECT_TO_ABOVE_SERVER
