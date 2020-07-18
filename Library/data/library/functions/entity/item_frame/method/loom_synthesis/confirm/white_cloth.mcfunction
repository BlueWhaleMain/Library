#Copyright by BlueWhale. All Rights Reserved.
tag @s add white_cloth
tag @s add dist
execute positioned ^2 ^ ^ run data modify entity @e[type=minecraft:item_frame,distance=..0.4,sort=nearest,tag=,limit=1] Item set value {id:"minecraft:paper",Count:1b,tag:{id:"library:delete",display:{Name:"{\"translate\":\"item.library.white_cloth\"}"},CustomModelData:12760002}}
tag @s remove can_recipe