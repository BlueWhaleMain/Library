# Copyright by BlueWhale. All Rights Reserved.
data modify entity @s Fixed set value 1
data modify entity @s Invisible set value 1
data modify entity @s ItemDropChance set value 0.0
tag @s add admin
execute at @s run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0 50
# 生成粒子：烟花
