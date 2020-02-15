#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.31.200/g' package/base-files/files/bin/config_generate
wget -O package/network/services/dnsmasq/files/dhcp.conf https://raw.githubusercontent.com/chenxiccc/Customfiles/master/dhcp
wget -O package/base-files/files/etc/hosts https://raw.githubusercontent.com/chenxiccc/Customfiles/master/hosts
wget -O package/network/config/firewall/files/firewall.config https://raw.githubusercontent.com/chenxiccc/Customfiles/master/firewall
