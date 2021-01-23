# Copyright by BlueWhale. All Rights Reserved.
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:string"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^ ^1 ^ run particle minecraft:item minecraft:string ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:string"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^ ^-1 ^ run particle minecraft:item minecraft:string ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:string"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^1 ^ ^ run particle minecraft:item minecraft:string ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:string"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^-1 ^ ^ run particle minecraft:item minecraft:string ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @s[nbt={Item:{id:"minecraft:stick"}}] Item.Count set value 0
scoreboard players set @s libTemp 0
execute store result score @s[nbt={Item:{tag:{id:"library:iron_stick"}}}] libTemp run data get entity @s Item.tag.Damage
execute store result entity @s[nbt={Item:{tag:{id:"library:iron_stick"}}}] Item.tag.Damage int 1 run scoreboard players add @s libTemp 1
data modify entity @s[scores={libTemp=59..}] Item.Count set value 0
loot spawn ^3 ^ ^ loot library:items/rope/white
# 生成白色绳子
tag @s remove dist
tag @s remove white_rope
