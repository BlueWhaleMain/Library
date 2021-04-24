# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
execute store result score @s libTemp run clear @s minecraft:tnt 0
scoreboard players set @s[gamemode=creative] libTemp 1
execute at @s[scores={libTemp=1..}] anchored eyes run function library:entity/player/method/launcher/tnt/shoot
