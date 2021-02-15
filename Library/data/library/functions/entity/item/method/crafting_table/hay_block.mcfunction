# Copyright by BlueWhale. All Rights Reserved.
kill @e[distance=..1,nbt={Item:{id:"minecraft:wheat",Count:16b}},type=minecraft:item,limit=1]
# 清除小麦
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:hay_block",Count:1b}}
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:wheat_seeds",Count:48b}}
# 脱粒
playsound minecraft:block.grass.place voice @a ~ ~ ~ 1.0
# 播放音效：草块放置
kill
# 清除自身
