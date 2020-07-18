#Copyright by BlueWhale. All Rights Reserved.
function library:entity/item_frame/method/crafting_table_synthesis/recipe/patten/sys_book
scoreboard players add @s[nbt={Item:{id:"minecraft:writable_book"}}] libTemp 1
execute if entity @s[tag=can_recipe] if score @s libTemp matches 1 run function library:entity/item_frame/method/crafting_table_synthesis/dist/sys_book
execute if entity @s[tag=!can_recipe] unless score @s libTemp matches 1 run function library:entity/item_frame/method/crafting_table_synthesis/cancel/sys_book
#数据包指南