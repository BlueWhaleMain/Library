# Copyright by BlueWhale. All Rights Reserved.
# 必要的消耗
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 10
### 所有需要检测背包的逻辑，都只在背包改变时检测
execute if entity @s[nbt={Inventory:[{tag:{id:"library:crafting_ring",item:"minecraft:empty"}}]}] run function library:entity/player/method/crafting_ring/fill
# 合成环装填
execute if entity @s[nbt={Inventory:[{tag:{id:"library:factory_ring"}}]},nbt=!{Inventory:[{tag:{id:"library:controller",Switch:1b}}]}] run function library:entity/player/method/factory_ring/compression
# 工厂环压缩物品
execute if entity @s[nbt={Inventory:[{tag:{id:"library:factory_ring",item:"minecraft:empty"}}]}] run function library:entity/player/method/factory_ring/fill
# 工厂环装填
##堆叠残机
execute store result score @s libTemp run clear @s minecraft:paper{id:"library:player_orb"} 0
execute if score @s libTemp matches 5.. at @s run function library:entity/player/method/player_orb/extend
#
##堆叠P点
execute store result score @s libTemp run clear @s minecraft:redstone{id:"library:small_power_orb"} 0
execute if score @s libTemp matches 20.. at @s run function library:entity/player/method/small_power_orb/extend
#
##PowerUp
execute store result score @s libTemp run clear @s minecraft:redstone{id:"library:power_orb"} 0
execute store result score @s libScoreCheck run data get entity @s Inventory[{Slot:-106b}].Count
execute at @s[scores={libTemp=1..,libScoreCheck=..3},nbt={Inventory:[{Slot:-106b,tag:{id:"library:yin_yang_yu"}}]}] run function library:entity/player/method/shoot/power_up
#
##
# 安全的撤销进度，必须最后，以免反复执行
advancement revoke @s only library:trigger/inventory_changed
