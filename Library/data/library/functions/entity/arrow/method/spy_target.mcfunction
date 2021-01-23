# Copyright by BlueWhale. All Rights Reserved.
execute store result score #EntityTargetPos libTemp run data get entity @e[distance=..2,sort=nearest,tag=library_shoot_target,limit=1] Pos[0] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[0] 1000
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation #EntityTargetPos libTemp -= #EntityArrowPos libTemp
execute store result score #EntityTargetPos libTemp run data get entity @e[distance=..2,sort=nearest,tag=library_shoot_target,limit=1] Pos[1] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[1] 1000
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation #EntityTargetPos libTemp -= #EntityArrowPos libTemp
execute store result score #EntityTargetPos libTemp run data get entity @e[distance=..2,sort=nearest,tag=library_shoot_target,limit=1] Pos[2] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[2] 1000
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation #EntityTargetPos libTemp -= #EntityArrowPos libTemp
tag @s remove library_shoot_spy
kill @e[distance=..2,sort=nearest,type=minecraft:armor_stand,tag=library_shoot_target,limit=1]
