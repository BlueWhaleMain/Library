# Copyright by BlueWhale. All Rights Reserved.
# 无敌
effect give @s minecraft:resistance 1 255 true
execute store success score @s libTemp run tp @a[distance=8..16,level=19..,gamemode=survival] @s
scoreboard players set @a[distance=8..16,level=19..,gamemode=survival] libAtkFever -60
scoreboard players set @a[distance=8..16,level=19..,gamemode=survival] libAtkValue 0
# 生成粒子：灵魂火焰
particle minecraft:soul_fire_flame ^0.15 ^1.65 ^0.05 0.01 0.01 0.01 0 10
execute if score @s libTemp matches 1.. run function library:entity/hostile/method/skeleton/flash
# 消耗
scoreboard players remove @s libDefFever 1
tag @s remove tp
