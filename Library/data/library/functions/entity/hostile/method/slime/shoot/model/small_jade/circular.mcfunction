# Copyright by BlueWhale. All Rights Reserved.
effect give @s minecraft:slowness 1 1 true
# 给予缓慢避免误伤
###生成弹幕
##0
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.1d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##45
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[-0.07071068d,0.0d,0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##90
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[-0.1d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##135
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[-0.07071068d,0.0d,-0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##180
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,-0.1d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##225
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.07071068d,0.0d,-0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##270
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.1d,0.0d,0.0d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##315
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0d,0.0d,0.0d],direction:[0.0d,0.0d,0.0d],power:[0.07071068d,0.0d,0.07071068d],Item:{id:"minecraft:fire_charge",tag:{"CustomModelData":12760005},Count:2b},Tags:["library_shoot","hostile"]}
#
##
playsound library:item.bomb.shoot hostile @a ~ ~ ~ 1.0
# 播放声音：爆炸音射击
