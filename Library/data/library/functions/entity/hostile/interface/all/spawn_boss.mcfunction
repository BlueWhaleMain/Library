#Copyright by BlueWhale. All Rights Reserved.
# 僵尸
execute if entity @s[type=minecraft:zombie] run function library:entity/hostile/interface/zombie/spawn_boss
# 标记
tag @s add boss
