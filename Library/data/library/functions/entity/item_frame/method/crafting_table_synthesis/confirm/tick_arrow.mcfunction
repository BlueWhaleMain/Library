# Copyright by BlueWhale. All Rights Reserved.
tag @s add tick_arrow
tag @s add dist
execute positioned ^3 ^ ^ run data modify entity @e[type=minecraft:item_frame,distance=..0.4,sort=nearest,tag=,limit=1] Item set value {id:"minecraft:arrow",Count:1b,tag:{id:"library:delete",display:{Name:"{'translate':'item.library.tick_arrow'}"},CustomModelData:12760001}}
tag @s remove can_recipe
