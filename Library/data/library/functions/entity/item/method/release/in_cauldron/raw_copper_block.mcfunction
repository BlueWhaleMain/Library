# Copyright by BlueWhale. All Rights Reserved.
# 生成粗铜块
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:raw_copper_block"},Motion:[0.0d,0.5d,0.0d],Time:1}
# 播放音效：方块放置
playsound minecraft:block.stone.place voice @a ~ ~ ~ 1.0
# 清除自身
kill
