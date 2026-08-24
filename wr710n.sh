#!/bin/bash

# 修改默认IP
# sed -i 's/192.168.1.1/192.168.102.2/g' package/base-files/files/bin/config_generate

./scripts/feeds update -a
./scripts/feeds install -a