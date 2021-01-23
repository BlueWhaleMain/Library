# Copyright by BlueWhale. All Rights Reserved.
function library:entity/item_frame/method/crafting_table_synthesis/recipe/patten/white_rope
scoreboard players add @s[nbt={Item:{id:"minecraft:stick"}}] libTemp 1
execute if entity @s[tag=can_recipe] if score @s libTemp matches 5 run function library:entity/item_frame/method/crafting_table_synthesis/dist/white_rope
execute if entity @s[tag=!can_recipe] unless score @s libTemp matches 5 run function library:entity/item_frame/method/crafting_table_synthesis/cancel/white_rope
# 白色绳子
