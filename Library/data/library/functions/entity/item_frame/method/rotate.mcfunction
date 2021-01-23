# Copyright by BlueWhale. All Rights Reserved.
execute store result score @s libTemp run data get entity @s ItemRotation 1
scoreboard players add @s libTemp 1
execute if score @s libTemp matches 8.. run scoreboard players set @s libTemp 0
execute store result entity @s ItemRotation byte 1 run scoreboard players get @s libTemp
