#!/bin/bash
# 断网情况下 tailscale 占用率过高 -> 默认不要编译

# 修改默认IP
sed -i 's/192.168.1.1/192.168.101.6/g' package/base-files/files/bin/config_generate

./scripts/feeds update -a
./scripts/feeds install -a