# Copyright by BlueWhale. All Rights Reserved.
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:quartz"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^1 ^1 ^ run particle minecraft:item minecraft:quartz ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:redstone"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^-1 ^-1 ^ run particle minecraft:item minecraft:redstone ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @s Item.Count set value 0
loot spawn ^3 ^ ^ loot library:items/tick_arrow
# 生成红石箭
tag @s remove dist
tag @s remove tick_arrow
