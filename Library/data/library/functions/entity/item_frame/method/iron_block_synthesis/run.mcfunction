# Copyright by BlueWhale. All Rights Reserved.
execute if score @s libTouhouCTime matches 1.. run particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.5 1
# 生成粒子：烟花
execute if entity @s[tag=crafting_ring,nbt={Item:{id:"minecraft:paper",tag:{id:"library:crafting_ring"}}},scores={libTouhouCTime=..0}] run function library:entity/item_frame/method/iron_block_synthesis/release/crafting_ring
# 生成：合成环
execute if entity @s[tag=factory_ring,nbt={Item:{id:"minecraft:paper",tag:{id:"library:factory_ring"}}},scores={libTouhouCTime=..0}] run function library:entity/item_frame/method/iron_block_synthesis/release/factory_ring
# 生成：工厂环
execute if entity @s[tag=crafting_ring,nbt=!{Item:{id:"minecraft:paper",tag:{id:"library:crafting_ring"}}}] run function library:entity/item_frame/method/iron_block_synthesis/discharge
# 爆炸：合成环
execute if entity @s[tag=factory_ring,nbt=!{Item:{id:"minecraft:paper",tag:{id:"library:factory_ring"}}}] run function library:entity/item_frame/method/iron_block_synthesis/discharge
# 爆炸：工厂环
