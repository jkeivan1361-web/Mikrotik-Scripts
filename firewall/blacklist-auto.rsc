/ip firewall filter

add chain=input protocol=tcp \
dst-port=22,8291 \
connection-state=new \
src-address-list=!whitelist \
action=add-src-to-address-list \
address-list=blacklist \
address-list-timeout=30m

add chain=input src-address-list=blacklist action=drop