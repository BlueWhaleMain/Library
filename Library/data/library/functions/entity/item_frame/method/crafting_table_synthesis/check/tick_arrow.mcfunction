# Copyright by BlueWhale. All Rights Reserved.
function library:entity/item_frame/method/crafting_table_synthesis/recipe/patten/tick_arrow
scoreboard players add @s[nbt={Item:{id:"minecraft:stick"}}] libTemp 1
execute if entity @s[tag=can_recipe] if score @s libTemp matches 3 run function library:entity/item_frame/method/crafting_table_synthesis/dist/tick_arrow
execute if entity @s[tag=!can_recipe] unless score @s libTemp matches 3 run function library:entity/item_frame/method/crafting_table_synthesis/cancel/tick_arrow
# 红石箭
