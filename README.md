OpenWrt Cloud Compiler

https://github.com/P3TERX/Actions-OpenWrt

https://github.com/openwrt/openwrt/branches/all

rm .config && nano .config && make menuconfig

make defconfig && ./scripts/diffconfig.sh > seed.config
