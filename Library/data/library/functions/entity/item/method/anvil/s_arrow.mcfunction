# Copyright by BlueWhale. All Rights Reserved.
kill @e[distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b}},type=minecraft:item,limit=1]
# 清除红石
particle minecraft:smoke ~ ~ ~ 0.5 0.1 0.5 0 50
# 生成粒子：烟
loot spawn ~ ~ ~ loot library:items/s_arrow
# 生成秒箭
playsound minecraft:block.anvil.use voice @a ~ ~ ~ 1.0
# 播放音效：铁砧使用
kill
# 清除自身
