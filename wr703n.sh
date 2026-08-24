#!/bin/bash

# 修改默认IP
# sed -i 's/192.168.1.1/192.168.102.2/g' package/base-files/files/bin/config_generate

#cp -f $GITHUB_WORKSPACE/scripts/011-fix-sigstksz.patch                                         tools/m4/patches/011-fix-sigstksz.patch
#cp -f $GITHUB_WORKSPACE/scripts/000-openwrt-legacy-buildroot-fixes-fix-mklibs-error.patch      000-openwrt-legacy-buildroot-fixes-fix-mklibs-error.patch
#patch -p1 -i 000-openwrt-legacy-buildroot-fixes-fix-mklibs-error.patch

#cp -f $GITHUB_WORKSPACE/scripts/001-openwrt-legacy-buildroot-fixes-include-limits-header.patch tools/cmake/patches/001-openwrt-legacy-buildroot-fixes-include-limits-header.patch
#cp -f $GITHUB_WORKSPACE/scripts/140-openwrt-legacy-gcc-10-fix.patch                            tools/squashfs/patches/140-openwrt-legacy-gcc-10-fix.patch

#cp -f $GITHUB_WORKSPACE/scripts/1001-fix-reload1-compile-error.patch                           toolchain/gcc/patches/5.4.0/1001-fix-reload1-compile-error.patch

#cp -f $GITHUB_WORKSPACE/scripts/1002-fix-multiple-yylloc-definition-compile-error.patch        target/linux/ar71xx/patches-4.4/1002-fix-multiple-yylloc-definition-compile-error.patch

./scripts/feeds update -a
./scripts/feeds install -a