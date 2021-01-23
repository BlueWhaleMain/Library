# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[nbt={Item:{id:"minecraft:paper",tag:{id:"library:crafting_ring"}}}] run function library:entity/item_frame/method/iron_block_synthesis/discharge/crafting_ring
# 放电：合成环
execute if entity @s[nbt={Item:{id:"minecraft:paper",tag:{id:"library:factory_ring"}}}] run function library:entity/item_frame/method/iron_block_synthesis/discharge/factory_ring
# 放电：工厂环
