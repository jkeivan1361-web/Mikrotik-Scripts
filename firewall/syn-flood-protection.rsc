/ip firewall filter

add chain=input protocol=tcp \
tcp-flags=syn \
connection-limit=30,32 \
action=drop