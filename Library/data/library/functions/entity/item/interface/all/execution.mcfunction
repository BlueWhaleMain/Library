# Copyright by BlueWhale. All Rights Reserved.
execute at @s if block ~ ~-1 ~ #minecraft:anvil run function library:entity/item/interface/on_anvil/execution
# 铁砧
execute at @s if block ~ ~-1 ~ minecraft:crafting_table run function library:entity/item/interface/on_crafting_table/execution
# 工作台
execute at @s if block ~ ~ ~ minecraft:cauldron run function library:entity/item/interface/in_cauldron/execution
# 炼药锅
