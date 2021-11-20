# Copyright by BlueWhale. All Rights Reserved.
## 待在原地
execute store result entity @s WanderTarget.X int 1 run data get entity @s Pos[0]
execute store result entity @s WanderTarget.Y int 1 run data get entity @s Pos[1]
execute store result entity @s WanderTarget.Z int 1 run data get entity @s Pos[2]
#
execute store result score @s libTemp run data get entity @s DespawnDelay
# 多待一分钟，最多三天
execute store result entity @s[scores={libTemp=..72000}] DespawnDelay int 1 run scoreboard players add @s libTemp 1200
# 生成粒子：开心的村民
execute anchored eyes run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 0 10
# 给予进度：挽留商人
advancement grant @p[distance=..16,advancements={library:trigger/villager_trade=true}] only library:guide/stay_trader
