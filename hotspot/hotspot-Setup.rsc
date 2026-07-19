/ip hotspot profile

add name=HotspotProfile \
hotspot-address=192.168.50.1 \
login-by=http-pap,http-chap,cookie

/ip hotspot

add interface=bridge-hotspot \
profile=HotspotProfile \
address-pool=HotspotPool \
name=Hotspot