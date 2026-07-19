/ip firewall filter

add chain=input protocol=tcp dst-port=22,8291 \
connection-state=new \
src-address-list=blacklist \
action=drop

add chain=input protocol=tcp dst-port=22,8291 \
connection-state=new \
action=add-src-to-address-list \
address-list=blacklist \
address-list-timeout=1d