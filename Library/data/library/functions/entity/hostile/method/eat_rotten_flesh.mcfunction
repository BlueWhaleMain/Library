# Copyright by BlueWhale. All Rights Reserved.
particle minecraft:item minecraft:rotten_flesh ^-0.1 ^1.7 ^ 0.1 0.1 0.1 0.1 10
execute store result entity @s HandItems[0].Count byte 1 run scoreboard players remove @s libTemp 1
effect give @s minecraft:instant_damage 1 0
playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1.0
