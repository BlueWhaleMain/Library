# Copyright by BlueWhale. All Rights Reserved.
tag @s add lodestone
tag @s add dist
execute positioned ^3 ^ ^ run data modify entity @e[type=minecraft:item_frame,distance=..0.4,sort=nearest,tag=,limit=1] Item set value {id:"minecraft:lodestone",Count:1b,tag:{id:"library:delete",display:{Name:"{'translate':'block.minecraft.lodestone'}"}}}
tag @s remove can_recipe
