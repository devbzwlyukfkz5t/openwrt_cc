#!/bin/bash

# Disable IPV6 ula prefix
# sed -i 's/^[^#].*option ula/#&/' /etc/config/network

# Check file system during boot
# uci set fstab.@global[0].check_fs=1
# uci commit fstab

# �̼�����
uci set system.@system[0].hostname=r13
uci set system.@system[0].timezone=CST-8
uci set system.@system[0].zonename=Asia/Shanghai
uci commit system

uci set wireless.radio0.country='US'
uci set wireless.radio0.disabled='0'
uci commit wireless
wifi reload

exit 0