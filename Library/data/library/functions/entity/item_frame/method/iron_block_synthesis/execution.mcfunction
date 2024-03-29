# Copyright by BlueWhale. All Rights Reserved.
## 检查libTouhouCTime
scoreboard players set @s libScoreCheck 0
scoreboard players set @s[scores={libTouhouCTime=0..}] libScoreCheck 1
scoreboard players set @s[scores={libTouhouCTime=..-1}] libScoreCheck 1
scoreboard players set @s[scores={libScoreCheck=..0}] libTouhouCTime 0
#
## 吸收能量
data modify entity @s[nbt={Item:{tag:{id:"library:tick_arrow"}}}] Item set value {id:"minecraft:arrow",Count:1b}
data modify entity @s[nbt={Item:{tag:{id:"library:s_arrow"}}}] Item set value {id:"minecraft:arrow",Count:1b}
#
## 放电中
# 合成环
scoreboard players remove @s[tag=crafting_ring,nbt={Item:{id:"minecraft:paper",tag:{id:"library:crafting_ring"}}},scores={libTouhouCTime=1..}] libTouhouCTime 1
# 工厂环
scoreboard players remove @s[tag=factory_ring,nbt={Item:{id:"minecraft:paper",tag:{id:"library:factory_ring"}}},scores={libTouhouCTime=1..}] libTouhouCTime 1
#
# 给予进度：放电台
advancement grant @a[distance=..2,advancements={library:guide/iron_block_synthesis=false}] only library:guide/iron_block_synthesis
