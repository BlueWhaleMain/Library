#Copyright by BlueWhale. All Rights Reserved.
execute store result score #EntityHostilePos libTemp run data get entity @e[distance=..64,sort=nearest,type=#library:hostile,limit=1] Pos[0] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[0] 1000
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation #EntityHostilePos libTemp -= #EntityArrowPos libTemp
execute store result score #EntityHostilePos libTemp run data get entity @e[distance=..64,sort=nearest,type=#library:hostile,limit=1] Pos[1] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[1] 1000
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation #EntityHostilePos libTemp -= #EntityArrowPos libTemp
execute store result score #EntityHostilePos libTemp run data get entity @e[distance=..64,sort=nearest,type=#library:hostile,limit=1] Pos[2] 1000
execute store result score #EntityArrowPos libTemp run data get entity @s Pos[2] 1000
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation #EntityHostilePos libTemp -= #EntityArrowPos libTemp
tag @s remove target_hostile
