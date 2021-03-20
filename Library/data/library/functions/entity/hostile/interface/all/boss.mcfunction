# Copyright by BlueWhale. All Rights Reserved.
## 通用
# 生命恢复
effect give @s minecraft:regeneration 2 0 true
# 抗性提升
effect give @s minecraft:resistance 2 0 true
# 抗火
effect give @s minecraft:fire_resistance 2 0 true
# 给予进度：危险
advancement grant @a[distance=..16,gamemode=survival,advancements={library:guide/danger=false}] only library:guide/danger
#
# 僵尸
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/boss
# 骷髅
execute if entity @s[type=minecraft:skeleton] run function library:entity/hostile/interface/skeleton/boss
