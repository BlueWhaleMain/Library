# Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 100
scoreboard players add @s[scores={libDefFever=..10}] libDefFever 1
effect give @s minecraft:jump_boost 2 0 true
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:admin_crossbow"}}}] run function library:entity/player/method/admin/arrow
# 无尽弩
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{id:"library:admin_boots"}}]}] run function library:entity/player/method/admin/jump_boost
# 管理员靴子
