#!/bin/bash
# 断网情况下 tailscale 占用率过高 -> 默认不要编译

# mt7628 超频，只兼容5.15版本，其它版本要修改路径
cp -f $GITHUB_WORKSPACE/scripts/999-mt7628-cpu-overclock.patch target/linux/ramips/patches-5.15/999-mt7628-cpu-overclock.patch

./scripts/feeds update -a
./scripts/feeds install -a
