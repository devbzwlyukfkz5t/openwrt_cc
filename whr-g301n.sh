#!/bin/bash
# 断网情况下 tailscale 占用率过高 -> 默认不要编译

#			partition@40000 {
#				compatible = "denx,uimage";
#				reg = <0x40000 0x3a0000>; 0x790000-0x40000=0x750000 3a0000->750000
#				label = "firmware";
#			};
#
#			partition@3e0000 {
#				reg = <0x3e0000 0x10000>; 0x7a0000-0x10000=0x790000 3e0000->790000
#				label = "user_property";
#				read-only;
#			};
#
#			partition@3f0000 {
#				reg = <0x3f0000 0x10000>; 0x3f0000+0x10000=0x400000
#                                         0x7b0000-0x10000=0x7a0000 3f0000->7a0000

# sed -i 's/"Buffalo WHR-G301N";/"Buffalo WHR-G301N (8M)";/g' target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
# sed -i 's/<0x40000 0x3a0000>/<0x40000 0x750000>/g'          target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
# sed -i 's/partition@3e0000/partition@790000/g'              target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
# sed -i 's/<0x3e0000 0x10000>/<0x790000 0x10000>/g'          target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
# sed -i 's/partition@3f0000/partition@7a0000/g'              target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
# sed -i 's/<0x3f0000 0x10000>/<0x7a0000 0x10000>/g'          target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
# sed -i 's/3712k/7936k/g'                                    target/linux/ath79/image/tiny.mk

# 修改默认IP
sed -i 's/192.168.1.1/192.168.102.2/g' package/base-files/files/bin/config_generate

# git clone --depth=1 https://github.com/newkit/luci-app-wifischedule.git package/wifischedule

./scripts/feeds update -a
./scripts/feeds install -a