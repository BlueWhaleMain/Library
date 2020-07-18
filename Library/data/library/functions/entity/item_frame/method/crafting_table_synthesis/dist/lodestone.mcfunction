#Copyright by BlueWhale. All Rights Reserved.
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^ ^1 ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^ ^-1 ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^1 ^ ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^-1 ^ ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^1 ^1 ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^1 ^-1 ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^-1 ^1 ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:chiseled_stone_bricks"}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^-1 ^-1 ^ run particle minecraft:item minecraft:chiseled_stone_bricks ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @s Item.Count set value 0
summon minecraft:item ^3 ^ ^ {Item:{id:"minecraft:lodestone",Count:1b}}
#生成磁石
tag @s remove dist
tag @s remove lodestone
