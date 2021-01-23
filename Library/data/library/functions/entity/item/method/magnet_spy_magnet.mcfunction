# Copyright by BlueWhale. All Rights Reserved.
execute store result score #EntityMagnetPos libTemp run data get entity @e[distance=1..16,sort=nearest,tag=magnet,limit=1] Pos[0] 1000
execute store result score #EntityItemPos libTemp run data get entity @s Pos[0] 1000
execute store result entity @s Motion[0] double 0.000025 run scoreboard players operation #EntityMagnetPos libTemp -= #EntityItemPos libTemp
# 跟踪X
execute store result score #EntityMagnetPos libTemp run data get entity @e[distance=1..16,sort=nearest,tag=magnet,limit=1] Pos[1] 1000
execute store result score #EntityItemPos libTemp run data get entity @s Pos[1] 1000
scoreboard players remove #EntityMagnetPos libTemp 800
execute store result entity @s Motion[1] double 0.000025 run scoreboard players operation #EntityMagnetPos libTemp -= #EntityItemPos libTemp
# 跟踪Y
execute store result score #EntityMagnetPos libTemp run data get entity @e[distance=1..16,sort=nearest,tag=magnet,limit=1] Pos[2] 1000
execute store result score #EntityItemPos libTemp run data get entity @s Pos[2] 1000
execute store result entity @s Motion[2] double 0.000025 run scoreboard players operation #EntityMagnetPos libTemp -= #EntityItemPos libTemp
# 跟踪Z
