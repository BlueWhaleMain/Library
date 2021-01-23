# Copyright by BlueWhale. All Rights Reserved.
function library:entity/item_frame/method/crafting_table_synthesis/recipe/patten/white_bag
scoreboard players add @s[nbt={Item:{tag:{id:"library:iron_needle"}}}] libTemp 1
scoreboard players add @s[nbt={Item:{tag:{id:"library:bone_needle"}}}] libTemp 1
execute if entity @s[tag=can_recipe] if score @s libTemp matches 5 run function library:entity/item_frame/method/crafting_table_synthesis/dist/white_bag
execute if entity @s[tag=!can_recipe] unless score @s libTemp matches 5 run function library:entity/item_frame/method/crafting_table_synthesis/cancel/white_bag
# 白色口袋
