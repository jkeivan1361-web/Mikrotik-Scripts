/ip firewall filter

add chain=input protocol=tcp \
psd=21,3s,3,1 \
action=add-src-to-address-list \
address-list=PortScanner \
address-list-timeout=7d

add chain=input src-address-list=PortScanner action=drop