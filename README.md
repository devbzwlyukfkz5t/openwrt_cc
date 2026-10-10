OpenWrt Cloud Compiler

- https://github.com/coolsnowwolf/lede
- https://github.com/P3TERX/Actions-OpenWrt
- https://github.com/openwrt/openwrt/branches/all

rm .config && nano .config && make menuconfig

make defconfig && ./scripts/diffconfig.sh > seed.config

Select Samba and Storage packages
Navigate through the menu and enable (mark as built-in * or package M):
 - Base system / block-mount
 - Kernel modules -> USB Support -> kmod-usb-storage
 - Kernel modules -> Filesystems -> kmod-fs-ext4 (or your preferred filesystem)
 - Network -> Fileserver -> samba4-server (and/or luci-app-samba4 for the web interface)
