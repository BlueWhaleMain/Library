# Copyright by BlueWhale. All Rights Reserved.
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:slime_block",Count:1b}}
# 生成粘液块
playsound minecraft:entity.slime.death_small voice @a ~ ~ ~ 1.0
# 播放音效：小型史莱姆死亡
kill
# 清除自身
