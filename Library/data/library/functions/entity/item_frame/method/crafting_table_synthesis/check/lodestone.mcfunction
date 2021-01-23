# Copyright by BlueWhale. All Rights Reserved.
function library:entity/item_frame/method/crafting_table_synthesis/recipe/patten/lodestone
scoreboard players add @s[nbt={Item:{tag:{id:"library:magnet"}}}] libTemp 1
execute if entity @s[tag=can_recipe] if score @s libTemp matches 9 run function library:entity/item_frame/method/crafting_table_synthesis/dist/lodestone
execute if entity @s[tag=!can_recipe] unless score @s libTemp matches 9 run function library:entity/item_frame/method/crafting_table_synthesis/cancel/lodestone
# 磁石
