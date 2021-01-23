# Copyright by BlueWhale. All Rights Reserved.
data modify entity @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"library:white_rope"}}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^ ^1 ^ run particle minecraft:item minecraft:string ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"library:white_cloth"}}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^ ^-1 ^ run particle minecraft:item minecraft:paper ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"library:white_cloth"}}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^1 ^ ^ run particle minecraft:item minecraft:paper ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @e[type=minecraft:item_frame,nbt={Item:{tag:{id:"library:white_cloth"}}},sort=nearest,tag=,limit=1] Item.Count set value 0
execute positioned ^-1 ^ ^ run particle minecraft:item minecraft:paper ~ ~ ~ 0.1 0.1 0.1 0.1 100
data modify entity @s[nbt={Item:{tag:{id:"library:bone_needle"}}}] Item.Count set value 0
loot spawn ^3 ^ ^ loot library:items/bag/white
# 生成白色口袋
tag @s remove dist
tag @s remove white_bag
