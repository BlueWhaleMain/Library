# Copyright by BlueWhale. All Rights Reserved.
execute positioned ^2 ^ ^ if entity @e[type=minecraft:item_frame,distance=..0.4,tag=] run tag @s add can_recipe
execute positioned ^2 ^ ^ unless entity @e[type=minecraft:item_frame,distance=..0.4,tag=] run tag @s remove can_recipe
execute positioned ^2 ^ ^ if entity @e[type=minecraft:item_frame,nbt={Item:{}},distance=..0.4,tag=] run tag @s remove can_recipe
execute if entity @s[tag=can_recipe,tag=!dist] run function library:entity/item_frame/method/loom_synthesis/recipe
# 没有占位配方时检查配方
execute if entity @s[tag=white_cloth] run function library:entity/item_frame/method/loom_synthesis/check/white_cloth
