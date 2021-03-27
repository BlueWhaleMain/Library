# Copyright by BlueWhale. All Rights Reserved.
tag @s add sys_book
tag @s add dist
execute positioned ^3 ^ ^ run data modify entity @e[type=minecraft:item_frame,distance=..0.4,sort=nearest,tag=,limit=1] Item set value {id:"minecraft:written_book",Count:1b,tag:{id:"library:delete",display:{Name:'{"translate":"system.library.sysBook.title"}'}}}
tag @s remove can_recipe
