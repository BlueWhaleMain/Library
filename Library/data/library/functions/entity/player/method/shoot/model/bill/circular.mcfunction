#(c) Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[gamemode=survival,tag=!is_already_bomb] run function library:entity/player/method/shoot/model/bill/consume/circular
#给生存模式玩家一定的消耗
###生成弹幕
##0
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.1d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##45
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[-0.07071068d,0.0d,0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##90
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[-0.1d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##135
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[-0.07071068d,0.0d,-0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##180
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,-0.1d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##225
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.07071068d,0.0d,-0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##270
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.1d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##315
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.07071068d,0.0d,0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760003},Count:2b},Tags:["library_shoot","player"]}
#
##
playsound library:item.bomb.shoot player @a ~ ~ ~ 1.0
#播放音效：爆炸音射击