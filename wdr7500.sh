#!/bin/bash
# 断网情况下 tailscale 占用率过高 -> 默认不要编译

# 编译出来有问题

./scripts/feeds update -a
./scripts/feeds install -a