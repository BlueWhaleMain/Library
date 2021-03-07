# (c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 10
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:shoot"}}}] run function library:entity/player/method/shoot/check
# 御币射击
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:yin_yang_yu"}},Inventory:[{Slot:-106b,tag:{id:"library:shoot"}}]},tag=!is_already_bomb] run function library:entity/player/method/shoot/bomb
# 释放Bomb
execute at @s[nbt={SelectedItem:{tag:{id:"library:crafting_ring",item:"minecraft:crafting_table"}}}] anchored eyes run function library:entity/player/method/crafting_ring/shoot_crafting_table
execute at @s[nbt={SelectedItem:{tag:{id:"library:factory_ring",item:"minecraft:crafting_table"}}}] anchored eyes run function library:entity/player/method/factory_ring/shoot_crafting_table
# 合成环和工厂环释放工作台
execute if entity @s[nbt={SelectedItem:{tag:{id:"library:levitation"}}}] run function library:entity/player/method/admin/levitation
# 升空
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:levitation"}}]}] run function library:entity/player/method/admin/levitation
# 副手也能工作
execute at @s[nbt={SelectedItem:{tag:{id:"library:teleport"}}}] run function library:entity/player/method/admin/teleport/loop
# 近场传送
execute at @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:teleport"}}]}] run function library:entity/player/method/admin/teleport/loop
# 副手也能工作
