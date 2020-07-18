#Copyright by BlueWhale. All Rights Reserved.
execute if entity @s[gamemode=survival,tag=!is_already_bomb] run function library:entity/player/method/shoot/model/small_jade/consume/hemispherical_up
#给生存模式玩家一定的消耗
###生成弹幕
##0:45
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.07071068d,0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760004},Count:2b},Tags:["library_shoot","player"]}
#
##90:45
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[-0.07071068d,0.07071068d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760004},Count:2b},Tags:["library_shoot","player"]}
#
##180:45
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.07071068d,-0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760004},Count:2b},Tags:["library_shoot","player"]}
#
##270:45
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.07071068d,0.07071068d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760004},Count:2b},Tags:["library_shoot","player"]}
#
##0:90
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.1d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760004},Count:2b},Tags:["library_shoot","player"]}
#
##