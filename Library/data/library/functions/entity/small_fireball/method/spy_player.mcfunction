# Copyright by BlueWhale. All Rights Reserved.
execute store result score #PlayerPos libTemp run data get entity @p[distance=..32,gamemode=survival] Pos[0] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[0] 10000
execute store result entity @s power[0] double 0.000001 run scoreboard players operation #PlayerPos libTemp -= #EntitySmallFireballPos libTemp
# 跟踪X
execute store result score #PlayerPos libTemp run data get entity @p[distance=..32,gamemode=survival] Pos[1] 10000
scoreboard players add #PlayerPos libTemp 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[1] 10000
execute store result entity @s power[1] double 0.000001 run scoreboard players operation #PlayerPos libTemp -= #EntitySmallFireballPos libTemp
# 跟踪Y
execute store result score #PlayerPos libTemp run data get entity @p[distance=..32,gamemode=survival] Pos[2] 10000
execute store result score #EntitySmallFireballPos libTemp run data get entity @s Pos[2] 10000
execute store result entity @s power[2] double 0.000001 run scoreboard players operation #PlayerPos libTemp -= #EntitySmallFireballPos libTemp
# 跟踪Z
tag @s remove target_player
# 结束标记
