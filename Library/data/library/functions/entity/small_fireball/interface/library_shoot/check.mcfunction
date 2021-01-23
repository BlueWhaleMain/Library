# Copyright by BlueWhale. All Rights Reserved.
execute at @s[tag=library_shoot_spy] if entity @e[distance=..2,tag=library_shoot_target] run function library:entity/small_fireball/method/spy_target
# 瞄准
tag @s[tag=track] add target_hostile
# 跟踪弹
execute store result entity @s power[0] double 0.000099 run data get entity @s power[0] 10000
execute store result entity @s power[1] double 0.000099 run data get entity @s power[1] 10000
execute store result entity @s power[2] double 0.000099 run data get entity @s power[2] 10000
# 倍率0.99
execute at @s[tag=target_hostile,tag=!library_shoot_spy] if entity @e[distance=..32,type=#library:hostile] run function library:entity/small_fireball/method/spy_hostile
# 狙敌对生物
execute at @s[tag=target_player,tag=!library_shoot_spy] if entity @p[distance=..32,gamemode=survival] run function library:entity/small_fireball/method/spy_player
# 狙玩家
execute at @s run fill ~-8 ~ ~-8 ~8 ~ ~8 minecraft:air replace minecraft:fire
# 移除火
execute at @s run fill ~-8 ~-1 ~-8 ~8 ~ ~8 minecraft:air replace minecraft:fire
# 移除火
