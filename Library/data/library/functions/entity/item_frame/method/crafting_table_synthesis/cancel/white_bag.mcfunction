# Copyright by BlueWhale. All Rights Reserved.
tag @s remove white_bag
tag @s remove dist
execute positioned ^3 ^ ^ run data modify entity @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..0.4,sort=nearest,tag=,limit=1] Item.Count set value 0
