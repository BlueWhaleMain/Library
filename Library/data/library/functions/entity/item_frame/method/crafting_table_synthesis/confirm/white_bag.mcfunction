#Copyright by BlueWhale. All Rights Reserved.
tag @s add white_bag
tag @s add dist
execute positioned ^3 ^ ^ run data modify entity @e[type=minecraft:item_frame,distance=..0.4,sort=nearest,tag=,limit=1] Item set value {id:"minecraft:carrot_on_a_stick",Count:1b,tag:{id:"library:delete",display:{Name:"{\"translate\":\"item.library.white_bag\"}"},CustomModelData:12760007}}
tag @s remove can_recipe