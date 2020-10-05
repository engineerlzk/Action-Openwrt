#!/bin/bash

echo "Apply custom.sh"

sed -i 's/DEPENDS.*/& \+luci-i18n-mwan3-zh-cn/g'  package/lean/luci-app-syncdial/Makefile
rm -rf package/feeds/routing/olsrd/patches/012-gpsd.patch
rm -rf package/lean/default-settings/files/zzz-default-settings
wget https://raw.githubusercontent.com/coolsnowwolf/lede/99222f49fd9f63eef575ac34f251280e6e97f3b3/package/lean/default-settings/files/zzz-default-settings -O package/lean/default-settings/files/zzz-default-settings


git clone https://github.com/CCnut/feed-netkeeper.git -b LUCI-LUA-UCITRACK                                 package/nk
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git                             package/luci-theme-infinityfreedom
git clone https://github.com/yangsongli/luci-theme-atmaterial.git                                        package/luci-theme-atmaterial
git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06                                     package/luci-theme-argon-jerrykuku
git clone https://github.com/tty228/luci-app-serverchan.git                                              package/luci-app-serverchan
git clone https://github.com/vernesong/OpenClash.git -b master                                           package/luci-app-openclash
git clone https://github.com/tindy2013/openwrt-subconverter.git                                          package/openwrt-subconverter




      


