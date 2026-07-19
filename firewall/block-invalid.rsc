# Drop Invalid Connections

/ip firewall filter

add chain=input connection-state=invalid action=drop comment="Drop Invalid Input"

add chain=forward connection-state=invalid action=drop comment="Drop Invalid Forward"