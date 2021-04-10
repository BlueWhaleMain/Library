# Copyright by BlueWhale. All Rights Reserved.
execute store result score #EntityBossPos libTemp run data get entity @e[distance=..16,sort=nearest,type=minecraft:zombie,tag=boss,limit=1] Pos[0] 10000
execute store result score #EntitySummonPos libTemp run data get entity @s Pos[0] 10000
execute store result entity @s Motion[0] double 0.000001 run scoreboard players operation #EntityBossPos libTemp -= #EntitySummonPos libTemp
# 跟踪X
execute store result score #EntityBossPos libTemp run data get entity @e[distance=..16,sort=nearest,type=minecraft:zombie,tag=boss,limit=1] Pos[1] 10000
execute store result score #EntitySummonPos libTemp run data get entity @s Pos[1] 10000
execute store result entity @s Motion[1] double 0.000001 run scoreboard players operation #EntityBossPos libTemp -= #EntitySummonPos libTemp
# 跟踪Y
execute store result score #EntityBossPos libTemp run data get entity @e[distance=..16,sort=nearest,type=minecraft:zombie,tag=boss,limit=1] Pos[2] 10000
execute store result score #EntitySummonPos libTemp run data get entity @s Pos[2] 10000
execute store result entity @s Motion[2] double 0.000001 run scoreboard players operation #EntityBossPos libTemp -= #EntitySummonPos libTemp
# 跟踪Z
