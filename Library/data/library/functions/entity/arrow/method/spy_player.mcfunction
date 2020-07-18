#Copyright by BlueWhale. All Rights Reserved.
execute store result score #PlayerPos libTemp run data get entity @p[distance=..64,gamemode=survival] Pos[0] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[0] 1000
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation #PlayerPos libTemp -= #EntityArrowPos libTemp
execute store result score #PlayerPos libTemp run data get entity @p[distance=..64,gamemode=survival] Pos[1] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[1] 1000
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation #PlayerPos libTemp -= #EntityArrowPos libTemp
execute store result score #PlayerPos libTemp run data get entity @p[distance=..64,gamemode=survival] Pos[2] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[2] 1000
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation #PlayerPos libTemp -= #EntityArrowPos libTemp
tag @s remove target_player
