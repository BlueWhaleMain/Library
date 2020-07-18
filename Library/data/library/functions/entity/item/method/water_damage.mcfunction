#Copyright by BlueWhale. All Rights Reserved.
execute store result score @s libTemp run data get entity @s Item.Count
kill @s[scores={libTemp=..1}]
execute store result entity @s[scores={libTemp=2..}] Item.Count byte 1 run scoreboard players remove @s libTemp 1
particle minecraft:bubble ~ ~1 ~ 0.2 0.2 0.2 0 1
#水泡