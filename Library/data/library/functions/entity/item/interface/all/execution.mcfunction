# Copyright by BlueWhale. All Rights Reserved.
# 铁砧
execute at @s if block ~ ~-1 ~ #minecraft:anvil run function library:entity/item/interface/on_anvil/execution
# 工作台
execute at @s if block ~ ~-1 ~ minecraft:crafting_table run function library:entity/item/interface/on_crafting_table/execution
# 炼药锅
execute at @s if block ~ ~ ~ minecraft:cauldron run function library:entity/item/interface/in_cauldron/execution
# 给予进度：掉落物合成
execute at @s run advancement grant @a[distance=..1,advancements={library:guide/item=false}] only library:guide/item
