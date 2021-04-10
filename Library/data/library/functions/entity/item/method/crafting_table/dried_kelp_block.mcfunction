# Copyright by BlueWhale. All Rights Reserved.
kill @e[distance=..1,nbt={Item:{id:"minecraft:dried_kelp",Count:64b}},type=minecraft:item,limit=1]
# 清除干海带
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:dried_kelp_block"},Motion:[0.0d,0.4d,0.0d],Time:1}
# 打捆
playsound minecraft:block.grass.place voice @a ~ ~ ~ 1.0
# 播放音效：草块放置
kill
# 清除自身
