/ip firewall filter

add chain=input connection-state=established,related action=accept

add chain=input connection-state=invalid action=drop

add chain=input in-interface=WAN action=drop