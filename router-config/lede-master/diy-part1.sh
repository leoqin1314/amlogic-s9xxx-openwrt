#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Uncomment a feed source
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
# sed -i 's/\"#src-git\"/\"src-git\"/g' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git istore https://github.com/linkease/istore' feeds.conf.default
sed -i '1i src-git store https://github.com/linkease/istore' feeds.conf.default
sed -i '1i src-git third https://github.com/jjm2473/openwrt-third' feeds.conf.default
sed -i '1i src-git nas https://github.com/linkease/nas-packages' feeds.conf.default
sed -i '1i src-git nas_luci https://github.com/linkease/nas-packages-luci' feeds.conf.default
# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

