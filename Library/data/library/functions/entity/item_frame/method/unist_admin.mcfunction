# Copyright by BlueWhale. All Rights Reserved.
data modify entity @s Fixed set value 0
data modify entity @s Invisible set value 0
data modify entity @s ItemDropChance set value 1.0
tag @s remove admin
execute at @s run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0 50
# 生成粒子：烟
