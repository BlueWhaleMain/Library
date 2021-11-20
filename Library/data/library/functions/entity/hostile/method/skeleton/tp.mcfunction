# Copyright by BlueWhale. All Rights Reserved.
# 无敌
data merge entity @s {NoGravity:1b,Invulnerable:1b}
# 无视玩家
attribute @s minecraft:generic.follow_range base set 0
# 消除玩家战意
scoreboard players set @a[distance=8..16,level=19..,gamemode=survival] libAtkFever -60
scoreboard players set @a[distance=8..16,level=19..,gamemode=survival] libAtkValue 0
# 困住玩家
execute store success score @s libTemp run tp @a[distance=8..16,level=19..,gamemode=survival] @s
execute if score @s libTemp matches 1.. run function library:entity/hostile/method/skeleton/flash
# 消耗
scoreboard players remove @s libDefFever 1
# 生成粒子：灵魂火焰
particle minecraft:soul_fire_flame ^0.15 ^1.65 ^0.05 0.01 0.01 0.01 0 10
# 生成粒子：掉落水
execute at @s anchored eyes run particle minecraft:falling_water ~ ~ ~ 0.01 0.01 0.01 0 10
tag @s remove tp
