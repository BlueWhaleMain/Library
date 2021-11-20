# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 100
execute at @s[nbt=!{Inventory:[{tag:{id:"library:controller",Switch:1b}}]}] run function library:entity/player/method/system/sort_inventory
# 物品整理
