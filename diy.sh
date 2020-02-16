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
wget -O tmp/hosts https://raw.githubusercontent.com/chenxiccc/Customfiles/master/hosts
wget -O tmp/dhcp.tmp https://raw.githubusercontent.com/chenxiccc/Customfiles/master/x86/dhcp
cat tmp/dhcp.tmp >> package/network/services/dnsmasq/files/dhcp.conf
rm tmp/dhcp.tmp
wget -O tmp/firewall.tmp https://raw.githubusercontent.com/chenxiccc/Customfiles/master/x86/firewall
cat tmp/firewall.tmp >> package/network/config/firewall/files/firewall.config
rm tmp/firewall.tmp
