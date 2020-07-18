#(c) Copyright by BlueWhale. All Rights Reserved.
scoreboard players add @s[gamemode=survival] libConsumeLvlCac 200
#给予生存模式玩家消耗
execute if entity @s[tag=!is_already_bomb,nbt={SelectedItem:{tag:{id:"library:yin_yang_yu","mode":"empty"}},Inventory:[{Slot:-106b,tag:{id:"library:shoot"}}]}] run effect give @s minecraft:strength 1 15 true
#空阴阳玉（欧拉欧拉）
execute at @s[tag=!library_tp_spy,nbt={SelectedItem:{tag:{id:"library:yin_yang_yu","mode":"support_yukari_yakumo"}},Inventory:[{Slot:-106b,tag:{id:"library:shoot"}}]}] run function library:entity/player/method/shoot/support_skills/yukari_yakumo
#八云紫支援特技（必须停止射击）
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{id:"library:admin_leggings"}}]}] run function library:entity/player/method/admin/speed
#管理员护腿
execute at @s[nbt={SelectedItem:{id:"minecraft:water_bucket"}}] run particle minecraft:falling_water ~ ~1 ~ 0.2 0.2 0.2 0 1
#水桶特效
execute at @s[nbt={SelectedItem:{id:"minecraft:lava_bucket"}}] run particle minecraft:falling_lava ~ ~1 ~ 0.2 0.2 0.2 0 1
#岩浆桶特效