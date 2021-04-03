# Copyright by BlueWhale. All Rights Reserved.
# 僵尸
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/select_boss
# 骷髅（附近必须有19级及以上玩家）
execute if entity @s[type=minecraft:skeleton] if entity @p[level=19..] run function library:entity/hostile/interface/skeleton/select_boss
