# Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[gamemode=survival,tag=!is_already_bomb] run function library:entity/player/method/shoot/model/bill/consume/line
# 给生存模式玩家一定的消耗
summon minecraft:small_fireball ^ ^ ^0.2 {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","library_shoot_spy","player"]}
# 召唤火球
summon minecraft:marker ^ ^ ^1.2 {Tags:["library_shoot_target"]}
# 召唤靶子
playsound library:item.shoot.shoot player @a ^ ^ ^0.2 1.0
# 播放音效：射击
