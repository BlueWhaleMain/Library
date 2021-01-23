# Copyright by BlueWhale. All Rights Reserved.
execute positioned ^3 ^ ^ if entity @e[type=minecraft:item_frame,distance=..0.4,tag=] run tag @s add can_recipe
execute positioned ^3 ^ ^ unless entity @e[type=minecraft:item_frame,distance=..0.4,tag=] run tag @s remove can_recipe
execute positioned ^3 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run tag @s remove can_recipe
execute if entity @s[tag=can_recipe,tag=!dist] run function library:entity/item_frame/method/crafting_table_synthesis/recipe
# 没有占位配方时检查配方
execute if entity @s[tag=tick_arrow] run function library:entity/item_frame/method/crafting_table_synthesis/check/tick_arrow
execute if entity @s[tag=sys_book] run function library:entity/item_frame/method/crafting_table_synthesis/check/sys_book
execute if entity @s[tag=white_rope] run function library:entity/item_frame/method/crafting_table_synthesis/check/white_rope
execute if entity @s[tag=white_bag] run function library:entity/item_frame/method/crafting_table_synthesis/check/white_bag
execute if entity @s[tag=lodestone] run function library:entity/item_frame/method/crafting_table_synthesis/check/lodestone
