#Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{id:"minecraft:stick"}}] run function library:entity/item_frame/method/crafting_table_synthesis/recipe/stick
execute if entity @s[nbt={Item:{id:"minecraft:writable_book"}}] run function library:entity/item_frame/method/crafting_table_synthesis/recipe/writable_book
execute if entity @s[nbt={Item:{tag:{id:"library:iron_needle"}}}] run function library:entity/item_frame/method/crafting_table_synthesis/recipe/needle
execute if entity @s[nbt={Item:{tag:{id:"library:bone_needle"}}}] run function library:entity/item_frame/method/crafting_table_synthesis/recipe/needle
execute if entity @s[nbt={Item:{tag:{id:"library:magnet"}}}] run function library:entity/item_frame/method/crafting_table_synthesis/recipe/magnet
