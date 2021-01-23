# Copyright by BlueWhale. All Rights Reserved.
tag @s remove white_cloth
tag @s remove dist
execute positioned ^2 ^ ^ run data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:paper"}},distance=..0.4,sort=nearest,tag=,limit=1] Item.Count set value 0
