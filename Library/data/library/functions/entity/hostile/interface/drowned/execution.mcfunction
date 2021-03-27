# Copyright by BlueWhale. All Rights Reserved.
# 不会中毒
effect clear @s minecraft:poison
# 吃腐肉
execute store result score @s[nbt={HandItems:[{id:"minecraft:rotten_flesh"}]}] libTemp run data get entity @s HandItems[0].Count
effect give @s[scores={libTemp=1..}] minecraft:regeneration 1 1
execute if score @s libTemp matches 1.. run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 1.0
execute if score @s libTemp matches 1.. run particle minecraft:item minecraft:rotten_flesh ^-0.1 ^1.7 ^ 0.1 0.1 0.1 0.1 10
execute store result entity @s[scores={libTemp=1..}] HandItems[0].Count byte 1 run scoreboard players remove @s libTemp 1
