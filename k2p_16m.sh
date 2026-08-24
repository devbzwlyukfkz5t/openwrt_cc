#!/bin/bash
# 断网情况下 tailscale 占用率过高 -> 默认不要编译

# 修改默认IP
sed -i 's/192.168.1.1/192.168.101.1/g' package/base-files/files/bin/config_generate

# mt7621 超频
cp -f $GITHUB_WORKSPACE/scripts/999-mt7621-cpu-overclock.patch target/linux/ramips/patches-5.15/999-mt7621-cpu-overclock.patch

./scripts/feeds update -a
./scripts/feeds install -a