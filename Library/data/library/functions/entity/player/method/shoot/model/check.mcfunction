#(c) Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:fire_resistance 1 0 true
#抗火
execute if entity @s[nbt={SelectedItem:{tag:{"bullet_item":"bill"}}}] run function library:entity/player/method/shoot/model/bill/check
#御札
execute if entity @s[nbt={SelectedItem:{tag:{"bullet_item":"small_jade"}}}] run function library:entity/player/method/shoot/model/small_jade/check
#小玉
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"library:yin_yang_yu"}}]}] run function library:entity/player/method/shoot/model/support
#阴阳玉支援
scoreboard players set @s[tag=!is_already_bomb] libTouhouCFlag 1
#标记为东方玩家（忽略释放Bomb时，避免干扰）
advancement grant @s[advancements={library:touhou/shoot=false}] only library:touhou/shoot
#给予进度：退治！
