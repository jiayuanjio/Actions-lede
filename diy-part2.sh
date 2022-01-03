#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改ip地址
sed -i 's/192.168.1.1/192.168.1.254/g' package/base-files/files/bin/config_generate

#修正连接数（by ベ七秒鱼ベ）
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf

#替换默认主题

sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile

#git clone https://github.com/kiddin9/openwrt-packages.git package/openwrt-packages


#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
#git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
#git clone https://github.com/kiddin9/luci-app-dnsfilter.git package/luci-app-dnsfilter
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
