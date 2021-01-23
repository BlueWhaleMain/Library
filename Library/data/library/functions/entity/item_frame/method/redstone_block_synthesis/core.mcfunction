# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{id:"minecraft:crafting_table"}}] run function library:entity/item_frame/method/redstone_block_synthesis/core/crafting_table
# 以工作台作为合成中心
execute if entity @s[nbt={Item:{tag:{id:"library:crafting_ring"}}}] run function library:entity/item_frame/method/redstone_block_synthesis/core/crafting_ring
# 以合成环作为合成中心
