# Copyright by BlueWhale. All Rights Reserved.
scoreboard players set @s libTemp 0
##填充工作台
execute store result score @s libTemp run clear @s minecraft:crafting_table 0
execute if entity @s[scores={libTemp=1..}] run function library:entity/player/method/crafting_ring/do_fill
#
