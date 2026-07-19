/ip address

add address=192.168.50.1/24 interface=bridge-hotspot

/ip dhcp-server

add interface=bridge-hotspot \
address-pool=HotspotPool \
disabled=no

/ip dhcp-server network

add address=192.168.50.0/24 \
gateway=192.168.50.1 \
dns-server=192.168.50.1